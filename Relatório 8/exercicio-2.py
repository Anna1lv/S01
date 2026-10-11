
class HeroiOverwatch:

    def __init__(self, codinome: str, funcao: str):
        
        self.codinome = codinome
        self._funcao = funcao

        def usar_suprema(self):
            print("Suprema Genérica")
      
class HeroiTanque(HeroiOverwatch):

    def usar_suprema(self):
        print(f"Suprema Heroi Tanque: {self.codinome} - {self._funcao} está na jogada!! ")

class HeroiSuporte(HeroiOverwatch):

    def usar_suprema(self):
        print(f"Suprema Heroi Suporte: {self.codinome} - {self._funcao} está na jogada!!")

    def curar_equipe(self):
        print(f"{self.codinome} {self._funcao} curou a equipe")


if __name__ == "__main__":

    MT = HeroiTanque("Mariazinha", "Atacadora")
    JS = HeroiSuporte("Josezinho", "Salvador da Pátria")

    herois:  list[HeroiOverwatch] = [MT, JS]

    for heroi in herois :
        heroi.usar_suprema()
        if isinstance ( heroi, HeroiSuporte ) :
            heroi.curar_equipe()


