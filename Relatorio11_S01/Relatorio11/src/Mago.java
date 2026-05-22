public class Mago extends Personagem {

    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void apresentar() {
        System.out.println("Eu sou o mago " + getNome() +
                ", tenho " + getIdade() +
                " anos e domino magia poderosa!");
    }
}