module Localizavel
  def local_atual
    puts "#{@nome} está em #{@localizacao}"
  end
end

module Perigoso
  def exibir_ameaca
    puts "Alerta: #{@nome} pode representar perigo na cena"
  end
end

class Pessoa
  attr_accessor :nome

  def initialize(nome)
    @nome = nome
  end
end

class Testemunha < Pessoa
  include Localizavel

  def initialize(nome, localizacao)
    super(nome)
    @localizacao = localizacao
  end
end

class Suspeito < Pessoa
  include Localizavel
  include Perigoso

  def initialize(nome, localizacao)
    super(nome)
    @localizacao = localizacao
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
    puts "Pessoas presentes na cena:"

    @pessoas.each do |pessoa|
      puts "#{pessoa.class}: #{pessoa.nome}"
      pessoa.local_atual
    end
  end

  def identificar_perigosos
    @pessoas.select do |pessoa|
      pessoa.respond_to?(:exibir_ameaca)
    end
  end
end

cena = CenaDoCrime.new

testemunha = Testemunha.new("Marilyn Manson", "entrada da Baker Street")
suspeito1 = Suspeito.new("Ozzy Osbourne", "biblioteca")
suspeito2 = Suspeito.new("Dio", "janela dos fundos")

cena.adicionar_pessoa(testemunha)
cena.adicionar_pessoa(suspeito1)
cena.adicionar_pessoa(suspeito2)

cena.listar_todos

puts "Pessoas identificadas como perigosas:"

perigosos = cena.identificar_perigosos

perigosos.each do |pessoa|
  pessoa.exibir_ameaca
end