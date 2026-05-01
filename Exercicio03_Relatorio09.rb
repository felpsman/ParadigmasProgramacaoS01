class MicroondasTelefone
  def ativar
    puts "Banana Verde detectada! O Microondas-Telefone está operando!"
  end
end
class Relatorio
  attr_reader :nome_projeto, :autor

  def initialize(nome_projeto, autor)
    @nome_projeto = nome_projeto
    @autor = autor
  end
end
class LabRegistro
  def initialize
    @microondas = MicroondasTelefone.new
    @relatorios = []
  end

  def adicionar_registro(nome_projeto, autor)
    @microondas.ativar
    relatorio = Relatorio.new(nome_projeto, autor)
    @relatorios << relatorio

    puts "Registro '#{nome_projeto}' adicionado com sucesso!"
  end
  def listar_experimentos
    puts "\n--- EXPERIMENTOS REGISTRADOS ---"

    @relatorios.each do |r|
      puts "Projeto: #{r.nome_projeto} | Autor: #{r.autor}"
    end
  end
end
puts "\n--- LABORATÓRIO DO OKABE ---"

lab = LabRegistro.new

lab.adicionar_registro("KRR", "Okabe Rintaro")
lab.adicionar_registro("CERN Hack", "Kurisu Makise")
lab.adicionar_registro("D-Mail Test", "Mayuri Shiina")

lab.listar_experimentos