package classes;

public class Livro {

    public String titulo;
    public String autor;
    public double preco;
    public int quantidadeEstoque;

    //Constructor
    public Livro(String titulo, String autor, double preco, int quantidadeEstoque) {
        this.titulo = titulo;
        this.autor = autor;
        this.preco = preco;
        this.quantidadeEstoque = quantidadeEstoque;
    }

    public void exibirInformacoes() {
        System.out.println("Titulo do Livro: " + this.titulo);
        System.out.println("Autor do Livro" + this.autor);
        System.out.println("Preço do Livro" + this.preco);
        System.out.println("Quantidade de Estoque: " + this.quantidadeEstoque);
    }

    public static void main(String[] args) {
        Livro livro = new Livro("It", "Stephen King", 99.99, 12);
    }

}
