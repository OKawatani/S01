
class IRastreavel {
  rastrearLocal(lat, long) {
    throw new Error("Método rastrearLocal() deve ser implementado!");
  }
}

class Hunter extends IRastreavel {
  constructor(nome, localizacao, idade) {
    super();
    this._nome = nome;
    this._localizacao = localizacao;
    this._idade = idade;
  }

  get nome() {
    return this._nome;
  }

  get localizacao() {
    return this._localizacao;
  }

  rastrearLocal(lat, long) {
    return `${this._nome} está rastreando nas coordenadas ${lat}, ${long}.`;
  }
}


class Especialista extends Hunter {
  constructor(nome, localizacao, idade, habilidadeNen) {
    super(nome, localizacao, idade);
    this._habilidadeNen = habilidadeNen;
  }

  rastrearLocal(lat, long) {
    return `Especialista ${this._nome} usa ${this._habilidadeNen} para localizar energia em ${lat}, ${long}.`;
  }
}


class Manipulador extends Hunter {
  constructor(nome, localizacao, idade, alvoAtual) {
    super(nome, localizacao, idade);
    this._alvoAtual = alvoAtual; 
  }

  rastrearLocal(lat, long) {
    return `Manipulador ${this._nome} rastreia o alvo ${this._alvoAtual?.nome || "desconhecido"} próximo a ${lat}, ${long}.`;
  }
}


class Batalhao {
  constructor() {
    this.hunters = new Set();
  }

  adicionarHunter(hunter) {
    if (![...this.hunters].some(h => h.nome === hunter.nome)) {
      this.hunters.add(hunter);
    } else {
      console.log(`Hunter "${hunter.nome}" já está registrado!`);
    }
  }

  getNumHunters() {
    return this.hunters.size;
  }

  iniciarRastreamento(lat, long) {
    const relatorios = [];
    for (const hunter of this.hunters) {
      relatorios.push(hunter.rastrearLocal(lat, long));
    }
    return relatorios;
  }
}



const gon = new Especialista("Gon", "Floresta", 14, "Jajanken");
const killua = new Manipulador("Killua", "Cidade", 14, gon);
const kurapika = new Especialista("Kurapika", "Montanha", 17, "Correntes da Vingança");

const batalhao = new Batalhao();
batalhao.adicionarHunter(gon);
batalhao.adicionarHunter(killua);
batalhao.adicionarHunter(kurapika);
batalhao.adicionarHunter(gon); 

console.log("\n=== Rastreamento Iniciado ===");
batalhao.iniciarRastreamento("35.6895° N", "139.6917° E").forEach(msg => console.log(msg));

console.log(`\nTotal de Hunters no Batalhão: ${batalhao.getNumHunters()}`);
