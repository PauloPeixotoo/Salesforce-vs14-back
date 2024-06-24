package tipagem;

import tipagem.conditionals.Conditions;

public class MainClass {
    public static void main(String[] args) {
        System.out.println("Está é a classe Main");
        // cria a instância da classe tipos
        Tipos tipos = new Tipos();
        Conditions conditions = new Conditions();

        //invocação do método da classe Tipos
        tipos.showValues();

        //invocação do método da classe Conditions
        conditions.exampleIfElse(15);
        conditions.exampleIfElseifElse(14);
    }
}