package C06.Funcionarios;

public class Maquinario extends Funcionario{

    public Maquinario(String nome, int idade, float salario){
        super(nome,idade,salario);
    }


    @Override
    public void HoraExtra(float salario){
        //Implementar junto com o BancoDeHorasFunctionarios, pois se ele passar de 40 horas semanais, recebera hora extra
    };
    public void HorasTrabalhadas(){
        //Implementar junto com o BancoDeHorasFuncionarios, para ver quantas horas foram trabalhadas

    }

}
