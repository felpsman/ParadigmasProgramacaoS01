package C06.Funcionarios;
//Herdando da classe mae
public class Gerente extends Funcionario {
    //Passando o nome, idade e salario do gerente
    public Gerente(String nome, int idade, float salario){
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
