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
        Console.WriteLine($"{Nome} se move de forma misteriosa...");
    }
}

class Zumbi : MonstroSombrio
{
    public Zumbi(string nome) : base(nome) { }

    
    public override void Mover()
    {
        Console.WriteLine($"{Nome} (Zumbi) anda lentamente, arrastando os pés...");
    }
}

class Espectro : MonstroSombrio
{
    public Espectro(string nome) : base(nome) { }


    public override void Mover()
    {
        Console.WriteLine($"{Nome} (Espectro) desliza rapidamente pelo ar, quase invisível!");
    }
}

class Program
{
    static void Main()
    {
        
        MonstroSombrio[] horda = new MonstroSombrio[]
        {
            new Zumbi("Zumbi Lento"),
            new Espectro("Espectro Sombrio")
        };

        
        foreach (MonstroSombrio monstro in horda)
        {
            monstro.Mover();
        }
    }
}

