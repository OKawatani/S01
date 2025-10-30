
class IExplorador {
  explorarTerritorio() {
    throw new Error("Método 'explorarTerritorio()' deve ser implementado.");
  }
}

class ODM_Gear {
  constructor(modelo) {
    this.modelo = modelo;
    this.gasRestante = 100; 
  }

  usarGas(quantidade) {
    this.gasRestante -= quantidade;
    if (this.gasRestante < 0) this.gasRestante = 0;
  }

  getGas() {
    return this.gasRestante;
  }
}


class Soldado extends IExplorador {
  constructor(nome, modeloGear) {
    super();
    this.nome = nome;
    this._gear = new ODM_Gear(modeloGear);
  }

  explorarTerritorio() {
    this._gear.usarGas(10);
    return `${this.nome} está explorando com o equipamento ${this._gear.modelo}. Gas restante: ${this._gear.getGas()}`;
  }

  verificarEquipamento() {
    return `Equipamento de ${this.nome}: ${this._gear.modelo} (Gas: ${this._gear.getGas()})`;
  }
}

class Esquadrao extends IExplorador {
  constructor(lider, membrosIniciais = []) {
    super();
    this.lider = lider;
    this.membros = [...membrosIniciais];
  }

  adicionarMembro(soldado) {
    if (soldado instanceof IExplorador) {
      this.membros.push(soldado);
    } else {
      console.log("Erro: Membro deve implementar IExplorador!");
    }
  }

  explorarTerritorio() {
    const resultados = [];
    this.membros.forEach(membro => {
      resultados.push(membro.explorarTerritorio());
    });
    return resultados.join("\n");
  }

  relatarStatus() {
    return this.membros.map(m => m.verificarEquipamento());
  }
}


const levi = new Soldado("Levi", "Modelo A1");
const mikasa = new Soldado("Mikasa", "Modelo B2");
const eren = new Soldado("Eren", "Modelo C3");

const esquadraoLevi = new Esquadrao(levi, [mikasa]);
esquadraoLevi.adicionarMembro(eren);

console.log("=== Exploração do Território ===");
console.log(esquadraoLevi.explorarTerritorio());

console.log("\n=== Status dos Soldados ===");
console.log(esquadraoLevi.relatarStatus().join("\n"));
