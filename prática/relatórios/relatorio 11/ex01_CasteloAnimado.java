import java.util.ArrayList;
abstract class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public abstract void apresentar();
}

class Mago extends Personagem {
    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void apresentar() {
        System.out.println("Meu nome é " + getNome() + " e uso magia");
    }
}

class Divisao {
    private String nome;
    private String funcao;

    public Divisao(String nome, String funcao) {
        this.nome = nome;
        this.funcao = funcao;
    }

    public String getNome() {
        return nome;
    }

    public String getFuncao() {
        return funcao;
    }
}

class CasteloAnimado {
    private ArrayList<Divisao> divisoes;

    public CasteloAnimado(ArrayList<Divisao> divisoes) {
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }

    public void listarDivisoes() {
        for (Divisao divisao : divisoes) {
            System.out.println(divisao.getNome() + " - " + divisao.getFuncao());
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 27);
        howl.apresentar();
        Divisao quarto = new Divisao("Quarto", "Descanso");
        Divisao laboratorio = new Divisao("Laboratório", "Magia");
        ArrayList<Divisao> lista = new ArrayList<>();
        CasteloAnimado castelo = new CasteloAnimado(lista);
        castelo.adicionarDivisao(quarto);
        castelo.adicionarDivisao(laboratorio);
        castelo.listarDivisoes();
    }
}