using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
public class CombatenteAliado
public abstract class AbominacaoCosmica
{
    public string Nome { get; set; }

    public AbominacaoCosmica(string nome)
    {
        Nome = nome;
    }

    public abstract void Manifestar();
}

public class Shoggoth : AbominacaoCosmica
{
    public Shoggoth(string nome) : base(nome) { }

    public override void Manifestar()
    {
        Console.WriteLine($"{Nome}: massa de protoplasma se arrasta caoticamente!");
    }
}

public class CacadorAlado : AbominacaoCosmica
{
    public CacadorAlado(string nome) : base(nome) { }

    public override void Manifestar()
    {
        Console.WriteLine($"{Nome}: criatura voa mergulhando dos céus sombrios!");
    }
}

// MAIN
List<AbominacaoCosmica> criaturas = new List<AbominacaoCosmica>();

criaturas.Add(new Shoggoth("Shoggoth"));
criaturas.Add(new CacadorAlado("Morte Alada"));

foreach (var c in criaturas)
{
    c.Manifestar();
}