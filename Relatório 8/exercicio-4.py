from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):

    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:

    def __init__(self, modelo: str):
        
        self.modelo = modelo

      
class OperadorNetrunner(IUnidadeDeRede):

    def __init__(self, nome: str, modelo: str):
        
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo)


    def executar_invasao(self):
        print(f"Netrunner: {self.nome} | Modelo do Cyberdeck: {self.cyberdeck.modelo} - Atenção: está quebrando o ICE do servidor!!")
        

class DroneDeVigilancia(IUnidadeDeRede):

    def __init__(self, codigo: int):
        
        self.codigo = codigo
    
    def executar_invasao(self):
        print(f"O Drone {self.codigo} está interceptando o sinal da rede")
    
    
class CelulaHacker:

    def __init__(self, nome: str, membros: list[IUnidadeDeRede]):

        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"Começando o ataque... {self.nome} Ataca")

        for membro in self.membros :
            membro.executar_invasao()
            
if __name__ == "__main__":

    n = OperadorNetrunner("Operador Net", "Modelo 8346")
    d = DroneDeVigilancia(2733)

    c = CelulaHacker("Moranguinho", [n, d])

    c.iniciar_ataque()

    #unidade = IUnidadeDeRede() TypeError: Can't instantiate abstract class IUnidadeDeRede without an implementation for abstract method 'executar_invasao'
    #classes abstratas servem apneas como "molde", o python bloqueia esse tipo de criação
    

