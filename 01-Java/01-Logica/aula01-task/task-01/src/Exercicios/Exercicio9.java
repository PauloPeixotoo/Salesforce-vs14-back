package Exercicios;

import java.util.Scanner;

public class Exercicio9 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Opções de tradução:");
        System.out.println("1. Do português para o inglês");
        System.out.println("2. De inglês para o português");

        while (true) {
            System.out.print("Escolha a opção (1/2): ");
            String opcao = sc.nextLine().trim();

            if (opcao.equals("1") || opcao.equals("2")) {
                String palavra;
                if (opcao.equals("1")) {
                    System.out.print("Digite a palavra em português: ");
                    palavra = sc.nextLine().trim().toLowerCase();

                    String resultado = traducao(palavra, "portugues-ingles");
                    System.out.printf("A tradução de '%s' é '%s'%n%n", palavra, resultado);
                } else {
                    System.out.print("Digite a palavra em inglês: ");
                    palavra = sc.nextLine().trim().toLowerCase();

                    String resultado = traducao(palavra, "ingles-portugues");
                    System.out.printf("A tradução de '%s' é '%s'%n%n", palavra, resultado);
                }

            } else {
                System.out.println("Opção inválida. Escolha '1' ou '2'.\n");
            }
        }
    }

    public static String traducao(String palavra, String opcao) {
        switch (opcao) {
            case "portugues-ingles":
                switch (palavra) {
                    case "cachorro":
                        return "Dog";
                    case "cidade":
                        return "City";
                    case "feliz":
                        return "Happy";
                    case "triste":
                        return "Sad";
                    default:
                        return "Esse idioma não é válido.";
                }
            case "ingles-portugues":
                switch (palavra) {
                    case "dog":
                        return "Cachorro";
                    case "city":
                        return "Cidade";
                    case "happy":
                        return "Feliz";
                    case "sad":
                        return "Triste";
                    default:
                        return "Esse idioma não é válido.";
                }
            default:
                return "Direção de tradução inválida.";
        }
    }
}
