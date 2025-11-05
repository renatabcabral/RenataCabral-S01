public class Main {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 27, "Tempestade de fogo");

        Castelo castelo = new Castelo("Castelo Animado");
        castelo.adicionarDivisao(new Divisao("Sala de controle"));
        castelo.adicionarDivisao(new Divisao("Cozinha"));

        System.out.println(howl.lancarFeitico());
    }
}
