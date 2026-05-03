class Criatura {
    constructor(nome, perigo) {
        this.nome = nome;
        this.perigo = perigo;
    }
}
class Diario {
    constructor() {
        this.criaturas = [];
    }
    registrarCriatura(criatura) {
        this.criaturas.push(criatura);
        console.log(`${criatura.nome} foi registrada no diário.`);
    }
    listarCriaturas() {
        console.log("\nCriaturas registradas no Diário 3:");
        this.criaturas.forEach((criatura) => {
            console.log(`Nome: ${criatura.nome} \nPerigo: ${criatura.perigo}\n`);
        });
    }
}
class Personagem {
    constructor(nome) {
        this.nome = nome;
    }
}
class CabanaMisterio {
    constructor(personagens) {
        this.personagens = personagens;
    }
    listarFuncionarios() {
        console.log("\nFuncionários da Cabana do Mistério:");
        this.personagens.forEach((personagem) => {
            console.log(personagem.nome);
        });
    }
}
const diario = new Diario();
const gnomo = new Criatura("Gnomo", "Médio");
const zumbi = new Criatura("Zumbi", "Alto");
const billCipher = new Criatura("Bill Cipher", "Extremo");
diario.registrarCriatura(gnomo);
diario.registrarCriatura(zumbi);
diario.registrarCriatura(billCipher);
diario.listarCriaturas();
const stan = new Personagem("Grunkle Stan");
const mabel = new Personagem("Mabel");
const soos = new Personagem("Soos");
const cabana = new CabanaMisterio([stan, mabel, soos]);

cabana.listarFuncionarios();