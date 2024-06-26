package Exercicios;

import java.text.NumberFormat;
import java.util.Locale;
import java.util.Scanner;

public class Exercicio5 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int brancos, nulos, validos;

        System.out.println("Digite o total de votos em branco: ");
        brancos = sc.nextInt();
        System.out.println("Digite o total de votos em nulo: ");
        nulos = sc.nextInt();
        System.out.println("Digite o total de votos em valido: ");
        validos = sc.nextInt();

        int totalVotos = brancos + nulos + validos;
        System.out.println("Total de votos: " + totalVotos);

        double porcentagemValidos = ((double) validos / totalVotos) * 100;
        double porcentagemBrancos = ((double) brancos / totalVotos) * 100;
        double porcentagemNulos = ((double) nulos / totalVotos) * 100;

        System.out.printf("\nVotos brancos: %.2f%%", porcentagemBrancos);
        System.out.printf("\nVotos nulos: %.2f%%", porcentagemNulos);
        System.out.printf("\nVotos validos: %.2f%%", porcentagemValidos);
    }
}
