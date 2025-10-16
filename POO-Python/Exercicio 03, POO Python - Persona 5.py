
class ArmaCorpoACorpo:
    def __init__(self, nome: str, dano: int):
        self.nome = nome
        self.dano = dano

    def __str__(self):
        return f"{self.nome} (Dano: {self.dano})"



class PhantomThieves:
    def __init__(self, nome: str, arma: ArmaCorpoACorpo):
        self.nome = nome
        self.arma = arma

    def __str__(self):
        return f"Membro: {self.nome} | Arma: {self.arma}"


class Joker:
    def __init__(self, equipe: list[PhantomThieves]):
        
        self.arma = ArmaCorpoACorpo("Adaga", 999)
        
        self.equipe = equipe

    def mostrar_equipe(self):
        print(f"Joker empunha {self.arma}")
        print("Equipe dos Phantom Thieves:")
        for membro in self.equipe:
            print(f" - {membro}")


if __name__ == "__main__":
    
    arma_1 = ArmaCorpoACorpo("Taco", 45)
    arma_2 = ArmaCorpoACorpo("Chicote", 40)
    arma_3 = ArmaCorpoACorpo("Katana", 48)

    
    membro1 = PhantomThieves("Ryuji", arma_1)
    membro2 = PhantomThieves("Ann", arma_2)
    membro3 = PhantomThieves("Yusuke", arma_3)
    
    
    joker = Joker([membro1, membro2, membro3])

    
    joker.mostrar_equipe()
