public class Youkai extends Entidades {

    public Youkai(String nome, String localizacao, Poder poder) {
        super(nome, localizacao, poder);
    }

    @Override
    public String obterCoordenadas() {
        return "Localização espiritual: " + localizacao;
    }
}
