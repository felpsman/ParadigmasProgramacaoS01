import java.util.ArrayList;
// Classe CasteloAnimado
public class CasteloAnimado {
    private ArrayList<Divisao> divisoes;
    public CasteloAnimado() {
        divisoes = new ArrayList<>();
    }
    // Adiciona divisao
    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }
    // Lista divisoes
    public void listarDivisoes() {
        System.out.println("Divisoes do Castelo Animado:");
        for(int i = 0; i < divisoes.size(); i++) {
            Divisao divisao = divisoes.get(i);
            System.out.println("- " + divisao.getNome()
                    + " -> Funcao: "
                    + divisao.getFuncao());
        }
    }
}