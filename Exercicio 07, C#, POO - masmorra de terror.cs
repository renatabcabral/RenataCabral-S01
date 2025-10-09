using System;

abstract class MonstroSombrio
{
    public string Nome { get; set; }

    public MonstroSombrio(string nome)
    {
        Nome = nome;
    }

    public virtual void Mover()
    {
        Console.WriteLine(Nome + " se move nas sombras...");
    }
}

class Zumbi : MonstroSombrio
{
    public Zumbi(string nome) : base(nome) { }

    public override void Mover()
    {
        Console.WriteLine(Nome + " anda lentamente, arrastando os pés...");
    }
}

class Espectro : MonstroSombrio
{
    public Espectro(string nome) : base(nome) { }

    public override void Mover()
    {
        Console.WriteLine(Nome + " desliza rapidamente pelo ar, emitindo um som assustador...");
    }
}

class Program
{
    static void Main(string[] args)
    {
        MonstroSombrio[] monstros = new MonstroSombrio[]
        {
            new Zumbi("Zumbi Lerdo"),
            new Espectro("Espectro Rápido")
        };

        foreach (MonstroSombrio monstro in monstros)
        {
            monstro.Mover();
        }
    }
}
