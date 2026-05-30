import java.util.ArrayList;

class Cafe {
    private String nome;
    private double preco;

    public Cafe(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public double calcularPrecoFinal() {
        return preco;
    }
}

class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        return getPreco() + bonusAroma;
    }
}

class Menu {
    private ArrayList<Cafe> cafes;

    public Menu() {
        cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe cafe) {
        cafes.add(cafe);
    }

    public void exibirMenu() {
        for (Cafe cafe : cafes) {
            System.out.println(cafe.getNome() + " - R$ " + cafe.calcularPrecoFinal());
        }
    }
}

class CafeteriaLeblanc {
    private Menu menu;

    public CafeteriaLeblanc() {
        menu = new Menu();
    }

    public void adicionarCafe(Cafe cafe) {
        menu.adicionarCafe(cafe);
    }

    public void abrirCafeteria() {
        System.out.println("Bem-vindo à Cafeteria Leblanc!");
        menu.exibirMenu();
    }
}

public class Main {
    public static void main(String[] args) {
        CafeteriaLeblanc cafeteria = new CafeteriaLeblanc();
        Cafe cafe1 = new Cafe("Café simples", 5.0);
        Cafe cafe2 = new Cafe("Café com leite", 7.0);
        CafeGourmet cafe3 = new CafeGourmet("Café gourmet", 10.0, 3.0);
        cafeteria.adicionarCafe(cafe1);
        cafeteria.adicionarCafe(cafe2);
        cafeteria.adicionarCafe(cafe3);
        cafeteria.abrirCafeteria();
    }
}