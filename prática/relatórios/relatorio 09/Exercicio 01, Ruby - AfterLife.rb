class BebidaAfterlife
  attr_accessor :nome

  def initialize(nome, custo_base)
    @nome = nome
    self.custo_base = custo_base
  end

  def custo_base
    @custo_base
  end

  def custo_base=(valor)
    if valor > 0
      @custo_base = valor
    else
      puts "O custo precisa ser maior que zero"
    end
  end

  def preco_total
    @custo_base
  end

  def to_string
    "Bebida: #{@nome} | Valor Final: $#{preco_total}"
  end
end

class DrinkIconico < BebidaAfterlife
  attr_accessor :nivel_notoriedade

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
drinks = [
  DrinkIconico.new("Johnny Silverhand", 40, 5),
  DrinkIconico.new("Jackie Welles", 35, 4),
  DrinkIconico.new("Cyberpunk 2077", 45, 6)
]
drinks.each do |drink|
  puts drink.to_string
end