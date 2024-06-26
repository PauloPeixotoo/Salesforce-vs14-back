package encapsulamento;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Pessoa p1 = new Pessoa();

        System.out.println("Digite o seu nome: ");
        p1.nome = sc.nextLine();

        //Acessando atributos privados
        System.out.println("Digite o seu idade: ");
        p1.setIdade(sc.nextInt());

        System.out.println("Digite seu peso: ");
        p1.setPeso(sc.nextDouble());

        System.out.println("-- Visualizando os dados --");
        System.out.println("Nome: " + p1.nome);

        //Obtendo os dados gravados nos atributos privados
        System.out.println("Idade: " + p1.getIdade());
        System.out.println("Peso: " + p1.getPeso());
    }
}
