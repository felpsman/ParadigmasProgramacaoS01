package C06.Funcionarios;

import java.time.LocalTime;
import java.util.ArrayList;

public abstract class Funcionario {
    protected String nome;
    protected int idade;
    protected float salario;
    ArrayList<Funcionario> funcionarios = new ArrayList<>();
    private LocalTime agora = LocalTime.now();
    private LocalTime FimExpediente=LocalTime.of(18,0);

    public Funcionario(String nome, LocalTime horarioEntrada, float salario){
        this.nome=nome;
        this.idade=idade;
        this.salario=salario;
    }
    //Criando getters e setters
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public int getIdade(){
        return idade;
    }
    public void setIdade(int idade){
        this.idade = idade ;
    }
    public float getsalario(){
        return salario;
    }
    public void setSalario(float salario){
        this.salario=salario;
    }



    //Metodos abstratos a serem reescritos pelas classes filhas
    public abstract void HoraExtra(float salario); //Metodo para calcular  possiveis HoraExtra
    public abstract void HorasTrabalhadas(); //Metodo para calcular as horas trabalhadas

}
