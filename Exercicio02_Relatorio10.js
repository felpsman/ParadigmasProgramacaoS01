// Interface / Clsse Abstrata
class Habilidade {
    constructor(nome) {
        this.nome = nome;
    }

    // Virtual
    usar() {
        throw new Error(`A habilidade ${this.nome} deve implementar o método usar()`);
    }
}
// Heranca  e sobrescrita
class Smoke extends Habilidade {
    constructor() {
        super('Smoke');
    }

    usar() {
        return 'Lançando uma smoke para bloquear a visão! ️';
    }
}
class Flash extends Habilidade {
    constructor() {
        super('Flash');
    }

    usar() {
        return 'Explodindo uma flash para cegar os inimigos! ';
    }
}
class Dash extends Habilidade {
    constructor() {
        super('Dash');
    }

    usar() {
        return 'Avançando rapidamente pelo mapa! ';
    }
}
class Armadilha extends Habilidade {
    constructor() {
        super('Armadilha');
    }

    usar() {
        return 'Posicionando uma armadilha defensiva! ';
    }
}

// Composicao
// operadores possuem uma habilidade
class Agente {
    constructor(nome, funcao, habilidade) {
        this.nome = nome;
        this.funcao = funcao;
        this.habilidade = habilidade;
    }
    entrarEmCombate() {
        console.log(`\n${this.nome} entrou em combate!`);
        console.log(`Função: ${this.funcao}`);

        // Polimorfismo
        if (this.habilidade && typeof this.habilidade.usar === 'function') {
            console.log(this.habilidade.usar());
        }
    }
}
// Agregacao
// Time recebe operadores já criados
class Time {
    constructor(nome, agentes = []) {
        this.nome = nome;
        this.agentes = agentes;
    }
    iniciarPartida() {
        console.log(`\n=== ${this.nome} INICIOU A PARTIDA ===`);
        //Percorrendo todos os operadores
        this.agentes.forEach(agente => {
            agente.entrarEmCombate();
        });
    }
    listarControladores() {
        // Retornando apenas operadores cuja habilidade é Smoke
        return this.agentes.filter(
            agente => agente.habilidade instanceof Smoke
        );
    }
}
//Main
// Criando habilidades dos operadores
const smoke = new Smoke();
const flash = new Flash();
const dash = new Dash();
const armadilha = new Armadilha();
//Criando os operaadores
const omen = new Agente('Omen', 'Controlador', smoke);
const skye = new Agente('Skye', 'Iniciador', flash);
const jett = new Agente('Jett', 'Duelista', dash);
const cypher = new Agente('Cypher', 'Sentinela', armadilha);
// Agregacao
const timeValorant = new Time('Team Valorant', [
    omen,
    skye,
    jett,
    cypher
]);
//Iniciando partida
timeValorant.iniciarPartida();
// Listando controladores
console.log('\n=== CONTROLADORES ENCONTRADOS ===');
timeValorant.listarControladores().forEach(controlador => {
    console.log(`- ${controlador.nome}`);
});