public class GerenciadorBanco {
    public List<ContaBancaria> contas;

    private GerenciadorBanco(){
        this.contas = new ArrayList<ContaBancaria>();
    }

    public void adicionarConta(ContaBancaria conta){
        if(buscarConta(conta.getNumeroConta) != null){
            System.out.println("A conta já existe, tente outro número!");
            return;
        }

        contas.add(conta);
        System.out.println("Conta adicionada com sucesso!");
    }

    public ContaBancaria buscarConta(String numeroConta){
        for(int i = 0; i < contas.size(); i++){
            if(contas.get(i).numeroConta.matches(numeroConta)){
                return contas.get(i);
            }
        }

        return null;
    }

    public void removerConta(String numeroConta){
        ContaBancaria conta = buscarConta(numeroConta);
        if(conta == null){
            System.out.println("A conta que deseja remover não existe!");
            return;
        }
        contas.remove(conta);
        System.out.println("Conta removida com sucesso!");
    }

    public void listarContas(){
        System.out.println("Contas registradas: ");
        for(int i = 0; i < contas.size(); i++){
            System.out.println("Número da conta: " + contas.get(i).numeroConta);
            System.out.println("Titular: " + contas.get(i).titular);
            System.out.println("Saldo: " + contas.get(i).saldo);
            System.out.println();
        }
    }
}
