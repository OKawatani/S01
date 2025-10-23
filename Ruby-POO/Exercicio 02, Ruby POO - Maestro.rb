
class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "O método tocar_partitura deve ser implementado nas subclasses!"
  end

  def to_s
    "#{@nome} (#{@instrumento})"
  end
end

class Pianista < Musico
  def initialize(nome)
    super(nome, "Piano")
  end

  def tocar_partitura(peca)
    puts "#{@nome} toca uma melodia delicada de '#{peca}' ao piano."
  end
end

class Violinista < Musico
  def initialize(nome)
    super(nome, "Violino")
  end

  def tocar_partitura(peca)
    puts "#{@nome} executa com paixão a peça '#{peca}' ao violino."
  end
end

class Maestro
  def initialize(nome, musicos)
    @nome = nome
    @musicos = musicos
  end

  def iniciar_ensaio(peca)
    puts "\nMaestro #{@nome} inicia o ensaio da peça '#{peca}'!"
    @musicos.each { |musico| musico.tocar_partitura(peca) }
  end

  def mudar_foco(estado)
    puts "\nMudando o foco dos músicos..."
    mensagens = @musicos.map { |musico| "#{musico.nome} agora está #{estado}!" }
    mensagens.each { |msg| puts msg }
    mensagens
  end
end

pianista = Pianista.new("Kousei")
violinista = Violinista.new("Kaori")

maestro = Maestro.new("Takahashi", [pianista, violinista])

puts "Digite o nome da peça a ser tocada:"
peca = gets.chomp

maestro.mudar_foco("Concentrado")
maestro.iniciar_ensaio(peca)
