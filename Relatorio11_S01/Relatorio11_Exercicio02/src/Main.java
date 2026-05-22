// Classe principal
public class Main {
    public static void main(String[] args) {
        // Criando cafes
        Cafe cafeSimples = new Cafe("Cafe simples", 6.00);
        Cafe cappuccino = new Cafe("Cappuccino", 9.50);
        CafeGourmet cafeGourmet = new CafeGourmet("Cafe gourmet especial", 12.00, 4.00);
        // Criando cafeteria
        CafeteriaLeblanc cafeteria = new CafeteriaLeblanc();
        // Adicionando cafes ao menu
        cafeteria.adicionarCafe(cafeSimples);
        cafeteria.adicionarCafe(cappuccino);
        cafeteria.adicionarCafe(cafeGourmet);
        // Abrindo cafeteria
        cafeteria.abrirCafeteria();
    }
}