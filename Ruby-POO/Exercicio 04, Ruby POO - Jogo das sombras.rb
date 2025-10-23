
module Rastreavel
  def obter_localizacao(hora)
    "Localização registrada às #{hora}: #{@localizacao}"
  end
end


module Perigoso
  def calcular_risco
    raise NotImplementedError, "O método calcular_risco deve ser implementado!"
  end
end


class Participante
  attr_accessor :nome, :localizacao

  def initialize(nome)
    @nome = nome
    @localizacao = "Desconhecida"
  end

  def to_s
    "#{@nome} - Localização: #{@localizacao}"
  end
end


class Detetive < Participante
  include Rastreavel

  def investigar
    "#{@nome} está investigando as sombras..."
  end
end


class MestreDoCrime < Participante
  include Rastreavel
  include Perigoso

  def calcular_risco
    hora = Time.now.hour
    risco = hora >= 18 ? "Alto" : "Moderado"
    "Nível de risco de #{@nome}: #{risco}"
  end
end


class Cenario
  def initialize
    @participantes = []
  end

  def adicionar_participante(participante)
    @participantes << participante
  end

  def listar_participantes
    puts "\nParticipantes no cenário:"
    @participantes.each { |p| puts " - #{p}" }
  end

  def identificar_ameacas
  
    ameacas = @participantes.select { |p| p.respond_to?(:calcular_risco) }

    puts "\nAlvos perigosos identificados:"
    if ameacas.empty?
      puts "Nenhuma ameaça detectada."
    else
      ameacas.each { |a| puts a.calcular_risco }
    end
    ameacas
  end
end


puts "Digite a localização atual de Sherlock:"
local_sherlock = gets.chomp

puts "Digite a localização atual de Moriarty:"
local_moriarty = gets.chomp

sherlock = Detetive.new("Sherlock Holmes")
sherlock.localizacao = local_sherlock

moriarty = MestreDoCrime.new("Moriarty")
moriarty.localizacao = local_moriarty

cenario = Cenario.new
cenario.adicionar_participante(sherlock)
cenario.adicionar_participante(moriarty)

cenario.listar_participantes
puts
puts sherlock.obter_localizacao("10:30")
puts moriarty.obter_localizacao("10:31")

cenario.identificar_ameacas
