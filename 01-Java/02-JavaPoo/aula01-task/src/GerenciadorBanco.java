import java.util.ArrayList;
import java.util.List;

public class GerenciadorBanco {
    public List<ContaBancaria> contas;

    public GerenciadorBanco(){
        this.contas = new ArrayList<ContaBancaria>();
    }

    public void adicionarConta(ContaBancaria conta){
        if(buscarConta(conta.getNumeroConta()) != null){
            System.out.println("A conta já existe, tente outro número!");
            return;
        }

        contas.add(conta);
        System.out.println("Conta adicionada com sucesso!");
    }

    public ContaBancaria buscarConta(String numeroConta){
        for(int i = 0; i < contas.size(); i++){
            if(contas.get(i).numeroConta.equals(numeroConta)){
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
            System.out.println("Número da conta: " + contas.get(i).getNumeroConta());
            System.out.println("Titular: " + contas.get(i).getTitular());
            System.out.println("Saldo: " + contas.get(i).getSaldo());
            System.out.println();
        }
    }
}
