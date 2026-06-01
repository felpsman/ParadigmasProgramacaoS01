package C06.Funcionarios;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.Duration;


public class Vendedor extends Funcionario{
    protected double comissao;
    protected double total;
    protected boolean Venda;
    protected int i;
    public Vendedor(String nome,float salario){
        super(nome,LocalTime.now(),salario);
    }
    public int Vendas(){
        i=0;
        if (Venda == true){
            return i =i+1;//Colocar a venda para cada vendededor corretamente, para ele ganhar seu percentual correto
        }
        else return i;
    }
    public double comissao(float salario){
        salario=5000 ; //(Numero De Vendas que o vendedor fez. * 0.25)
        if (Venda==true) {
            return total = salario+ salario * 0.45; //(Numero De Vendas que o vendedor fez. * 0.25)
        }
        else return total=salario;
    }
    @Override
        public void HoraExtra(float salario) {
            LocalTime fimExpediente = LocalTime.of(18, 0);
            LocalTime horarioSaida = LocalTime.now();
            if (horarioSaida.isAfter(fimExpediente)) {
                Duration horaExtra = Duration.between(fimExpediente, horarioSaida);
                System.out.println("Hora extra: " + horaExtra.toHours());
            } else {
                System.out.println("Nao houve hora extra");
            }
        }
    public void HorasTrabalhadas(){
        //Implementar junto com o BancoDeHorasFuncionarios, para ver quantas horas foram trabalhadas

    }
}
