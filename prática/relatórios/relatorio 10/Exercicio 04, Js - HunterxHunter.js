class Hunter {
    constructor(nome) {
        this.nome = nome;
    }

    lutar() {
        console.log(`${this.nome} está lutando com um estilo genérico.`);
    }
}
class Gon extends Hunter {
    lutar() {
        console.log(`${this.nome} usou Jajanken!`);
    }
}
class Killua extends Hunter {
    lutar() {
        console.log(`${this.nome} usou Godspeed!`);
    }
}
class Kurapika extends Hunter {
    lutar() {
        console.log(`${this.nome} usou suas correntes!`);
    }
}
class MembroTrupe {
    constructor(nome) {
        this.nome = nome;
    }
}
class TrupeFantasma {
    constructor(nome, membros) {
        this.nome = nome;
        this.membros = membros;
    }
    revelarMembros() {
        console.log(`\nMembros da ${this.nome}:`);
        this.membros.forEach((membro) => {
            console.log(membro.nome);
        });
    }
}
const gon = new Gon("Gon");
const killua = new Killua("Killua");
const kurapika = new Kurapika("Kurapika");
gon.lutar();
killua.lutar();
kurapika.lutar();
const chrollo = new MembroTrupe("Chrollo");
const hisoka = new MembroTrupe("Hisoka");
const feitan = new MembroTrupe("Feitan");
const trupeFantasma = new TrupeFantasma("Trupe Fantasma", [
    chrollo,
    hisoka,
    feitan
]);
trupeFantasma.revelarMembros();