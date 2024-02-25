#include <stdio.h>
#include <string.h>
#include <stdbool.h> 




// Função para obter a resposta do usuário
bool confirmacao(char *confirm, int tamanho, bool CONFIRM) {
    
    printf("Deseja prosseguir [Y/n]: ");
    fgets(confirm, tamanho, stdin);

    // Removendo o caractere de nova linha, se estiver presente
    confirm[strcspn(confirm, "\n")] = '\0';

    // confirma entrada vazia
    if (confirm[0] == '\0') strcpy(confirm, "y");

    // filtra em Y ou N
    if (confirm[0] == 'n' || confirm[0] == 'N') {
        //printf("...cancelado.\n");
        return CONFIRM = false;
    } else if (confirm[0] == 'y' || confirm[0] == 'Y') {
        //printf("...carregando novas instrucoes.\n");
        return CONFIRM = true;
    } else {
        printf("invalido.\n");
        return CONFIRM = false;
    }
}

int main() {
    char confirm[100];
    bool CONFIRM;

    CONFIRM = confirmacao(confirm, sizeof(confirm), CONFIRM);


    if(CONFIRM) {
        printf("instalando pacotes ....kkkkkkk\n");
    } else {
        printf("bash: \n");
    }


    printf("\n"); return 0;
}
