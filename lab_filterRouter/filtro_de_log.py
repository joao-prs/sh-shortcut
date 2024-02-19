
# Nome do arquivo de log original
arquivo_original = 'arquivo_de_log.txt'

# Nome do arquivo de log para o tik 1
arquivo_tik_1 = 'tik_1_log.txt'

# Nome do arquivo de log para o tik 2
arquivo_tik_2 = 'tik_2_log.txt'

# Números dos tiks
tik_1 = '54'
tik_2 = '56'

# Função para extrair e deletar linhas específicas
def extrair_e_deletar_linhas(origem, destino, identificador):
    with open(origem, 'r') as arquivo_origem:
        linhas = arquivo_origem.readlines()

    # Filtra as linhas do identificador desejado
    linhas_identificadas = [linha for linha in linhas if f'tik{identificador}' in linha]

    # Escreve as linhas identificadas no arquivo de destino
    with open(destino, 'a') as arquivo_destino:
        arquivo_destino.writelines(linhas_identificadas)

    # Remove as linhas identificadas do arquivo original
    linhas_restantes = [linha for linha in linhas if f'tik{identificador}' not in linha]
    
    with open(origem, 'w') as arquivo_origem:
        arquivo_origem.writelines(linhas_restantes)

# Extrai e deleta as linhas para o tik 1
extrair_e_deletar_linhas(arquivo_original, arquivo_tik_1, tik_1)

# Extrai e deleta as linhas para o tik 2
extrair_e_deletar_linhas(arquivo_original, arquivo_tik_2, tik_2)