package heranca;

public class Aluno extends Pessoa {
    //atributos adicionais da classe
    private String matricula;
    private String curso;

    public Aluno(String nome, int idade, double altura, double peso, String corDoCabelo, String comorbidade, String matricula, String curso) {
        super(nome, idade, altura, peso, corDoCabelo, comorbidade);
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

    public static void main(String[] args) {
        Aluno pessoa = new Aluno("Pafúncio",20,1.80,99,"castanho", "diabético","2025","ADS");
        pessoa.mostrarDetalhesPessoa();
    }
}
