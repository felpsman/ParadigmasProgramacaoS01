import java.util.ArrayList;
// Classe Menu
public class Menu {
    private ArrayList<Cafe> cafes;
    public Menu() {
        cafes = new ArrayList<>();
    }
    public void adicionarCafe(Cafe cafe) {
        cafes.add(cafe);
    }
    public void exibirMenu() {
        System.out.println("Menu da Cafeteria Leblanc:");
        for (Cafe cafe : cafes) {
            System.out.println("- " + cafe.getNome() +
                    " | Preco final: R$ " +
                    cafe.calcularPrecoFinal());
        }
    }
}