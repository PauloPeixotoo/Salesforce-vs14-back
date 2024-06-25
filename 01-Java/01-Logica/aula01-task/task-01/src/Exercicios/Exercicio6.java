package Exercicios;

import java.util.Scanner;

public class Exercicio6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite o seu nome: ");
        String nome = sc.nextLine();
        System.out.println("Digite o seu salário mensal: ");
        double salarioMensal = sc.nextDouble();
        System.out.println("Digite numero de meses trabalhados: ");
        int meses = sc.nextInt();

        double salarioAnual = salarioMensal * meses;

        System.out.println("Nome: " + nome);
        System.out.println("Salário Mensal: " + salarioMensal);
        System.out.println("Meses trabalhados: " + meses);
        System.out.println("Salário Anual: " + salarioAnual);

    }
}
