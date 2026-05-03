class Pokemon {
    constructor(nome, tipo, vida) {
        this.nome = nome;
        this.tipo = tipo;
        this._vida = vida;
    }
    get vida() {
        return this._vida;
    }
    atacar() {
        console.log(`${this.nome} realizou um ataque genérico.`);
    }
    receber_dano(dano) {
        this._vida -= dano;

        if (this._vida < 0) {
            this._vida = 0;
        }
        console.log(`${this.nome} recebeu ${dano} de dano.`);
    }
}
class Pikachu extends Pokemon {
    constructor(nome, vida) {
        super(nome, "Elétrico", vida);
    }
    atacar() {
        console.log(`${this.nome} usou Choque do Trovão!`);
    }
}
class Charizard extends Pokemon {
    constructor(nome, vida) {
        super(nome, "Fogo/Voador", vida);
    }
    atacar() {
        console.log(`${this.nome} usou Lança-Chamas!`);
    }
}
const pikachu = new Pikachu("Pikachu", 100);
const charizard = new Charizard("Charizard", 150);
pikachu.atacar();
charizard.atacar();
charizard.receber_dano(40);
console.log(`Vida restante de ${charizard.nome}: ${charizard.vida}`);