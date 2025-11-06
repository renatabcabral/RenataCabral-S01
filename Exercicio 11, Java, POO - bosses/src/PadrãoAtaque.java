import java.util.Objects;

public class PadrãoAtaque {
    private String nome;
    private int dano;

    public PadrãoAtaque(String nome, int dano) {
        this.nome = nome;
        this.dano = dano;
    }

    public String getNome() {
        return nome;
    }

    public int getDano() {
        return dano;
    }

    @Override
    public int hashCode() {
        return Objects.hash(nome, dano);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        PadrãoAtaque outro = (PadrãoAtaque) obj;
        return dano == outro.dano && Objects.equals(nome, outro.nome);
    }
}
