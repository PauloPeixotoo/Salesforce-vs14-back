package Arrays;

import java.sql.SQLOutput;
import java.util.Arrays;

public class ArraysEx {
    public static void main(String[] args) {
        int[] numeros = {1, 2, 3, 4, 5};

        System.out.println(numeros[0]);//acessa o primeiro elemento do array
        numeros[1] = 28;//modifica o segundo elemento que era 2 para 28
        System.out.println(Arrays.toString(numeros));//mostra o array completo
        System.out.println(numeros[1]);//printa o elemento modificado

        //ordenando um array
        String[] orderArray = {"Pafúncio", "Esmeraldo", "Ana Banana", "Cláudia", "Zaire"};
        Arrays.sort(orderArray);
        System.out.println("Arrays ordenado: " + Arrays.toString(orderArray));

        //preenchimento do array
        int[] preencherArray = new int[8];
        Arrays.fill(preencherArray, 12);
        System.out.println("Arraus preenchido" + Arrays.toString(preencherArray));

        //compiando array
        int[] copia = Arrays.copyOf(numeros, 8);
        System.out.println("Cópia de array: " + Arrays.toString(copia));

        //comparar array
        int[] arrayUm = {1, 2, 3};
        int[] arrayDois = {1, 2, 3};
        System.out.println("Os arrays são iguais?" + Arrays.equals(arrayUm, arrayDois));

        //arrays multidimensionais = matriz
        int[][] matriz = {
                {1, 2, 3},
                {4, 5, 6},
                {7, 8, 9}
        };

        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
                System.out.println(matriz[i][j] + " ");
            }
            System.out.println();
        }
    }
}

