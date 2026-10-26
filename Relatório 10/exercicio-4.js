class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(`Ataque genérico de aura contra ${alvo.nome}`);
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`Ataque do Intensificador ${this.nome} contra ${alvo.nome}!`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`Ataque do Transmutador ${this.nome} contra ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`Ataque do Materializador ${this.nome} contra ${alvo.nome}!`);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas; 

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`Cidade: ${this.cidade}`);
        this.#aranhas.forEach(a => {
            console.log(`${a.nome} | Número: ${a.numero}`);
        });
    }

    buscarAranha(numero) {
        return this.#aranhas.find(a => a.numero === numero);
    }
}

// --- MAIN ---

const a1 = new Aranha('Aranha1', 10);
const a2 = new Aranha('Aranha2', 20);

const trupe = new TrupeFantasma('Pouso Alegre', [a1, a2]);

trupe.revelarAranhas();


const aranhaEncontrada = trupe.buscarAranha(20);

const maria = new Intensificador('Maria');
const monica = new Transmutador('Monica');
const manuela = new Materializador('Manuela');

const nen = [maria, monica, manuela];

console.log('\nUsuários de Nen em combate:');
nen.forEach(n => n.atacar(aranhaEncontrada));
