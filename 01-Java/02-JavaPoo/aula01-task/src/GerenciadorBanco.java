public class GerenciadorBanco {
    public List<ContaBancaria> contas;

    private GerenciadorBanco(){
        this.contas = new ArrayList<ContaBancaria>();
    }

    public void adicionarConta(ContaBancaria conta){
        contas.add(conta);
    }

    public ContaBancaria buscarConta(String numeroConta){
        for(int i = 0; i < contas.size(); i++){
            if(contas[i].numeroConta.matches(numeroConta)){
                return contas[i];
            }
        }

        return null;
    }

    public void removerConta(String numeroConta){
        ContaBancaria conta = buscarConta(numeroConta);
        contas.remove(conta);
    }

    public void listarContas(){
        System.out.println("Contas registradas: ");
        for(int i = 0; i < contas.size(); i++){
            System.out.println("Número da conta: " + contas[i].numeroConta);
            System.out.println("Titular: " + contas[i].titular);
            System.out.println("Saldo: " + contas[i].saldo);
            System.out.println();
        }
    }
}
