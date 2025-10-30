
class Criatura {
  constructor(nome, perigosa) {
    this.nome = nome;
    this.perigosa = perigosa;
  }
}

class Diario {
  #autorSecreto;

  constructor(autor) {
    this.#autorSecreto = autor;
    this.enigmas = new Map();
    this.criaturasAvistadas = [];
  }

  getAutor() {
    return this.#autorSecreto;
  }

  adicionarEnigma(num, enigma) {
    this.enigmas.set(num, enigma);
  }

  decodificar(chave, num) {
    if (chave === this.#autorSecreto && this.enigmas.has(num)) {
      return `Enigma ${num}: ${this.enigmas.get(num)}`;
    } else {
      return "Acesso negado ao enigma!";
    }
  }
}

class Personagem {
  constructor(nome, idade) {
    this.nome = nome;
    this.idade = idade;
  }
}


class Protagonista extends Personagem {
  constructor(nome, idade) {
    super(nome, idade);
    this.diario = new Diario(nome); 
  }
}


class CabanaMisterio {
  constructor(dono) {
    this.dono = dono; 
    this.funcionarios = [];
  }

  adicionarFuncionario(personagem) {
    if (personagem instanceof Personagem) {
      this.funcionarios.push(personagem);
    } else {
      console.log("Somente personagens podem ser adicionados!");
    }
  }

  listarFuncionarios() {
    return this.funcionarios.map(p => `${p.nome}, ${p.idade} anos`);
  }
}



const dipper = new Protagonista("Dipper", 12);
const mabel = new Personagem("Mabel", 12);
const soose = new Personagem("Soos", 22);
const stan = new Personagem("Tio Stan", 58);


dipper.diario.adicionarEnigma(1, "O Olho que tudo vê.");
dipper.diario.adicionarEnigma(2, "O portal sob a cabana.");


console.log("=== Decodificação ===");
console.log(dipper.diario.decodificar("Dipper", 1)); 

console.log(dipper.diario.decodificar("Bill", 2));   


const cabana = new CabanaMisterio(dipper);
cabana.adicionarFuncionario(mabel);
cabana.adicionarFuncionario(soose);
cabana.adicionarFuncionario(stan);

console.log("\n=== Funcionários da Cabana Mistério ===");
console.log(cabana.listarFuncionarios().join("\n"));
