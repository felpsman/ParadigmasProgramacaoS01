// Classe Lagosta herdando Monstro
public class Lagosta extends Monstro {
    public Lagosta(String nome) {
        super(nome);
    }
    @Override
    public void virarPrato() {
        System.out.println("A lagosta " + getNome() + " virou um prato sofisticado.");
    }
}