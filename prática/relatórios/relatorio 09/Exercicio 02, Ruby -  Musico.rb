class Musico
  attr_accessor :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(obra)
    raise NotImplementedError, "Esse método precisa ser implementado na classe filha"
  end
end

class Pianista < Musico
  def tocar_partitura(obra)
    puts "#{@nome} toca '#{obra}' no piano com precisão e emoção"
  end
end

class Violinista < Musico
  def tocar_partitura(obra)
    puts "#{@nome} toca '#{obra}' no violino com intensidade e leveza"
  end
end

class Maestro
  def initialize
    @musicos = []
  end

  def adicionar_musico(musico)
    @musicos << musico
  end

  def iniciar_concerto(obra)
    puts "O concerto de '#{obra}' começou"

    @musicos.each do |musico|
      musico.tocar_partitura(obra)
    end
  end

  def ajustar_postura(estado)
    @musicos.map do |musico|
      "#{musico.nome} está em ritmo #{estado}!"
    end
  end
end

maestro = Maestro.new

pianista = Pianista.new("Kosei Arima", "Piano")
violinista = Violinista.new("Kaori Miyazono", "Violino")

maestro.adicionar_musico(pianista)
maestro.adicionar_musico(violinista)

maestro.iniciar_concerto("Spring Sonata")

status = maestro.ajustar_postura("Allegro")

status.each do |frase|
  puts frase
end