using System;
using System.Collections.Generic;

namespace ArmazenamentoMagico
{
    class Feitico
    {
        public string Nome { get; set; }
        public string Tipo { get; set; }

        public Feitico(string nome, string tipo)
        {
            Nome = nome;
            Tipo = tipo;
        }
    }

    class Grimorio
    {
        private List<Feitico> feiticos;

        public Grimorio()
        {
            feiticos = new List<Feitico>();
        }

        public void AdicionarFeitico(Feitico f)
        {
            feiticos.Add(f);
        }

        public void ListarFeiticos()
        {
            Console.WriteLine("\n Feiticos no Grimorio:");
            foreach (var f in feiticos)
            {
                Console.WriteLine($"- {f.Nome} ({f.Tipo})");
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
        public List<Ferramenta> Ferramentas { get; set; } 

        public Maga(string nome, List<Ferramenta> ferramentas)
        {
            Nome = nome;
            Grimorio = new Grimorio();
            Ferramentas = ferramentas; 
        }

        public void MostrarFerramentas()
        {
            Console.WriteLine($"\n Ferramentas de {Nome}:");
            foreach (var f in Ferramentas)
            {
                Console.WriteLine($"- {f.Nome}");
            }
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
        
            var ferramentas = new List<Ferramenta>
            {
                new Ferramenta("Lanterna"),
                new Ferramenta("Mapa Antigo"),
                new Ferramenta("Corda Magica")
            };

            Maga frieren = new Maga("Frieren", ferramentas);

            
            frieren.Grimorio.AdicionarFeitico(new Feitico("Raio Arcano", "Ataque"));
            frieren.Grimorio.AdicionarFeitico(new Feitico("Escudo Etereo", "Defesa"));
            frieren.Grimorio.AdicionarFeitico(new Feitico("Luz de Cura", "Suporte"));

            frieren.Grimorio.ListarFeiticos();
            frieren.MostrarFerramentas();

            Console.WriteLine("\n Frieren esta pronta para a jornada!");
        }
    }
}

