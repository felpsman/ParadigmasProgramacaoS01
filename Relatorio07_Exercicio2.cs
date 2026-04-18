using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
public class CombatenteAliado
public class Pokemon
{
    public string Especie { get; set; }

    public virtual void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} realiza um ataque genérico.");
    }
}

public class TipoFogo : Pokemon
{
    public override void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} lança uma rajada de chamas!");
    }
}

public class TipoAgua : Pokemon
{
    public override void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} dispara uma bolha de água!");
    }
}

// MAIN
List<Pokemon> lista = new List<Pokemon>();

lista.Add(new TipoFogo { Especie = "Scorbunny" });
lista.Add(new TipoAgua { Especie = "Greninja" });

foreach (var p in lista)
{
    p.ExecutarMovimento();
}