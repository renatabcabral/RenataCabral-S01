public class Main {
    public static void main(String[] args) {

        Batalha arena = new Batalha();

        BossMagico boss1 = new BossMagico("Fogo Supremo", "B001", "Água");
        boss1.adicionarAtaque(new PadrãoAtaque("Bola de Fogo", 40));
        boss1.adicionarAtaque(new PadrãoAtaque("Chamas Absolutas", 60));

        arena.adicionarBoss(boss1);

        arena.iniciarBatalha("B001");
    }
}
