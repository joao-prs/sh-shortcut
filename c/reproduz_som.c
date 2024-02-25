#include <stdio.h>
#include <stdlib.h>

int main() {


    int num;
    // Executa o comando "echo" para imprimir uma mensagem
    //system("mpg123 ~/Músicas/AdhesiveWombat_8Bit_Adventure.mp3");
    system("ffplay ~/Músicas/AdhesiveWombat_8Bit_Adventure.mp3 &");

    printf("Digite um numero: ");
    scanf("%d", &num);

    printf("o seu numero digitado foi: %d\n", num);

    return 0;
}