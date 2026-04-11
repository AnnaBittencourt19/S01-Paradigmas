#include <iostream>
#include <string>
using namespace std;

class Pessoa {
private:
    string nome;
    int idade;
public:
    void setNome(string n) { nome = n; }
    void setIdade(int i) { idade = i; }
    string getNome() { return nome; }
    int getIdade() { return idade; }
};
class Protagonista : public Pessoa {
private:
    int nivel;
public:
    void setNivel(int n) { 
        nivel = n; 
    }
    int getNivel() {
         return nivel; 
    }
    void exibir() {
        cout << "Protagonista" << endl;
        cout << "Nome: " << getNome() << endl;
        cout << "Idade: " << getIdade() << endl;
        cout << "Nivel: " << nivel << endl;
    }
};

class Personagem : public Pessoa {
private:
    int rank;
public:
    void setRank(int r) {
        if (r >= 0 && r <= 10)
            rank = r;
        else
            cout << "Rank invalido! Deve ser entre 0 e 10." << endl;
    }
    int getRank() { return rank; }
    void exibir() {
        cout << "Personagem" << endl;
        cout << "Nome: " << getNome() << endl;
        cout << "Idade: " << getIdade() << endl;
        cout << "Rank (Social Link): " << rank << endl;
    }
};
int main() {
    Protagonista p1;
    p1.setNome("Yuki");
    p1.setIdade(17);
    p1.setNivel(42);
    Personagem p2;
    p2.setNome("Aigis");
    p2.setIdade(1);
    p2.setRank(10);
    p1.exibir();
    cout << endl;
    p2.exibir();
    return 0;
}
