public class Main {
    public static void main(String[] args) {

        Poder poder1 = new Poder("Controle Psíquico");
        Poder poder2 = new Poder("Ilusão Dimensional");

        Alien alien = new Alien("Xarglon", "Marte", "Disco Voador", poder1);
        Youkai youkai = new Youkai("Yurei", "Floresta Sombria", poder2);

        Registros registros = new Registros("Equipe Secreta");

        System.out.println(registros.registrarAvistamento(alien, alien.getNome()));
        System.out.println(registros.registrarAvistamento(alien, alien.getNome()));
        System.out.println(registros.registrarAvistamento(youkai, youkai.getNome())); 

        System.out.println("\nCoordenadas Alien: " + alien.obterCoordenadas());
        System.out.println("Coordenadas Youkai: " + youkai.obterCoordenadas());
    }
}
