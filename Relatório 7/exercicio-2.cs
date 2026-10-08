using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"\n[{Especie} - Nível {Nivel}] Explosão de Fofura!");
    }
}

public class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        Console.WriteLine($"\n[{Especie} - Nível {Nivel}] Atacando com Ervas Daninha!");
    }
}


public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        base.Atacar(); 
        Console.WriteLine($"[{Especie} - Nível {Nivel}] Ataque Choque de Tomada!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine(">> Batalha Pokémons <<");

        List<Pokemon> pokedex = new List<Pokemon>();

        pokedex.Add(new Pokemon("Eve", 5));
        pokedex.Add(new TipoPlanta("Bulbassauro", 12));
        pokedex.Add(new TipoEletrico("Pikachu", 15));

        
        foreach (var pokemon in pokedex)
        {
            pokemon.Atacar();
        }
    }
}
