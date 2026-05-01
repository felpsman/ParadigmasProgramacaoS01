class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(obra)
    raise NotImplementedError, "#{self.class} deve implementar tocar_partitura"
  end
end
class Pianista < Musico
  def tocar_partitura(obra)
    puts "#{nome} toca #{obra} no piano com precisão e emoção."
  end
end

class Violinista < Musico
  def tocar_partitura(obra)
    puts "#{nome} executa #{obra} no violino com leveza e intensidade."
  end
end
class Maestro
  attr_accessor :musicos

  def initialize(musicos = [])
    @musicos = musicos
  end

  def iniciar_concerto(obra)
    puts "\n--- Iniciando concerto: #{obra} ---"
    @musicos.each do |m|
      m.tocar_partitura(obra)
    end
  end

  def ajustar_postura(estado)
    @musicos.map do |m|
      "#{m.nome} está em ritmo #{estado}!"
    end
  end
end
puts "\n--- ORQUESTRA ---"

kosei = Pianista.new("Kosei Arima", "Piano")
kaori = Violinista.new("Kaori Miyazono", "Violino")

maestro = Maestro.new([kosei, kaori])

obra = "Ballade No.1"

maestro.iniciar_concerto(obra)

puts "\n--- Ajuste de Postura ---"
posturas = maestro.ajustar_postura("Allegro")
posturas.each { |p| puts p }