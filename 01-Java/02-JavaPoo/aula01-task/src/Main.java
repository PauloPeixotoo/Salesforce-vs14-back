import java.sql.SQLOutput;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        GerenciadorBanco gerenciador = new GerenciadorBanco();


        while (true) {

            ContaBancaria conta = new ContaBancaria();

            System.out.println("""
                    1- Adicionar conta.
                    2- Listar contas.
                    3- Buscar contas.
                    4- Remover conta.
                    5- Sacar.
                    6- Depositar.
                    7- Sair.
                    """);

            System.out.println("Digite a opção que deseja: ");
            int opc = sc.nextInt();
            sc.nextLine();

            switch (opc) {
                case 1:
                    System.out.println("Número conta: ");
                    conta.setNumeroConta(sc.nextLine());
                    System.out.println("Titular da conta: ");
                    conta.setTitular(sc.nextLine());
                    System.out.println("Saldo da conta: ");
                    conta.setSaldo(sc.nextDouble());

                    gerenciador.adicionarConta(conta);
                    break;
                case 2:
                    gerenciador.listarContas();
                    break;
                case 3:
                    System.out.println("Número da conta que deseja buscar: ");
                    String numero = sc.nextLine();
                    conta = gerenciador.buscarConta(numero);
                    gerenciador.listarUmaConta(conta);
                    break;
                case 4:
                    System.out.println("Número da conta que deseja remover: ");
                    numero = sc.nextLine();
                    gerenciador.removerConta(numero);
                    break;
                case 5:
                    System.out.println("Qual o número da sua conta: ");
                    numero = sc.nextLine();
                    conta = gerenciador.buscarConta(numero);

                    System.out.println("Saldo da conta: "+ conta.getSaldo());
                    System.out.println("Valor do saque");
                    conta.sacar(sc.nextDouble());
                    break;
                case 6:
                    System.out.println("Qual o número da sua conta: ");
                    numero = sc.nextLine();
                    conta = gerenciador.buscarConta(numero);

                    System.out.println("Valor R$ ");
                    conta.depositar(sc.nextDouble());
                    break;
                case 7:
                    System.out.println("Saindo...");
                    return;
                default:
                    System.out.println("Opção inválida!!");
                    break;
            }
        }
    }
}
