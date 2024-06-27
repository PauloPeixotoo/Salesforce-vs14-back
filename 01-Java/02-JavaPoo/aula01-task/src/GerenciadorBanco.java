import java.util.ArrayList;
import java.util.List;

public class GerenciadorBanco {
    private List<ContaBancaria> contas;

    public GerenciadorBanco(){
        this.contas = new ArrayList<ContaBancaria>();
    }

    public void adicionarConta(ContaBancaria conta){
        if(conta == null){
            System.out.println("Conta inválida!");
                    return;
        }

        if(buscarConta(conta.getNumeroConta()) != null){
            System.out.println("A conta já existe, tente outro número!");
            return;
        }

        contas.add(conta);
        System.out.println("Conta adicionada com sucesso!");
    }

    public ContaBancaria buscarConta(String numeroConta){
        if(numeroConta == null || numeroConta.isEmpty()){
            System.out.println("Número da conta inválido!");
            return null;
        }

        for(ContaBancaria conta : contas){
            if(conta.getNumeroConta().equals(numeroConta)){
                return conta;
            }
        }

        return null;
    }

    public void removerConta(String numeroConta){
        if(numeroConta == null || numeroConta.isEmpty()){
            System.out.println("Número da conta inválido!");
            return;
        }

        ContaBancaria conta = buscarConta(numeroConta);
        if(conta == null){
            System.out.println("A conta que deseja remover não existe!");
            return;
        }
        contas.remove(conta);
        System.out.println("Conta removida com sucesso!");
    }

    public void listarContas(){
        if (contas.isEmpty()){
            System.out.println("Não há contas registradas!");
            return;
        }

        System.out.println("Contas registradas: ");
        for(int i = 0; i < contas.size(); i++){
            System.out.println("Número da conta: " + contas.get(i).getNumeroConta());
            System.out.println("Titular: " + contas.get(i).getTitular());
            System.out.println("Saldo: " + contas.get(i).getSaldo());
            System.out.println();
        }
    }
}
