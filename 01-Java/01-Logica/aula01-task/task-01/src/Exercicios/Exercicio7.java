import java.util.Scanner;

public class Exercicio7 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite a quantidade de alunos na turma: ");
        int numAlunos = scanner.nextInt();

        for (int i = 1; i <= numAlunos; i++) {
            System.out.println("\nAluno " + i);

            System.out.print("Digite o nome do aluno: ");
            String nomeAluno = scanner.next();

            System.out.print("Digite a nota da primeira prova: ");
            double notaUm = scanner.nextDouble();

            System.out.print("Digite a nota da segunda prova: ");
            double notaDois = scanner.nextDouble();

            System.out.print("Digite a nota da terceira prova: ");
            double notaTres = scanner.nextDouble();

            double mediaAluno = (notaUm + notaDois + notaTres) / 3;

            System.out.println("Nome: " + nomeAluno);
            System.out.println("Média: " + mediaAluno);
        }

        scanner.close();
    }
}
