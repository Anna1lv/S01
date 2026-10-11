
class MortoVivo:

    def __init__(self, nome: str, almas: int, estus: int):
        
        self.nome = nome
        self._almas = almas
        self.__estus = estus

    def get_estus(self):
        return self.__estus

    def set_estus(self, quantidade):
        if quantidade >=0 and quantidade <=10:
            self.__estus = quantidade
        else:
            print("Quantidade de Estus Inválida!")

    def mostrar_status(self):
        return f"Morto vivo: {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"


class Clerigo(MortoVivo):

    def __init__(self, nome: str, almas: int, estus: int, milagre: str):
        super().__init__(nome, almas, estus)
        self.milagre = milagre

    def mostrar_status(self):
        return f"{super().mostrar_status()} | Milagre: {self.milagre}"

if __name__ == "__main__":

    joaozin = Clerigo("Joaozin", 97535, 5, "Ressuscitou um Unicórnio")
    print(joaozin.mostrar_status())

    joaozin.set_estus(15)
    print(joaozin.mostrar_status())

    joaozin.set_estus(10)
    print(joaozin.mostrar_status())

    # print(joaozin.__estus) , da erro pois o estus é privado, precisa usar o get: AttributeError: 'Clerigo' object has no attribute '__estus'. Did you mean: 'get_estus'?

   
