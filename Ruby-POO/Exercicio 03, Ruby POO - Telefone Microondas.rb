
class MicroondasUnidade
  def aquecer_por(segundos)
    puts "Aquecendo por #{segundos} segundos..."
    puts "Micro-ondas pronto!"
  end
end

class DMail
  attr_reader :conteudo, :hora_envio

  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end

  def to_s
    "D-Mail: '#{@conteudo}' enviado às #{@hora_envio}"
  end
end

class TelefoneDeMicroondas
  def initialize
    
    @unidade = MicroondasUnidade.new
    
    @dmails = []
  end

  def enviar_dmail
    puts "\nDigite o conteúdo do D-Mail:"
    conteudo = gets.chomp

    puts "Digite o horário de envio (ex: 10:30):"
    hora_envio = gets.chomp

    puts "Quantos segundos aquecer?"
    segundos = gets.chomp.to_i

    @unidade.aquecer_por(segundos)

    novo_dmail = DMail.new(conteudo, hora_envio)
    @dmails << novo_dmail

    puts "D-Mail enviado com sucesso!"
  end

  def listar_dmails(horario_corte)
    puts "\nD-Mails enviados após #{horario_corte}:"
    posteriores = @dmails.select { |dmail| dmail.hora_envio > horario_corte }

    if posteriores.empty?
      puts "Nenhum D-Mail encontrado após #{horario_corte}."
    else
      posteriores.each { |dmail| puts dmail }
    end
  end
end

telefone = TelefoneDeMicroondas.new

loop do
  puts "\n=== MENU D-MAIL ==="
  puts "1. Enviar D-Mail"
  puts "2. Listar D-Mails após um horário"
  puts "3. Sair"
  print "Escolha uma opção: "
  opcao = gets.chomp

  case opcao
  when "1"
    telefone.enviar_dmail
  when "2"
    puts "\nDigite o horário de corte (ex: 09:00):"
    corte = gets.chomp
    telefone.listar_dmails(corte)
  when "3"
    puts "Encerrando..."
    break
  else
    puts "Opção inválida!"
  end
end
