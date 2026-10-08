using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
	public string Nome {get; set;}
    public string Origem { get; set; } = "Desconhecida";

	 public EntidadeCosmica(string nome, string origem)
    {
        this.Nome = nome;
        this.Origem = origem;
    }

    public virtual void Manifestar()
    {
		if (Origem != "Desconhecida")
        {
            Console.WriteLine($"{Nome} - Origem: {Origem}");
        }
	}   
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome, string origem) : base(nome, origem)
    {
    }

    public override void Manifestar()
    {
        Console.WriteLine($"Ola! Sou {Nome}.");
    }
}


public class MiGo: EntidadeCosmica
{
    public MiGo(string nome, string origem) : base(nome, origem)
    {
    }

    public override void Manifestar()
    {
        base.Manifestar(); 
        Console.WriteLine($"Ola! Sou {Nome}.");
    }
}



public class Pesquisador
{
    public string Nome { get; set; }

    private List<EntidadeCosmica> entidades = new List<EntidadeCosmica>();

    public void Catalogar(EntidadeCosmica e)
    {
        this.entidades.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\n{Nome} Catalogou entidades:");

        foreach (var e in entidades)
        {
            e.Manifestar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {

        Console.WriteLine(" >> Biblioteca das Entidades Mágicas do Universo << ");

        Pesquisador pesquisador = new Pesquisador();
        pesquisador.Nome = "Srta. Gazella";

        
        Profundo e1 = new Profundo("Nyancat", "Desconhecida");
        MiGo e2 = new MiGo("Pudim Amassado", "Júpiter");

        EntidadeCosmica e3 = new EntidadeCosmica("Et", "Varginha");

        pesquisador.Catalogar(e1);
        pesquisador.Catalogar(e2);
        pesquisador.Catalogar(e3);

        pesquisador.LerCatalogo();

    }
}

