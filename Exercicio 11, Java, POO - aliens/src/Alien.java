public class Alien extends Entidades {

    private String planetaOrigem;
    private String ovni;

    public Alien(String nome, String planetaOrigem, String ovni, Poder poder) {
        super(nome, planetaOrigem, poder);
        this.planetaOrigem = planetaOrigem;
        this.ovni = ovni;
    }

    @Override
    public String obterCoordenadas() {
        return "Planeta: " + planetaOrigem + " | OVNI: " + ovni;
    }
}
