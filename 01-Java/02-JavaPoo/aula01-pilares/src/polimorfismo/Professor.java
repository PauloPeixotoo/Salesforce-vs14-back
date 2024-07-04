package polimorfismo;

public class Professor extends Pessoa{
    private String departamento;

    public Professor(String departamento) {
        this.departamento = departamento;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    //implementa
    @Override
    public void mostrarDetalhesPessoa() {
        super.mostrarDetalhesPessoa();
        System.out.println("Departamento: " + departamento);
    }
}
