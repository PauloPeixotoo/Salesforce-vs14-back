package Exercicios;

import java.util.Scanner;

public class Exercicio8 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        String nome, descricao;
        double preco;
        int estoque;

        System.out.println("Cadastrando um Produto");
        System.out.println("Digite o nome do produto:");
        nome = sc.nextLine();

        System.out.println("Digite a descrição do produto:");
        descricao = sc.nextLine();

        System.out.println("Digite o preço do produto:");
        preco = sc.nextDouble();

        System.out.println("Digite o estoque disponível:");
        estoque = sc.nextInt();

        System.out.println("\nDetalhes do Produto Cadastrado:");
        detalhesProduto(nome, descricao, preco, estoque);

        System.out.print("\nDigite o percentual de desconto a aplicar: ");
        double percentualDesconto = sc.nextDouble();
        double precoComDesconto = desconto(preco, percentualDesconto);

        System.out.println("\nDetalhes do Produto com Desconto:");
        detalhesProduto(nome, descricao, precoComDesconto, estoque);
    }

    public static double desconto(double preco, double percentualDesconto) {
        double desconto = preco * (percentualDesconto / 100);
        return preco - desconto;
    }

    public static void detalhesProduto(String nome, String descricao, double preco, int estoque) {
        System.out.println("Nome: " + nome);
        System.out.println("Descrição: " + descricao);
        System.out.println("Preço: R$ " + preco);
        System.out.println("Estoque disponível: " + estoque);
    }
}

