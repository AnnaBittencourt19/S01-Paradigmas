class MicroondasTelefone
  def ativar
    puts "Banana Verde detectada!O Microondas-Telefone está operando!"
  end
end

class Relatorio
  attr_accessor :nome_projeto, :autor

  def initialize(nome_projeto, autor)
    @nome_projeto = nome_projeto
    @autor = autor
  end
end

class LabRegistro
  def initialize
    @microondas = MicroondasTelefone.new
    @registros = []
  end

  def adicionar_registro(nome_projeto, autor)
    @microondas.ativar

    relatorio = Relatorio.new(nome_projeto, autor)
    @registros << relatorio
  end

  def listar_experimentos
    puts "Experimentos registrados:"

    @registros.each do |relatorio|
      puts "Projeto: #{relatorio.nome_projeto} | Autor: #{relatorio.autor}"
    end
  end
end

laboratorio = LabRegistro.new

laboratorio.adicionar_registro("KRR", "Anna")
laboratorio.adicionar_registro("CERN Hack", "Darwin")
laboratorio.adicionar_registro("D-Mail", "Neusa")

laboratorio.listar_experimentos