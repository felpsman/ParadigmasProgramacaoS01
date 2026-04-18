using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
public class CombatenteAliado
{
    // atributos privados
    private string nome;
    private string linhagem;
    private string patente;

    // construtor
    public CombatenteAliado(string nome, string linhagem, string patente)
    {
        this.nome = nome;
        this.linhagem = linhagem;
        this.patente = patente;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"{nome} | {linhagem} | {patente}");
    }
}

// MAIN
CombatenteAliado c1 = new CombatenteAliado("Aragorn", "Humano", "Capitao");
CombatenteAliado c2 = new CombatenteAliado("Gimli", "Anao", "Guerreiro");
CombatenteAliado c3 = new CombatenteAliado("Legolas", "Elfo", "Arqueiro");

c1.ApresentarUnidade();
c2.ApresentarUnidade();
c3.ApresentarUnidade();