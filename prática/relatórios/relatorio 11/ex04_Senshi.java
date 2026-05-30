import java.util.ArrayList;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void virarPrato();
}

class Lagosta extends Monstro {
    public Lagosta(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Senshi prepara a lagosta");
    }
}

class Cogumelo extends Monstro {
    public Cogumelo(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Senshi prepara o cogumelo");
    }
}

class Tempero {
    private String nome;
    private int quantidade;

    public Tempero(String nome, int quantidade) {
        this.nome = nome;
        this.quantidade = quantidade;
    }

    public String getNome() {
        return nome;
    }

    public int getQuantidade() {
        return quantidade;
    }
}

class Prato {
    private String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro) {
        this.nome = nome;
        this.monstro = monstro;
        this.tempero = new Tempero("Tempero", 1);
    }

    public void servir() {
        System.out.println("Prato: " + nome);
        monstro.virarPrato();
        System.out.println("Tempero usado: " + tempero.getNome() + " - " + tempero.getQuantidade());
    }
}

public class Main {
    public static void main(String[] args) {
        Lagosta lagosta = new Lagosta("Lagosta");
        Cogumelo cogumelo = new Cogumelo("Cogumelo");
        Prato prato1 = new Prato("Prato de lagosta", lagosta);
        Prato prato2 = new Prato("Prato de cogumelo", cogumelo);
        prato1.servir();
        prato2.servir();
        ArrayList<Prato> cardapio = new ArrayList<>();
        cardapio.add(prato1);
        cardapio.add(prato2);
        for (Prato prato : cardapio) {
            prato.servir();
        }
    }
}