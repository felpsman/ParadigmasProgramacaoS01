// Classe Prato
public class Prato {
    private String nome;
    private Monstro monstro;
    private Tempero tempero;
    public Prato(String nome, Monstro monstro, Tempero tempero) {
        this.nome = nome;
        this.monstro = monstro;
        this.tempero = tempero;
    }
    public void servir() {
        System.out.println("Prato: " + nome);
        monstro.virarPrato();
        System.out.println("Tempero usado: " + tempero.getNome() +
                " | Quantidade: " + tempero.getQuantidade());
        System.out.println();
    }
}