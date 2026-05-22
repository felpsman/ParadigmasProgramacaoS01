// Classe Cogumelo herdando Monstro
public class Cogumelo extends Monstro {
    public Cogumelo(String nome) {
        super(nome);
    }
    @Override
    public void virarPrato() {
        System.out.println("O cogumelo " + getNome() + " virou um prato especial da masmorra.");
    }
}