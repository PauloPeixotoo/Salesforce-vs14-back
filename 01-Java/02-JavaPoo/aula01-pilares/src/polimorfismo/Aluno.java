package polimorfismo;

public class Aluno extends Pessoa {
    //atributos adicionais da classe
    private String matricula;
    private String curso;

    public Aluno(String nome, int idade, double altura, String matricula, String curso) {
        super(nome, idade, altura);
        this.matricula = matricula;
        this.curso = curso;

    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public void mostrarDetalhesPessoa() {
        super.mostrarDetalhesPessoa();
        System.out.println("Matricula: " + matricula);
        System.out.println("curso: " + curso);
    }

}
