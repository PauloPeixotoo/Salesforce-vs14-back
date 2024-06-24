package tipagem.pratica;

import java.util.Scanner;

public class PraticaUm {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite o seu nome: ");
        String nome = sc.nextLine();

        System.out.println("Digite o seu idade: ");
        int idade = sc.nextInt();
        sc.nextLine();

        System.out.println("Digite a sua cidade: ");
        String cidade = sc.nextLine();

        System.out.printf("Seu nome é: " + nome + "\nSua idade é: " + idade + "\nSua cidade é: " + cidade);
    }
}


