#   Diretório onde estão os repositórios você
#   pode deixar o caminho completo ou apenas
#   o diretório onde está este escript
repositorios_dir="$(pwd)"

#   colors
VML='\033[0;31m'
AML='\033[0;33m'
VRD='\033[0;32m'
RST='\033[0m'

#   Verifica se o diretório existe
if [ -d "$repositorios_dir" ]; then
    #   Navega até o diretório dos repositórios
    cd "$repositorios_dir"

    # Loop sobre todas as pastas no diretório
    for repo in */; do
        # Executar dentro de cada repo
        cd "$repo"
        echo -e "Atualizando repositório:${AML} ${repo%/}${RST}"

        # Loop sobre todas as branches
        for branch in $(git branch -l | cut -c 3-); do
            # Faz pull em cada branch
            git checkout "$branch"
            git add .
            git commit -m '🤖 push automático 🤖'
            git push
        done

        # Retorne
        cd "$repositorios_dir"
    done

    #   retorne com êxito
    echo -e "[${VRD}SUCESSO${RST}] Envio concluída."
else
    #   retorne com falha
    echo -e "[${VML}FALHA${RST}] O diretório dos repositórios não foi encontrado."
fi