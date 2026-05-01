class BebidaAfterlife
  attr_reader :nome, :custo_base
  def initialize(nome, custo_base)
    @nome = nome
    @custo_base = custo_base
  end

  def preco_total
    @custo_base
  end

  def to_string
    "Bebida: #{@nome} | Valor Final: $#{preco_total}"
  end
end
class DrinkIconico < BebidaAfterlife
  attr_reader :nivel_notoriedade

  def initialize(nome, custo_base, nivel_notoriedade)
    super(nome, custo_base)
    @nivel_notoriedade = nivel_notoriedade
  end
  def preco_total
    @custo_base + (@nivel_notoriedade * 8)
  end

  def to_string
    "Drink Icônico: #{@nome} | Notoriedade: #{@nivel_notoriedade} | Valor Final: $#{preco_total}"
  end
end
puts "\n--- DRINKS DO AFTERLIFE ---"

drink1 = DrinkIconico.new("Blackout", 20, 5)
drink2 = DrinkIconico.new("Silverhand", 25, 8)
drink3 = DrinkIconico.new("Neon Dream", 18, 3)

drinks = [drink1, drink2, drink3]

drinks.each do |drink|
  puts drink.to_string
end