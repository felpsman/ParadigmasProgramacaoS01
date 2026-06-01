import C06.Funcionarios.Funcionario;
import C06.Funcionarios.Gerente;
import C06.Funcionarios.Vendedor;

import java.util.ArrayList;

public class Main{
    public static void main(String[] args){
        ArrayList<Funcionario> funcionarios = new ArrayList<>();
        Vendedor V1= new Vendedor("Jim", 26, 5000);
        Vendedor V2 = new Vendedor("Jim", 54, 5000);
        Gerente G1 = new Gerente("Michael Scott", 44, 10000);
        funcionarios.add(V1);
        funcionarios.add(V2);
        funcionarios.add(G1);
        System.out.println(V1.getNome());
        System.out.println("Com quem esta falando? ");
        //Jim
        //Gostariad e comprar talt tal
        //Preco
        //Vendido as 18:50
        //Comissao e hora extra para Jim
        //Conectar tudo isso ao banco de dados

    }
}