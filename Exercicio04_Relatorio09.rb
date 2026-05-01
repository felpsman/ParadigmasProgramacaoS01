
module Localizavel
  def local_atual
    raise NotImplementedError, "#{self.class} deve implementar local_atual"
  end
end

module Perigoso
  def exibir_ameaca
    puts "⚠️ PERIGO: #{self.class} representa uma ameaça!"
  end
end

class Pessoa
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class Testemunha < Pessoa
  include Localizavel

  def initialize(nome, local)
    super(nome)
    @local = local
  end

  def local_atual
    puts "#{nome} foi vista em #{@local}."
  end
end

class Suspeito < Pessoa
  include Localizavel
  include Perigoso

  def initialize(nome, local)
    super(nome)
    @local = local
  end

  def local_atual
    puts "#{nome} está em #{@local}."
  end
end
class CenaDoCrime
  def initialize
    @pessoas = []
  end

  def adicionar_pessoa(pessoa)
    @pessoas << pessoa
  end

  def listar_todos
    puts "\n--- PESSOAS NA CENA ---"
    @pessoas.each do |p|
      puts "Nome: #{p.nome}"
      p.local_atual if p.respond_to?(:local_atual)
    end
  end

  def identificar_perigosos
    puts "\n--- SUSPEITOS PERIGOSOS ---"

    perigosos = @pessoas.select { |p| p.respond_to?(:exibir_ameaca) }

    perigosos.each do |p|
      puts "Nome: #{p.nome}"
      p.exibir_ameaca
    end
  end
end
puts "\n--- INVESTIGAÇÃO SHERLOCK HOLMES ---"

t1 = Testemunha.new("John Watson", "Baker Street")
s1 = Suspeito.new("James Moriarty", "Docas de Londres")
s2 = Suspeito.new("Irene Adler", "Teatro Real")

cena = CenaDoCrime.new

cena.adicionar_pessoa(t1)
cena.adicionar_pessoa(s1)
cena.adicionar_pessoa(s2)

cena.listar_todos

cena.identificar_perigosos
lab.adicionar_registro("KRR", "Okabe Rintaro")
lab.adicionar_registro("CERN Hack", "Kurisu Makise")
lab.adicionar_registro("D-Mail Test", "Mayuri Shiina")

lab.listar_experimentos