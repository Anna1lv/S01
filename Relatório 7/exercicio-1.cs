using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;


public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    
    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

	
    public string Armamento { get; private set; } = "Desarmado";

    public void Equipar(string arma)
    {
        this.Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine("\n--- Apresentando dados do combatente ---");
        Console.WriteLine($"Nome: {Nome}");
        Console.WriteLine($"Povo: {Povo}");
        Console.WriteLine($"Posto: {Posto}");

        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Arma: {Armamento}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Iniciando Ex 1 ===");

        CombatenteDeGondor c1 = new CombatenteDeGondor("Monica", "Bairro do Limoeiro", "Mandona");
        CombatenteDeGondor c2 = new CombatenteDeGondor("Magali", "Bairro do Limoeiro2", "Comilona");
        CombatenteDeGondor c3 = new CombatenteDeGondor("Cascão", "Bairro do Limoeiro3", "Ipiranga");

        c1.Equipar("Sansão");
        c2.Equipar("Melancia");

        c1.ApresentarUnidade();
        c2.ApresentarUnidade();
        c3.ApresentarUnidade();

        // tentando alterar o posto diretamente na main
        
		    //c1.Posto = "Amiga da Turma";

		    //erro: HelloWorld.cs(63,6): error CS0272: The property or indexer `CombatenteDeGondor.Posto' cannot be used in this context because the set accessor is inaccessible
        
		    // deu erro pois o set é privado
    }
}
