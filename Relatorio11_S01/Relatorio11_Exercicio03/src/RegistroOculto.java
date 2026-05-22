import java.util.HashMap;
// Classe RegistroOculto
public class RegistroOculto {
    private HashMap<String, Entidade> entidades;
    public RegistroOculto() {
        entidades = new HashMap<>();
    }
    public void registrarEntidade(Entidade entidade) {
        if (entidades.containsKey(entidade.getNome())) {
            System.out.println("A entidade " + entidade.getNome() + " ja foi registrada.");
        } else {
            entidades.put(entidade.getNome(), entidade);
            System.out.println("Entidade " + entidade.getNome() + " registrada com sucesso.");
        }
    }
    public void listarEntidades() {
        System.out.println("Entidades registradas:");

        for (Entidade entidade : entidades.values()) {
            if (entidade instanceof Rastreavel) {
                Rastreavel rastreavel = (Rastreavel) entidade;

                System.out.println("- " + entidade.getNome() +
                        " | " + rastreavel.obterCoordenadas());
            }
        }
    }
}