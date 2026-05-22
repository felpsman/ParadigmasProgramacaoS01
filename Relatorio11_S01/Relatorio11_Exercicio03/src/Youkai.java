// Classe Youkai herdando Entidade e implementando Rastreavel
public class Youkai extends Entidade implements Rastreavel {
    private Poder poder;
    public Youkai(String nome) {
        super(nome);
        poder = new Poder("Energia espiritual", 95);
    }
    @Override
    public String obterCoordenadas() {
        return "Youkai " + getNome() +
                " localizado em: Templo antigo, coordenadas X: 450, Y: 700";
    }
}