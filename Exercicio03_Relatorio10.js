// Classe de Composicao
// Criatura faz parte do Diário
class Criatura {
    constructor(nome, perigo) {
        this.nome = nome;
        this.perigo = perigo;
    }
}
// Composicao
// Diário cria e controla internamente suas criaturas
class Diario {
    constructor(nome) {
        this.nome = nome;
        // array interno de criaturas
        this.criaturas = [];
    }
    registrarCriatura(criatura) {
        this.criaturas.push(criatura);
        console.log(
            `Diario: ${criatura.nome} foi registrada com nível de perigo ${criatura.perigo}.`
        );
    }
    listarCriaturas() {
        console.log(`\n Criaturas Do ${this.nome}`);
        // forEach para percorrer o array
        this.criaturas.forEach(criatura => {
            console.log(
                `- ${criatura.nome} | Perigo: ${criatura.perigo}`
            );
        });
    }
}
// Classe de Agregacao
class Personagem {
    constructor(nome) {
        this.nome = nome;
    }
}
//Agregacao
//Cabana recebe personagens já criados
class CabanaMisterio {
    constructor(nome, funcionarios = []) {
        this.nome = nome;
        this.funcionarios = funcionarios;
    }
    listarFuncionarios() {
        console.log(`\nFuncionarios Da ${this.nome}`);
        //Percorrendo todos os personagens
        this.funcionarios.forEach(personagem => {
            console.log(`- ${personagem.nome}`);
        });
    }
}
//Main
// Criando Diário
const diario3 = new Diario('Diario 3');
//Criando Criaturas
const gnomo = new Criatura('Gnomo', 'Medio');
const monstroLago = new Criatura('Monstro do Lago', 'Alto');
const fantasma = new Criatura('Fantasma da Floresta', 'Baixo');
//Registrando criaturas no diário
diario3.registrarCriatura(gnomo);
diario3.registrarCriatura(monstroLago);
diario3.registrarCriatura(fantasma);
//Listando as criaturas
diario3.listarCriaturas();
//Criando os personagens
const stan = new Personagem('Grunkle Stan');
const mabel = new Personagem('Mabel Pines');
const soos = new Personagem('Soos');
// Agregacao
//Personagens que já existiam antes da cabana
const cabana = new CabanaMisterio(
    'Cabana do Misterio',
    [stan, mabel, soos]
);

// listando funcionários
cabana.listarFuncionarios();