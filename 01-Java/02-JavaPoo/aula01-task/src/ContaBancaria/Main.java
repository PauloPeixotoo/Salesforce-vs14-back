package ContaBancaria;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite o número da conta: ");
        String numeroConta = sc.nextLine();
        System.out.println("Digite o títular da conta: ");
        String titular = sc.nextLine();
        System.out.println("Digite o saldo inicial da conta: ");
        double saldo = sc.nextDouble();

        ClassConta conta = new ClassConta(numeroConta, titular, saldo);

    }
}