> [!NOTE]
> Está página ainda está sendo testada e elaborada, pode conter informações incompletas.

# 1: Usuário

### criação de um usuário: operador
o script abaixo cria o usuário, simples.
```sh
#!/bin/bash

USER_NAME="operador"
#             sem home,         sem shell de login  sem grupo específico    nome dele
sudo useradd  --no-create-home  --shell             /usr/sbin/nologin       "$USER_NAME"
```
dê a ele permissões de apenas execução do que lhe foi programado, no exemplo o programa é `/opt/scripts/loop.sh`, mas pode ser qualquer outro programa de sua escolha e caminho:
```sh
sudo chown root:operador /opt/scripts/loop.sh
sudo chmod 750 /opt/scripts/loop.sh
```
> o script `loop.sh` é o mesmo na pasta desse readme

caso deseje remove-lo por inutilidade, aqui outro:
```sh
#!/bin/bash

USER_NAME="operador"
sudo userdel "$USER_NAME"
```

# 2: Cgroup

### limitando o uso de recursos desse operador
crie o arquivo `/etc/systemd/system/operador.slice` com este conteudo:
```ini
[Slice]
CPUQuota=10%
```
> o exemplo acima limita apenas CPU para efeito de ilustração.

abra um shell dentro do cgroup:
```sh
systemd-run --slice=operador.slice --uid=operador --shell
```
> o nome **slice** deve ser o mesmo nome que foi criado para o slice em `/etc/systemd/...`, já o **uid** deve ser o nome de usuário (o usuário deve existir na máquina).

# 3: Namespace
### conceito
você pode isolar o processo de algumas formas, aqui vão elas:
```sh
sudo unshare --fork --pid --mount-proc /bin/bash
```
porém dessa forma você é *root*, ainda que não o mesmo *root* convencional, um novo *root*, mas com todos os privilégios do *root* global que pode ser ruim. Se listar os processos com `ps aux` verá isso, para contornar isso, acrescente `--user`.
```sh
sudo unshare --fork --pid --mount-proc --user /bin/bash
```
> é apenas parte do comando que iremos usar

### preparando o ambiente
Criando o ambiente usando seus binários no filesystem artificial.
```sh
mkdir -p /containers/minicontainer/{bin,lib,lib64,usr,proc,dev}
cp -v /bin/ls /containers/minicontainer/bin/
cp -v /bin/ps /containers/minicontainer/bin/
```

# 4: Reforçando segurança

# 5: Testando
