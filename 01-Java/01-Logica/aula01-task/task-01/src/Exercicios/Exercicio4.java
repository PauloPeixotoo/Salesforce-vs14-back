package Exercicios;

import java.util.Scanner;

public class Exercicio4 {
    //Em média, um casal tem filhos quando atinge a idade de 28 anos. Seguindo essa média,
    //se os portugueses chegaram em 1500 no Brasil, então, a primeira geração de brasileiros
    //surgiu em 1528, a segunda em 1556 e assim por diante. Desde 1500 até o ano atual,
    //quantas gerações passaram? Crie um programa para resolver esta questão. Imprima
    //esse número da seguinte maneira: calcule quantos anos passaram desde 1500 e divida
    //o resultado pela média de 28 anos. Observação: sem o uso de Java Time
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int num = 1500;

        System.out.println("Digite o ano atual: ");
        int anoAtual = sc.nextInt();

        int numGera = anoAtual - num;
        int resultado = numGera/28;

        System.out.println("O resultado é: " + resultado);
    }
}
