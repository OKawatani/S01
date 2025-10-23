
class Drink
  attr_reader :nome

  def initialize(nome, preco_base)
    @nome = nome
    self.preco_base = preco_base  
  end

  def preco_base
    @preco_base
  end

  def preco_base=(valor)
    if valor > 0
      @preco_base = valor
    else
      raise "O preço base deve ser positivo!"
    end
  end

  def preco_final
    @preco_base
  end

  def to_s
    "Drink: #{@nome} | Preço Base: $#{@preco_base}"
  end
end


class DrinkLenda < Drink
  def initialize(nome, preco_base, anos_desde_criacao)
    super(nome, preco_base)
    @anos_desde_criacao = anos_desde_criacao
  end

  def preco_final
    @preco_base + (5 * @anos_desde_criacao)
  end

  def to_s
    "Drink Lenda: #{@nome} | Anos: #{@anos_desde_criacao} | Preço Final: $#{preco_final}"
  end
end


puts "Digite o nome do drink:"
nome = gets.chomp

puts "Digite o preço base do drink:"
preco = gets.chomp.to_f

puts "Digite quantos anos o drink tem:"
anos = gets.chomp.to_i

drink_lenda = DrinkLenda.new(nome, preco, anos)
puts
puts drink_lenda
