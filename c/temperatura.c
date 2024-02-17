#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    /*
        Criar um sistema de temperatura onde tenha uma margem
        aceitavel de sobrevivencia, e margens onde pode ser
        toleravel mas nao habitual, e margens de temperatura
        critica com riscos de danos por calor ou frio.
        
         0      = frio demais
         1 a 10 = frio toleravel 
        11 a 40 = normal ou ambiente
        41 a 50 = quente toleravel 
        51+     = quente demais.

        O valor da temperatura é gerado aleatoriamente apenas
        para testarmos possiveis resultados (e tambem porque
        nao quero perder meu tempo usando scanf para escolher
        um valor para meu pequeno teste)
            - joao-prs
    */
    
    // numero aleatório entre -10 e 60
    srand(time(NULL));
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