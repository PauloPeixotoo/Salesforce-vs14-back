package Exercicios;

import java.util.Scanner;

public class Exercicio10 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int opcao = sc.nextInt();

        do {
            exibirMenu();
            opcao = sc.nextInt();
            sc.nextLine();

            switch (opcao) {
                case 1:
                    adicao(sc);
                    break;
                case 2:
                    subtracao(sc);
                    break;
                case 3:
                    multiplicacao(sc);
                    break;
                case 4:
                    divisao(sc);
                    break;
                case 5:
                    areaCirculo(sc);
                    break;
                case 6:
                    areaRetangulo(sc);
                    break;
                case 7:
                    areaTriangulo(sc);
                    break;
                case 8:
                    diametroCirculo(sc);
                    break;
                default:
                    System.out.println("Opção inválida.");
                    break;
            }

        } while (opcao != 0);
    }

    public static void exibirMenu() {
        System.out.println("1. Adição(+)");
        System.out.println("2. Subtração(-)");
        System.out.println("3. Multiplicação(*)");
        System.out.println("4. Divisão(/)");
        System.out.println("5. Cálculo da área de um círculo");
        System.out.println("6. Cálculo de área de um retângulo");
        System.out.println("7. Cálculo de área de um triângulo");
        System.out.println("8. Cálculo de diâmetro de um círculo");
    }

    public static void adicao(Scanner sc) {
        System.out.println("Digite o primeiro número: ");
        int numUm = sc.nextInt();
        System.out.println("Digite o segundo número: ");
        int numDois = sc.nextInt();

        int resultado = numUm + numDois;
        System.out.println("Resultado: " + resultado);
    }

    public static void subtracao(Scanner sc) {
        System.out.println("Digite o primeiro número: ");
        int numUm = sc.nextInt();
        System.out.println("Digite o segundo número: ");
        int numDois = sc.nextInt();

        int resultado = numUm - numDois;
        System.out.println("Resultado: " + resultado);
    }

    public static void multiplicacao(Scanner sc) {
        System.out.println("Digite o primeiro número: ");
        int numUm = sc.nextInt();
        System.out.println("Digite o segundo número: ");
        int numDois = sc.nextInt();

        int resultado = numUm * numDois;
        System.out.println("Resultado: " + resultado);
    }

    public static void divisao(Scanner sc) {
        System.out.println("Digite o primeiro número: ");
        int numUm = sc.nextInt();
        System.out.println("Digite o segundo número: ");
        int numDois = sc.nextInt();

        int resultado = numUm / numDois;
        System.out.println("Resultado: " + resultado);
    }

    public static void areaCirculo(Scanner sc) {
        System.out.print("Digite o raio do circulo: ");
        double raio = sc.nextDouble();
        double areaCirculo = Math.PI * Math.pow(raio, 2);
        System.out.print("Área: " + areaCirculo);
    }

    public static void areaRetangulo(Scanner sc) {
        System.out.print("Digite a base do retângulo: ");
        double base = sc.nextDouble();

        System.out.print("Digite a altura do retângulo: ");
        double altura = sc.nextDouble();

        double areaRetangulo = base * altura;
    }

    public static void areaTriangulo(Scanner sc) {
        System.out.print("Digite a base do triângulo: ");
        double base = sc.nextDouble();

        System.out.print("Digite a altura do triângulo: ");
        double altura = sc.nextDouble();

        double areaTriangulo = (base * altura / 2);
        System.out.println("Area: " + areaTriangulo);
    }

    public static void diametroCirculo(Scanner sc) {
        System.out.println("Digite o raio do círculo: ");
        double raio = sc.nextDouble();

        double diametro = 2 * raio;
        System.out.println("Diâmetro do círculo: " + diametro);
    }

}
