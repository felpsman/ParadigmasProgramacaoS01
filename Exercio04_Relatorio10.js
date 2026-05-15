// Classe base
class Hunter {
    constructor(nome) {
        this.nome = nome;
    }
    // Virtual
    lutar() {
        return `${this.nome} esta lutando de forma generica!`;
    }
}
// Heranca e Sobrescrita
class Gon extends Hunter {
    constructor() {
        super('Gon');
    }
    lutar() {
        return `${this.nome} usa Jajanken!`;
    }
}
class Killua extends Hunter {
    constructor() {
        super('Killua');
    }
    lutar() {
        return `${this.nome} ativa Godspeed!`;
    }
}
class Kurapika extends Hunter {
    constructor() {
        super('Kurapika');
    }
    lutar() {
        return `${this.nome} usa suas correntes!`;
    }
}
// Classe para os membros da trupe 
class Membro {
    constructor(nome) {
        this.nome = nome;
    }
}
// Agregacao 
// TrupeFantasma recebe membros ja criados
class TrupeFantasma {
    constructor(nome, membros = []) {
        this.nome = nome;
        this.membros = membros;
    }
    revelarMembros() {
        console.log(`\nMEMBROS DA ${this.nome.toUpperCase()}`);
        // forEach para percorrer o array
        this.membros.forEach(membro => {
            console.log(`- ${membro.nome}`);
        });
    }
}
//Main
//Criando os hunters
const gon = new Gon();
const killua = new Killua();
const kurapika = new Kurapika();
// Polimorfismo
//Mesmo metodo lutar(), comportamentos diferentes
console.log(gon.lutar());
console.log(killua.lutar());
console.log(kurapika.lutar());
//Criando membros da trupe
const chrollo = new Membro('Chrollo');
const hisoka = new Membro('Hisoka');
const feitan = new Membro('Feitan');
// Agregacao
// Membros ja existiam antes da trupe
const trupe = new TrupeFantasma(
    'Trupe Fantasma',
    [chrollo, hisoka, feitan]
);
// Revelando membros
trupe.revelarMembros();