#   Diretório onde estão os repositórios você
#   pode deixar o caminho completo ou apenas
#   o diretório onde está este escript
repositorios_dir="$(pwd)"

#   colors
AZU="\033[94m"
VML='\033[0;31m'
AML='\033[93m'
ROX='\033[95m'
VRD='\033[0;32m'
RST='\033[0m'

echo -e "\n${AZU}=== enviando alterações ===${RST}\n"
#   Verifica se o diretório existe
if [ -d "$repositorios_dir" ]; then
    #   Navega até o diretório dos repositórios
    cd "$repositorios_dir"

    # Loop sobre todas as pastas no diretório
    for repo in */; do
        # Executar dentro de cada repo
        cd "$repo"
        echo -e "${ROX}repositório:${AML} ${repo%/}${RST}"

        # Loop sobre todas as branches
        for branch in $(git branch -l | cut -c 3-); do
          # Checa se ha alterações no repositorio
          if git status --porcelain | grep -q .; then
            # Se tiver, entao ele sobe elas
            git add .
            git commit -m '🤖 push automático 🤖'
            git push
          else
            echo -e "sem alterações."
          fi
        done

        # Retorne
        cd "$repositorios_dir"
    done

    #   retorne com êxito
    echo -e "${VRD}Envio concluído com sucesso!${RST}"
else
    #   retorne com falha
    echo -e "${VML}O diretório dos repositórios não foi encontrado.${RST}"
fi