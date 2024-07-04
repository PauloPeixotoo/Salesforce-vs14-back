package polimorfismo;

public class Pessoa {

    private String nome;
    private int idade;
    private double altura;
    private String curso;

    public Pessoa(java.lang.String nome, int idade, double altura, String curso) {
        this.nome = nome;
        this.idade = idade;
        this.altura = altura;
        this.curso = curso;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }
    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }


    public void mostrarDetalhesPessoa() {
        System.out.println("Nome do Pessoa: " + nome);
        System.out.println("Idade do Pessoa: " + idade);
        System.out.println("Altura do Pessoa: " + altura);
        System.out.println("Curso: " + curso);

    }
}
