 module Depoente
    def depor
      raise NotImplementedError, "#{self.class} deve implementar depor"
    end
 end
  
 module Detivel
    attr_reader :nome

    def ser_detido
      puts "#{@nome} foi levada pela Scotland Yard!"
    end
 end 
 


  class Envolvido
    attr_reader :nome
  
    def initialize(nome)
      @nome = nome
    end
    
  end

  class TestemunhaOcular < Envolvido

    include Depoente

    def depor
        puts "#{@nome} viu marcas de sangue pelo chão e logo observou Maria Joaquina e Jaime saindo do local."
    end

  end

  class SuspeitoDoCrime < Envolvido

    include Depoente
    include Detivel

    def depor
        puts "#{@nome} disse que não estava no local do assassinato."
    end
    
  end

  class Investigacao
  
    def initialize(nome)
        @nome = nome
        @envolvidos = []
    end

    def registrar(envolvido)
      @envolvidos << envolvido;
    end

    def ouvir_todos
        puts "Caso: #{@nome}."
        @envolvidos.each { |e| e.depor }
    end

    def acionar_scotland_yard
        scotland = @envolvidos.select{ |e| e.respond_to?(:ser_detido) }
        scotland.each {|s| s.ser_detido}
    end
  
  end

  
  # --- MAIN ---
  
  valeria = TestemunhaOcular.new("Valéria")
  
  jaime = SuspeitoDoCrime.new("Jaime")
  mj = SuspeitoDoCrime.new("Maria Joaquina")

  inv = Investigacao.new("A Morte do Cirilo")

  inv.registrar(valeria)
  inv.registrar(jaime)
  inv.registrar(mj)

  inv.ouvir_todos
  inv.acionar_scotland_yard
  
  
