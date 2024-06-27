public class Main {
    public static void main(String[] args) {
        ContaBancaria conta = new ContaBancaria("001", "Erick", 1000);

        GerenciadorBanco gerenciadorBanco = new GerenciadorBanco();

        gerenciadorBanco.adicionarConta(conta);
        gerenciadorBanco.listarContas();
        gerenciadorBanco.buscarConta("001");
        gerenciadorBanco.removerConta("001");
        gerenciadorBanco.listarContas();
    }
}
