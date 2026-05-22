// Classe principal
public class Main {
    public static void main(String[] args) {

        Alien alien1 = new Alien("Zorg");
        Alien alien2 = new Alien("Kira");

        Youkai youkai1 = new Youkai("Kurama");
        Youkai youkai2 = new Youkai("Akuma");

        RegistroOculto registro = new RegistroOculto();

        registro.registrarEntidade(alien1);
        registro.registrarEntidade(alien2);
        registro.registrarEntidade(youkai1);
        registro.registrarEntidade(youkai2);

        // Tentando registrar entidade repetida
        registro.registrarEntidade(alien1);

        registro.listarEntidades();
    }
}