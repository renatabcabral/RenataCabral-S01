import java.util.HashMap;

public class Batalha {

    private HashMap<String, Boss> _arena;

    public Batalha() {
        _arena = new HashMap<>();
    }

    public void adicionarBoss(Boss boss) {
        _arena.put(boss.getIdBoss(), boss);
    }

    public void iniciarBatalha(String idBoss) {
        Boss boss = _arena.get(idBoss);

        if (boss != null) {
            boss.iniciarFase();
        } else {
            System.out.println("Boss não encontrado na arena.");
        }
    }
}
