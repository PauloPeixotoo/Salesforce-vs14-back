import java.util.Scanner;

public class ContaBancaria {
    public String numeroConta;
    public String titular;
    public double saldo;

    Scanner sc = new Scanner(System.in);

    public ContaBancaria(String numeroConta, String titular, double saldo) {
        this.numeroConta = numeroConta;
        this.titular = titular;
        this.setSaldo(saldo);
    }

    public ContaBancaria (){
        this.numeroConta = "";
        this.titular = "";
        this.saldo = 0;
    }

    public String getNumeroConta() {
        return numeroConta;
    }

    public void setNumeroConta(String numeroConta) {
        this.numeroConta = numeroConta;
    }

    public String getTitular() {
        return titular;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo < 0 ? 0 : saldo;
    }

   public void depositar(double valor){
       this.saldo += valor;
       System.out.println("Deposito realizado com sucesso!");
       System.out.println("Seu novo saldo é: " + this.saldo);
   }

   public void sacar(double valor){
        if(valor <= this.saldo){
            this.saldo -= valor;
            System.out.println("Saque realizado com sucesso!");
            System.out.println("Seu novo saldo é: " + this.saldo);
        }else {
            System.out.println("Saldo insuficiente para saque!");
        }
   }
}
