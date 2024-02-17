#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {

    /*
        suponha um cenario onde voce precisa beber um
        frasco de pocao para recuperar sua vida, porem
        beber esta pocao tambem pode lhe custar caro.
        Em sistemas de RPG como D&D5, apenas o ato de
        beber uma pocao pode fazer com que voce precise
        jogar um dado para saber se aquela pocao vai de
        fato recuperar sua vida ou tirar ela.

        O valor da temperatura é gerado aleatoriamente apenas
        para testarmos possiveis resultados (e tambem porque
        nao quero perder meu tempo usando scanf para escolher
        um valor para meu pequeno teste)
            - joao-prs
    */

    // pre
    srand(time(NULL));
    
    // numero aleatório entre -10 e 60
    int tempt = rand() % 71 - 10;

    printf("temperatura: %d\n", tempt);

    if (tempt <= 0) {
        printf("frio demais!!\n");
    }
    else if (tempt >= 1 && tempt <= 10) {
        printf("frio toleravel!\n");
    }
    else if (tempt >= 11 && tempt <= 40) {
        printf("normal ou ambiente.\n");
    }
    else if (tempt >= 41 && tempt <= 50) {
        printf("quente toleravel!\n");
    }
    else {
        printf("quente demais!!\n");
    }

    return 0;
}