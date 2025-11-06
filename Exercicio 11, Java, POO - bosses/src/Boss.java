import java.util.LinkedHashSet;

public class Boss {

    private String nome;
    private String idBoss;
    private String PontoFraco;
    protected LinkedHashSet<PadrãoAtaque> _moveset;

    public Boss(String nome, String idBoss, String fracoContra) {
        this.nome = nome;
        this.idBoss = idBoss;
        this.PontoFraco = fracoContra;
        this._moveset = new LinkedHashSet<>();
    }

    public void adicionarAtaque(PadrãoAtaque ataque) {
        _moveset.add(ataque);
    }

    public void iniciarFase() {
        System.out.println("Boss: " + nome);
        System.out.println("ID: " + idBoss);
        System.out.println("Ponto fraco: " + PontoFraco);
        System.out.println("\n--- Movimentos do Boss ---");
        for (PadrãoAtaque a : _moveset) {
            System.out.println(a.getNome() + " causando " + a.getDano() + " de dano.");
        }
    }

    public String getIdBoss() {
        return idBoss;
    }
}
