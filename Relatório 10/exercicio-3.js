class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return `${this.criatura} | Nível de perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso {
    #fichas = [];

    constructor(numero) {
        this.numero = numero;
    }

    anotar(criatura, nivelDePerigo) {
        const novaFicha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(novaFicha);
    }

    exibirFichas() {
        console.log(`Número do diário: ${this.numero}`);
        this.#fichas.forEach(f => {
            console.log(f.descrever());
        });
    }
}

class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios = []; 

    constructor(dono) {
        this.dono = dono;
    }

    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log(`Dono: ${this.dono}`);
        this.#funcionarios.forEach(f => {
            console.log(`${f.nome} | Cargo: ${f.cargo}`);
        });
    }
}


// --- MAIN ---

const diario = new DiarioMisterioso(999);

diario.anotar("Pudim", "Alto");
diario.anotar("Nyancat", "Extremo");

diario.exibirFichas();

console.log("\n CABANA DO MISTÉRIO ^. .^");

const dipper = new Funcionario("Dipper Pines", "Investigador");
const mabel = new Funcionario("Mabel Pines", "Exploradora");

const tioavo = new CabanaDoMisterio("Tio Avô Stan");

tioavo.contratar(dipper);
tioavo.contratar(mabel);

tioavo.abrirAsPortas();

// composição é a FichaDeCriatura que nao existe fora do DiarioMisterioso.
// agregação é os funcionarios(Funcionario), que existem independentemente, são só uma parte da CabanaDoMisterio.
