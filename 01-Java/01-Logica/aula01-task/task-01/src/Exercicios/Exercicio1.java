package Exercicios;

import java.util.Scanner;

public class Exercicio1 {
//Escrever um algoritmo que lê a hora de início e hora de término de um jogo, ambas
//subdivididas em dois valores distintos: horas e minutos. Calcular e escrever a duração do
//jogo, também em horas e minutos, considerando que o tempo máximo de duração de um
//jogo é de 24 horas e que o jogo pode iniciar em um dia e terminar no dia seguinte.
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite a hora de início: ");
        int horaIni = sc.nextInt();

        System.out.println("Digite os minuto de início: ");
        int minIni = sc.nextInt();

        System.out.println("Digite a hora de Término: ");
        int horaTerm = sc.nextInt();

        System.out.println("Digite os minuto de Término: ");
        int minTerm = sc.nextInt();

        int inicioEmMinutos = horaIni * 60 + minIni;
        int terminoEmMinutos = horaTerm * 60 + minTerm;

        if (terminoEmMinutos < inicioEmMinutos) {
            terminoEmMinutos += 24 * 60;
        }

        int duracaoEmMinutos = terminoEmMinutos - inicioEmMinutos;

        int duracaoHoras = duracaoEmMinutos / 60;
        int duracaoMinutos = duracaoEmMinutos % 60;

        System.out.println("A duração do jogo é de " + duracaoHoras + " horas e " + duracaoMinutos + " minutos.");

    }
}
