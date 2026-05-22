// Classe abstrata Monstro
public abstract class Monstro {
    private String nome;
//Construtor Mostro
    public Monstro(String nome) {
        this.nome = nome;
    }
//Getter
    public String getNome() {
        return nome;
    }

    public abstract void virarPrato();
}