from abc import ABC, abstractmethod

class Heroi(ABC):
    def __init__(self, nome: str, funcao: str):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass


class Tanque(Heroi):
    def __init__(self, nome: str):
        super().__init__(nome, "Tanque")

    def usar_ultimate(self):
        print(f"{self.nome} (Tanque) usa sua ultimate: Ativa um escudo massivo para proteger o time!")


class Dano(Heroi):
    def __init__(self, nome: str):
        super().__init__(nome, "Dano")

    def usar_ultimate(self):
        print(f"{self.nome} (Dano) usa sua ultimate: Libera uma rajada devastadora que causa muito dano!")


if __name__ == "__main__":
    herois = [
        Tanque("Reinhardt"),
        Dano("Soldado: 76"),
        Dano("Pharah"),
        Tanque("D.Va")
    ]

    for heroi in herois:
        heroi.usar_ultimate()
