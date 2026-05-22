// Classe Alien herdando Entidade e implementando Rastreavel
public class Alien extends Entidade implements Rastreavel {
    private Poder poder;
    public Alien(String nome) {
        super(nome);
        poder = new Poder("Telepatia alienigena", 80);
    }
    @Override
    public String obterCoordenadas() {
        return "Alien " + getNome() +
                " localizado em: Area 51, coordenadas X: 120, Y: 300";
    }
}