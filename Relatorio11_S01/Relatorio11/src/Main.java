// Classe principal
public class Main{
    public static void main(String[] args) {
        // Instanciando um mago
        Mago howl = new Mago("Howl", 27);
        // Chamando apresentar
        howl.apresentar();
        // Criando divisoes
        Divisao quarto = new Divisao("Quarto", "Descanso");
        Divisao laboratorio = new Divisao("Laboratorio", "Criacao de feiticos");
        Divisao cozinha = new Divisao("Cozinha", "Preparacao de comidas");
        // Criando castelo
        CasteloAnimado castelo = new CasteloAnimado();
        // Adicionando divisoes
        castelo.adicionarDivisao(quarto);
        castelo.adicionarDivisao(laboratorio);
        castelo.adicionarDivisao(cozinha);

        // Listando divisoes
        castelo.listarDivisoes();
    }
}