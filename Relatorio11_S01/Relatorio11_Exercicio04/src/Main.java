import java.util.ArrayList;
// Classe principal
public class Main {
    public static void main(String[] args) {
        Lagosta lagosta = new Lagosta("Lagosta gigante");
        Cogumelo cogumelo = new Cogumelo("Cogumelo venenoso");
        Tempero sal = new Tempero("Sal", 2);
        Tempero ervas = new Tempero("Ervas magicas", 5);
        Prato prato1 = new Prato("Lagosta grelhada da masmorra", lagosta, sal);
        Prato prato2 = new Prato("Ensopado de cogumelo", cogumelo, ervas);
        ArrayList<Prato> cardapio = new ArrayList<>();
        cardapio.add(prato1);
        cardapio.add(prato2);
        System.out.println("Cardapio da expedicao:");
        for (Prato prato : cardapio) {
            prato.servir();
        }
    }
}