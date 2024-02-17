#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h> // precisa disso pra usar bool kkkkkkkkkkk

int main() {

    /*
        suponha um cenario onde voce precisa beber um
        frasco de pocao para recuperar sua vida, porem
        beber esta pocao tambem pode lhe custar caro.
        Em sistemas de RPG como D&D5, apenas o ato de
        beber uma pocao pode fazer com que voce precise
        jogar um dado para saber se aquela pocao vai de
        fato recuperar sua vida ou tirar ela.

        full life = 20
        pocao = "full" a -5 

            - joao-prs
    */

    // pre
    int healt;
    int valor;
    int max_healt = 20;
    bool change = false;

    printf("Digite o valor de vida que o jogador terá: ");
    scanf("%d", &healt);

    printf("saude inicial: %d\n", healt);

    // numero aleatório entre 1 e 20 (d20)
    srand(time(NULL));
    valor = rand() %  20 + 1;
    

    
    if (valor == 1) {
        printf("LOG: Critico kkkkkkkkkkkkkk!!  XD\n");
        healt -= 5;
    }
    else if (valor >= 2 && valor <= 5) {
        printf("LOG: não regenerou nada\n");
    }
    else if (valor >= 6 && valor <= 10) {
        printf("LOG: tu recuperou 2 de vida\n");
        healt += 2;
        change = true;
    }
    else if (valor >= 11 && valor <= 15) {
        printf("LOG: tu recuperou um 1/4 de vida\n");
        healt += max_healt / 4;
        change = true;
    }
    else if (valor >= 16 && valor <= 19) {
        printf("LOG: tu recuperou 1/2 da vida\n");
        healt += max_healt / 2;
        change = true;
    }
    else if (valor == 20) {
        printf("LOG: Critico  :0\n");
        healt = max_healt;
        change = true;
    }

    if (healt > max_healt) {
        healt = max_healt;
    }
    printf("\nsaude atual: %d", healt);
    if (change) {
        printf("  *plim *plim");
    }

    printf("\n"); // evita cancelamento de linha
    return 0;
}