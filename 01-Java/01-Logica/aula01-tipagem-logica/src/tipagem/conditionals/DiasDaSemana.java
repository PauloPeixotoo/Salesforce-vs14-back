package tipagem.conditionals;

import java.util.Scanner;

public class DiasDaSemana {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite um número de 1 a 5 para saber o dia da semana correspondente: ");
        int dia = sc.nextInt();

        switch (dia) {
            case 1:
                System.out.println("Segunda");
                break;
            case 2:
                System.out.println("Terca");
                break;
            case 3:
                System.out.println("Quarta");
                break;
            case 4:
                System.out.println("Quinta");
                break;
            case 5:
                System.out.println("Sexta");
                break;
            default:
                System.out.println("Valor inválido, digite de 1 a 5 para saber o dia da semana");
        }
        sc.close();
    }
}
