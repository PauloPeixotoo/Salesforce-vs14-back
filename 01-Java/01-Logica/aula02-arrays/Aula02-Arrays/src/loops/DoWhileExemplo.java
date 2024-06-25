package loops;
//faça tal operação enquanto a condição for falsa
public class DoWhileExemplo {
    public static void main(String[] args) {
        int i = 0;
        do{
            System.out.println("i = " + i);
            i++;
        }while(i <= 10);
    }
}
