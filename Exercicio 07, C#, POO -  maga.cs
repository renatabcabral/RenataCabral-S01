using System;
using System.Collections.Generic;

class Feitico
{
    public string Nome { get; set; }

    public Feitico(string nome)
    {
        Nome = nome;
    }
}

class Grimorio
{
    private List<Feitico> feiticos = new List<Feitico>();


    public void AdicionarFeitico(Feitico feitico)
    {
        feiticos.Add(feitico);
    }

    public void ListarFeiticos()
    {
        Console.WriteLine("Feitiços no Grimório:");
        foreach (var f in feiticos)
        {
            Console.WriteLine("- " + f.Nome);
        }
    }
}

class Ferramenta
{
    public string Nome { get; set; }

    public Ferramenta(string nome)
    {
        Nome = nome;
    }
}

class Maga
{
    public string Nome { get; set; }
    public Grimorio Grimorio { get; private set; } 
    public List<Ferramenta> Ferramentas { get; private set; } 

    public Maga(string nome, List<Ferramenta> ferramentas)
    {
        Nome = nome;
        Grimorio = new Grimorio(); 
        Ferramentas = ferramentas; 
    }
}

class Program
{
    static void Main(string[] args)
    {
       
        List<Ferramenta> ferramentas = new List<Ferramenta>
        {
            new Ferramenta("Lanterna"),
            new Ferramenta("Capacete"),
            new Ferramenta("Mapa Antigo")
        };

        Maga frieren = new Maga("Frieren", ferramentas);

        frieren.Grimorio.AdicionarFeitico(new Feitico("Bola de Fogo"));
        frieren.Grimorio.AdicionarFeitico(new Feitico("Escudo de Gelo"));

        Console.WriteLine("Maga: " + frieren.Nome);
        frieren.Grimorio.ListarFeiticos();

        Console.WriteLine("\nFerramentas de Sobrevivência:");
        foreach (var ferramenta in frieren.Ferramentas)
        {
            Console.WriteLine("- " + ferramenta.Nome);
        }
    }
}
