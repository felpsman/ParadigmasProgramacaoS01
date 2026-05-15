// Classe  Base
class Pokemon {
    // Encapsulamento
    #vida;

    constructor(nome, tipo, vida) {
        this.nome = nome;
        this.tipo = tipo;
        this.#vida = vida;
    }

    // GETTER
    // Permite acessar a vida sem modificar diretamente
    get vida() {
        return this.#vida;
    }
    // Método genérico que será sobrescrito
    atacar() {
        return `${this.nome} atacou de forma genérica!`;
    }

    // Método controlado para o dano, para reduzir a vida do pokemom
    receber_dano(dano) {
        this.#vida -= dano;

        // Como a vida não pode ficar negativa
        if (this.#vida < 0) {
            this.#vida = 0;
        }
        console.log(`${this.nome} recebeu ${dano} de dano!`);
    }
}
// Heranca
class Pikachu extends Pokemon {
    constructor() {
        super('Pikachu', 'Elétrico', 100);
    }

    //@Override
    atacar() {
        return `${this.nome} usou Choque do Trovão! `;
    }
}
// Heranca
class Charizard extends Pokemon {
    constructor() {
        super('Charizard', 'Fogo', 150);
    }

    //@Override
    atacar() {
        return `${this.nome} usou Lança-Chamas! `;
    }
}


//Main

// Crianco instancia pros pokémons
const pikachu = new Pikachu();
const charizard = new Charizard();

// Polimorfismo
console.log(pikachu.atacar());
console.log(charizard.atacar());

// Aplicando dano o dano aos pokemons
pikachu.receber_dano(30);
charizard.receber_dano(50);

//Exibindo vida restante dos pokenons  via getter
console.log(`Vida do ${pikachu.nome}: ${pikachu.vida}`);
console.log(`Vida do ${charizard.nome}: ${charizard.vida}`);