# Diretório onde estão os repositórios
# Pode ser o caminho completo ou apenas o diretório do script
repositorios_dir="$(pwd)"

# Cores
AZU="\033[94m"
VML='\033[0;31m'
AML='\033[93m'
ROX='\033[95m'
VRD='\033[0;32m'
RST='\033[0m'

echo -e "\n${AZU}=== recebendo alterações ===${RST}\n"
# Verifica se o diretório existe
if [ -d "$repositorios_dir" ]; then
    # Navega até o diretório dos repositórios
    cd "$repositorios_dir"

    # Loop sobre todas as pastas no diretório
    for repo in */; do
        # Executar dentro de cada repo
        cd "$repo"
        echo -e "${ROX}Atualizando repositório:${AML} ${repo%/}${RST}"

        # Loop sobre todas as branches
        for branch in $(git branch -l | cut -c 3-); do
            # Faz pull em cada branch
            git checkout "$branch"
            git pull
        done

        # Retorne
        cd "$repositorios_dir"
    done

    # Retorne com êxito
    echo -e "${VRD}Atualização concluída.${RST}"
else
    # Retorne com falha
    echo -e "${VML}O diretório dos repositórios não foi encontrado.${RST}"