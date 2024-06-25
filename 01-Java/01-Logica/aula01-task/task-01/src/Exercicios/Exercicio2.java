package Exercicios;

import java.util.Scanner;

public class Exercicio2 {
//Crie um programa em Java que valide se um número fornecido por um usuário é par ou
//ímpar. O programa deve declarar uma variável número, atribuir um valor a ela e, em
//seguida, determinar se o número é par ou ímpar sem usar instruções if ou else. Exiba o
//resultado.
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite um numero: ");
        int num = sc.nextInt();

        String[] resultado = {"Par", "Ímpar"};

        System.out.println("O número " + num + " é " + resultado[num % 2] + ".");

    }
}
