package C06.BancoDeDados.;
import C06.Funcionarios.Vendedor;

import java.io.FileWriter;
import java.io.IOException;

public class ArquivoFuncionarios{
    public void salvarVendedor(Vendedor vendedor) {
        try {
            FileWriter arquivo = new FileWriter("funcionarios.csv", true);

            arquivo.write(
                    vendedor.getNome() + ";" +
                            vendedor.getIdade() + ";" +
                            vendedor.getsalario() + ";" +
                            vendedor.getHorarioEntrada() + ";" +
                            vendedor.getHorarioSaida() + ";" +
                            vendedor.isHouveVenda() + ";" +
                            vendedor.getValorVenda() + "\n"
            );

            arquivo.close();

            System.out.println("Funcionario salvo no arquivo!");

        } catch (IOException e) {
            System.out.println("Erro ao salvar arquivo.");
        }
    }
}