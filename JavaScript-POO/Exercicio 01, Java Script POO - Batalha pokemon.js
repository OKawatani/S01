
class Pokemon {
  constructor(nome, tipo, vidaInicial) {
    this.nome = nome;
    this.tipo = tipo;
    this._vida = vidaInicial; 
  }

  getVida() {
    return this._vida;
  }

  _receberDano(dano) {
    this._vida -= dano;
    if (this._vida < 0) this._vida = 0;
  }

  atacar(alvo) {
    console.log(`${this.nome} realiza um ataque genérico em ${alvo.nome}.`);
    alvo._receberDano(10);
  }

  toString() {
    return `${this.nome} (${this.tipo}) - Vida: ${this._vida}`;
  }
}


class PokemonFogo extends Pokemon {
  constructor(nome, vidaInicial, bonusAtaque) {
    super(nome, "Fogo", vidaInicial);
    this.bonusAtaque = bonusAtaque;
  }

  atacar(alvo) {
    const dano = 15 + this.bonusAtaque;
    console.log(`${this.nome} lança uma bola de fogo em ${alvo.nome}, causando ${dano} de dano!`);
    alvo._receberDano(dano);
  }
}


class PokemonAgua extends Pokemon {
  constructor(nome, vidaInicial, curaBase) {
    super(nome, "Água", vidaInicial);
    this.curaBase = curaBase;
  }

  atacar(alvo) {
    const dano = 12;
    console.log(`${this.nome} lança um jato de água em ${alvo.nome}, causando ${dano} de dano!`);
    alvo._receberDano(dano);

    console.log(`${this.nome} se cura em ${this.curaBase} pontos de vida.`);
    this._curar(this.curaBase);
  }

  _curar(valor) {
    this._vida += valor;
  }
}

function batalhaPokemon() {
  const charmander = new PokemonFogo("Charmander", 100, 5);
  const squirtle = new PokemonAgua("Squirtle", 100, 8);

  console.log(charmander.toString());
  console.log(squirtle.toString());
  console.log("--------------------------");

  charmander.atacar(squirtle);
  console.log(squirtle.toString());
  console.log("--------------------------");

  squirtle.atacar(charmander);
  console.log(charmander.toString());
}

batalhaPokemon();
