package loops;

public class LoopFor {
    public static void main(String[] args) {
        int[] numeros = {2, 5, 6, 7, 8, 10};

        System.out.println("Iterando com o loop for: ");
        for (int i = 0; i < numeros.length; i++) {
            System.out.println(numeros[i] + " ");
        }
        System.out.println();

        //iterando com foreach
        for (int numero : numeros) {
            System.out.println(numero + " ");
        }
        System.out.println();

        //modificar elemento com o for
        for (int i = 0; i < numeros.length; i++) {
            numeros[i] *= 2;

            System.out.println("Array após a modificação com o FOR: ");
        }
    }
}
