class Pistola {
    #modelo;

    constructor(guarda, modelo) {
        this.guarda = guarda;
        this.#modelo = modelo;
    }

    get modelo() {
        return this.#modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.modeloDaPistola = modeloDaPistola;
        this.#pistola = new Pistola("Jonas", this.modeloDaPistola);
    }
    
    usarHabilidade() {
        throw new Error(`BIP BIP error`);
    }

    entrarEmCombate() {
        console.log(`${this.codinome} está com uma ${this.#pistola.modelo} pronta pro ataque!`);
        console.log(this.usarHabilidade());
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return `Contolador está controlando!`;
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return `Iniciador está iniciando!`;
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return `Duelista está duelando!`;
    }
}

class Esquadrao {
    #agentes;
    
    constructor(nome, agentes = []) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida() {
        console.log(`${this.nome}`);
        this.#agentes.forEach(e => {
            e.entrarEmCombate();
        });
    }

    listarControladores() {
        return this.#agentes.filter(m => m instanceof Controlador);
    }
}

// --- MAIN ---

const joel = new Controlador('Jojo', "Arminha de Sabão");
const noel = new Controlador('El', "Estilingue");
const bingo = new Iniciador('Bingo', "Nerf");
const robson = new Duelista('Rob', "Modelo 3454");

const meuEsquadrao = new Esquadrao('Esquadrão Turminha', [joel, noel, bingo, robson]);

meuEsquadrao.iniciarPartida();

console.log('\nControladores:');
meuEsquadrao.listarControladores().forEach(c => console.log(c.codinome));

//passo 8
const agenteTeste = new AgenteProtocolo('Teste', "testearma");
//agenteTeste.entrarEmCombate(); //BipBip
