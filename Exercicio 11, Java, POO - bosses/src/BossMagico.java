public class BossMagico extends Boss {

    public BossMagico(String nome, String idBoss, String fracoContra) {
        super(nome, idBoss, fracoContra);
    }

    @Override
    public void iniciarFase() {
        System.out.println("\n🔥 Iniciando batalha com o BOSS MÁGICO! 🔥");
        super.iniciarFase();
    }
}

