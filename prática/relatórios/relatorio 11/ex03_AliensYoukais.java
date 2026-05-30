import java.util.HashMap;

interface Rastreavel {
    String obterCoordenadas();
}

class Poder {
    private String nome;
    private int intensidade;

    public Poder(String nome, int intensidade) {
        this.nome = nome;
        this.intensidade = intensidade;
    }
}

class Entidade {
    private String nome;

    public Entidade(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}

class Alien extends Entidade implements Rastreavel {
    private Poder poder;

    public Alien(String nome) {
        super(nome);
        poder = new Poder("Poder", 10);
    }

    @Override
    public String obterCoordenadas() {
        return "Coordenadas do Alien";
    }
}

class Youkai extends Entidade implements Rastreavel {
    private Poder poder;

    public Youkai(String nome) {
        super(nome);
        poder = new Poder("Poder", 8);
    }

    @Override
    public String obterCoordenadas() {
        return "Coordenadas do Youkai";
    }
}

class RegistroOculto {
    private HashMap<String, Entidade> entidades;

    public RegistroOculto() {
        entidades = new HashMap<>();
    }

    public void registrarEntidade(Entidade entidade) {
        if (entidades.containsKey(entidade.getNome())) {
            System.out.println("Entidade já registrada.");
        } else {
            entidades.put(entidade.getNome(), entidade);
        }
    }

    public void listarEntidades() {
        for (Entidade entidade : entidades.values()) {
            Rastreavel rastreavel = (Rastreavel) entidade;
            System.out.println(entidade.getNome() + " - " + rastreavel.obterCoordenadas());
        }
    }
}

public class Main {
    public static void main(String[] args) {
        RegistroOculto registro = new RegistroOculto();
        Alien anna = new Alien("Anna");
        Alien darwin = new Alien("Darwin");
        Youkai neusa = new Youkai("Neusa");
        Youkai fifi = new Youkai("Fifi");
        registro.registrarEntidade(anna);
        registro.registrarEntidade(darwin);
        registro.registrarEntidade(neusa);
        registro.registrarEntidade(fifi);
        registro.registrarEntidade(anna);
        registro.listarEntidades();
    }
}