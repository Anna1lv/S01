using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System;
using System.Collections.Generic;

public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"Feitiço Favorito: {FeiticoFavorito}!");
    }
}


public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"Olá! Meu nome é {Nome}, minha função é {Funcao}.");
    }
}


public class Maga
{
    public string Nome { get; set; }
    public Grimorio MeuGrimorio { get; set; }

    private List<Companheiro> companheiros = new List<Companheiro>();

    public Maga(string nome)
    {
        this.Nome = nome;
        this.MeuGrimorio = new Grimorio();
    }

    public void Recrutar(Companheiro c)
    {
        this.companheiros.Add(c);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\n{Nome} recrutou seus companheiros:");

        foreach (var c in companheiros)
        {
            c.Apresentar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine(">> Iniciando Aventura de Elfos <<\n");

        Companheiro c1 = new Companheiro("Jozezin", "Fazendeiro Mágico");
        Companheiro c2 = new Companheiro("Joaozin", " Carteiro da Elfolandia");

        Maga maga = new Maga("A Maga");

        maga.Recrutar(c1);
        maga.Recrutar(c2);

        maga.MeuGrimorio.FeiticoFavorito = "Mágica das Samambaias";

        maga.MostrarGrupo();
        Console.WriteLine();
        maga.MeuGrimorio.Abrir();
    }
}

// a composição no meu programa é o "MeuGrimorio, pois não existe de forma independente fora do construtor da Maga".
// e a agregação é a lista dos companheiros que existem por si só, a maga só os recruta.
