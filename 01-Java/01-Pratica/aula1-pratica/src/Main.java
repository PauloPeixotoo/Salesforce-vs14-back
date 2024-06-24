import java.util.Scanner;


public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite de 1 a 3 para selecionar a opção de calculo para descobrir a Área: ");
        int calculo = sc.nextInt();

        switch (calculo) {
            case 1:
                System.out.println("Circulo");
                System.out.print("Digite o raio do circulo: ");
                double raio = sc.nextDouble();
                double areaCirculo = Math.PI * Math.pow(raio, 2);
                System.out.print("Área: " + areaCirculo);
                break;
            case 2:
                System.out.println("Quadrado");
                System.out.print("Digite o lado do quadrado: ");
                double lado = sc.nextDouble();
                double areaQuadrado = Math.pow(lado, 2);
                System.out.println("Área: " + areaQuadrado);
                break;
            case 3:
                System.out.println("Triângulo");
                System.out.print("Digite a base do triãngulo: ");
                double base = sc.nextDouble();
                System.out.print("Digite a altura do triãngulo: ");
                double altura = sc.nextDouble();
                double areaTriangulo = (base * altura/2);
                System.out.println("Area: " + areaTriangulo);
                break;
        }
    }
}