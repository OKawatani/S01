from abc import ABC, abstractmethod
from typing import List

class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self) -> None:
        """Executa a ação de hack do cibernético."""
        pass

class Implante:
    def __init__(self, custo: int, funcao: str):
        self.custo = custo
        self.funcao = funcao

    def __str__(self) -> str:
        return f"Implante(funcao='{self.funcao}', custo={self.custo})"


class NetRunner(Cibernetico):
    def __init__(self, nome: str, implante_custo: int, implante_funcao: str):
        self.nome = nome
        
        self.implante = Implante(implante_custo, implante_funcao)

    def realizar_hack(self) -> None:
        
        print(f"{self.nome} executa um hack usando {self.implante.funcao} (custo: {self.implante.custo})")
        



class Faccao:
    def __init__(self, membros: List[Cibernetico]):
        
        self.membros = membros

    def comandar_hacks(self) -> None:
        print("Fração ordena: TODOS, executar realizar_hack()!\n")
        for membro in self.membros:
            membro.realizar_hack()

    def adicionar_membro(self, membro: Cibernetico) -> None:
        self.membros.append(membro)

    def listar_membros(self) -> None:
        print("Membros da facção:")
        for i, m in enumerate(self.membros, start=1):
            
            nome = getattr(m, "nome", repr(m))
            print(f" {i}. {nome}")
        print()



if __name__ == "__main__":
    
    nr1 = NetRunner("Lucy", 1200, "Bypass do Firewall Corporativo")
    nr2 = NetRunner("T-Bug", 900, "Injeção de Pacote Neural")
    nr3 = NetRunner("Mama Brigite", 1500, "Overclock de Nó Remoto")

    
    faccao = Faccao([nr1, nr2])
    faccao.adicionar_membro(nr3)  

    faccao.listar_membros()
    faccao.comandar_hacks()
