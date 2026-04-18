using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
public class CombatenteAliado
public class ReliquiaMagica
{
    public string NomeItem { get; set; }

    public ReliquiaMagica(string nome)
    {
        NomeItem = nome;
    }
}

public class BauDeReliquias
{
    private List<ReliquiaMagica> reliquias = new List<ReliquiaMagica>();

    public void GuardarItem(ReliquiaMagica item)
    {
        reliquias.Add(item);
    }

    public void MostrarReliquias()
    {
        foreach (var r in reliquias)
        {
            Console.WriteLine($"Relíquia: {r.NomeItem}");
        }
    }
}

public class ItemDeAcampamento
{
    public string Nome { get; set; }

    public ItemDeAcampamento(string nome)
    {
        Nome = nome;
    }
}

public class Maga
{
    public string Nome { get; set; }

    // COMPOSIÇÃO
    public BauDeReliquias Bau { get; private set; }

    // AGREGAÇÃO
    public List<ItemDeAcampamento> Itens { get; set; }

    public Maga(string nome, List<ItemDeAcampamento> itens)
    {
        Nome = nome;
        Bau = new BauDeReliquias();
        Itens = itens;
    }
}

// MAIN
var itens = new List<ItemDeAcampamento>
{
    new ItemDeAcampamento("Saco de Dormir"),
    new ItemDeAcampamento("Pote de Cozinha")
};

Maga frieren = new Maga("Frieren", itens);

frieren.Bau.GuardarItem(new ReliquiaMagica("Anel de Prata"));
frieren.Bau.GuardarItem(new ReliquiaMagica("Grimório Antigo"));

Console.WriteLine("Itens de acampamento:");
foreach (var item in frieren.Itens)
{
    Console.WriteLine(item.Nome);
}