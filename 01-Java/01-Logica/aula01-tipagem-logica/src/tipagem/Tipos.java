package tipagem;

public class Tipos {
    //variáveis primitivas
    public byte varByte = 127;
    public short varShort = 32767;
    public int varNumber = 128;
    public long varLong = 9223372036854775807L;

    public float varFloat = 3.14f;
    public double varDouble = 5.6;

    //tipo char e booleano
    public char varChar = 'a';
    public boolean varBoolean = true;

    //variáveis de referência --> objetos
    public String varString = "Oiiii!!";
    public Integer varInteger = 48;

    //um metodo
    public void showValues(){
        System.out.println("Váriavel de String: " + varString);
        System.out.println("Váriavel de Byte: " + varByte);
        System.out.println("Váriavel de Short: " + varShort);
        System.out.println("Váriavel de Number: " + varNumber);
        System.out.println("Váriavel de Long: " + varLong);
        System.out.println("Váriavel de Float: " + varFloat);
        System.out.println("Váriavel de Double: " + varDouble);
        System.out.println("Váriavel de Char: " + varChar);
        System.out.println("Váriavel de Boolean: " + varBoolean);
        System.out.println("Váriavel de Integer: " + varInteger);
    }

}
