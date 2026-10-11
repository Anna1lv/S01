
class Persona:

    def __init__(self, nome: str, arcano: str):
        
        self.nome = nome
        self._arcano = arcano

    def invocar(self):
       print(f"Um raio cai ao chão... o que é aquilo? ... {self.nome} {self._arcano} foi invocado!")
      
class Aliado:

    def __init__(self, nome: str, codinome: str):
        
        self.nome = nome
        self._codinome = codinome

class Lider:

    def __init__(self, codinome: str):
        
        self.codinome = codinome
        self.persona = Persona("Arsène", "Louco")
        self._equipe = []

    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)

    def infiltrar(self, palacio: str):
        print(f"O Palácio do {palacio} foi invadido por {self.codinome}.")

        self.persona.invocar()
    
        print("\nEquipe em ação:")
        for membro in self._equipe:
            print(f"- {membro.nome} (Codinome: {membro._codinome})")


        
 
if __name__ == "__main__":

    a1 = Aliado("Jose", "Jojo Todynho")
    a2 = Aliado("Dory", "Dolly Guaraná")

    lider = Lider("Joker")

    lider.recrutar(a1)
    lider.recrutar(a2)

    lider.infiltrar("Planalto")

# composicao é a persona do joker que morre com ele e a agregação é o esquema dos aliados, os quais recrutamos
