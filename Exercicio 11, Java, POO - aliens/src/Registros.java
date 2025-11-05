import java.util.HashMap;

public class Registros {

    private String nomeEquipe;
    private HashMap<String, Entidades> avistamentos;

    public Registros(String nomeEquipe) {
        this.nomeEquipe = nomeEquipe;
        this.avistamentos = new HashMap<>();
    }

    public boolean registrarAvistamento(Entidades entidade, String nome) {

        if (!avistamentos.containsKey(nome)) {
            avistamentos.put(nome, entidade);
            return true;
        }

        return false;
    }
}
