// Classe CafeGourmet herdando de Cafe
public class CafeGourmet extends Cafe {
    private double bonusAroma;
    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }
    public double getBonusAroma() {
        return bonusAroma;
    }
    @Override
    public double calcularPrecoFinal() {
        return getPreco() + bonusAroma;
    }
}