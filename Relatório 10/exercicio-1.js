class Pokemon {
    #vida;

    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    
    get vida() {
        return this.#vida;
    }

    sofrerDano(pontos) {
        this.#vida = Math.max(0, this.#vida - pontos);
        console.log(`${this.apelido} | Vida restante: ${this.#vida}`);
    }

    atacar(alvo) {
        console.log(`${this.apelido} acaba de atacar ${alvo.apelido}!`);
        alvo.sofrerDano(10);
    }
}

class Squirtle extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Água', vidaInicial);
    }

    atacar(alvo) {
        console.log(`SPLASHHH! ${this.apelido} acaba de atacar ${alvo.apelido} com um golpe de água!`);
        alvo.sofrerDano(20);
    }
}

class Bulbasaur extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Planta', vidaInicial);
    }

    atacar(alvo) {
        console.log(`Ervas Daninhas!! ${this.apelido} acaba de atacar ${alvo.apelido} com um golpe de planta!`);
        alvo.sofrerDano(15);
    }
}

// --- MAIN ---

const squirtle = new Squirtle('Squirtlezinho', 100);
const bulb = new Bulbasaur('Bulbassaurinho', 30);


bulb.atacar(squirtle);

squirtle.atacar(bulb);
squirtle.atacar(bulb);


console.log(`\n${squirtle.apelido} está com ${squirtle.vida} de vida!!`);
console.log(`${bulb.apelido} está com ${bulb.vida} de vida!!`);

// console.log(squirtle.#vida);
// da erro pois é privada
