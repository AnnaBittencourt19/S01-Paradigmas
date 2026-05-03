class Habilidade {
    usar() {
        throw new Error("O método usar() precisa ser sobrescrito.");
    }
}
class Smoke extends Habilidade {
    usar() {
        console.log("Lançou uma smoke para bloquear a visão inimiga.");
    }
}
class Flash extends Habilidade {
    usar() {
        console.log("Usou uma flash para cegar os adversários.");
    }
}
class Dash extends Habilidade {
    usar() {
        console.log("Usou dash para avançar rapidamente.");
    }
}
class Armadilha extends Habilidade {
    usar() {
        console.log("Colocou uma armadilha para detectar inimigos.");
    }
}
class Agente {
    constructor(nome, funcao, habilidade) {
        this.nome = nome;
        this.funcao = funcao;
        this._habilidade = habilidade;
    }

    get habilidade() {
        return this._habilidade;
    }
    entrarEmCombate() {
        console.log(`${this.nome} entrou em combate.`);
        console.log(`Função: ${this.funcao}`);
        this._habilidade.usar();
        console.log("----------------------");
    }
}
class Time {
    constructor(agentes) {
        this.agentes = agentes;
    }
    iniciarPartida() {
        console.log("Iniciando partida...\n");

        this.agentes.forEach((agente) => {
            agente.entrarEmCombate();
        });
    }
    listarControladores() {
        return this.agentes.filter((agente) => agente.habilidade instanceof Smoke);
    }
}
const omen = new Agente("Omen", "Controlador", new Smoke());
const skye = new Agente("Skye", "Iniciador", new Flash());
const jett = new Agente("Jett", "Duelista", new Dash());
const cypher = new Agente("Cypher", "Sentinela", new Armadilha());
const time = new Time([omen, skye, jett, cypher]);

time.iniciarPartida();
const controladores = time.listarControladores();
console.log("Controladores encontrados:");
controladores.forEach((agente) => {
    console.log(`${agente.nome} - ${agente.funcao}`);
});