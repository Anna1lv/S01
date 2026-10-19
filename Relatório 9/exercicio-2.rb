 class Instrumentista
    attr_reader :nome, :instrumento
  
    def initialize(nome, instrumento)
      @nome = nome
      @instrumento = instrumento 
    end
  
    def interpretar(peca)
        raise NotImplementedError, "#{self.class} deve implementar o método interpretar"
    end
    
  end
 
  class Solista < Instrumentista
  
    def interpretar(peca)
      puts "#{@nome} | #{@instrumento} | #{peca}"
      puts "Conduzirá a melodia principal."
    end
  end

  class Acompanhador < Instrumentista
  
    def interpretar(peca)
      puts "#{@nome} | #{@instrumento} | #{peca}"
      puts "Acompanhará o ritmo do Solista."
    end
  end

  class Regente
  
    def initialize(nome)
        @nome = nome
        @orquestra = []
    end

    def convocar(instrumentista)
      @orquestra << instrumentista;
    end

    def reger(peca)
       puts "Sou o #{@nome} e irei reger a peça #{peca}!!"
       @orquestra.each { |o| o.interpretar(peca) }
    end

    def escalacao
       @orquestra.map { |o| "#{o.class}: #{o.nome}" }
    end
  
  end
  
  # --- MAIN ---
  
  maria = Solista.new("Maria", "Violino")
  jose = Acompanhador.new("Jose", "Piano")
  joao = Regente.new("Joao")

  joao.convocar(maria)
  joao.convocar(jose)

  joao.reger("Titanic")

  puts "\n--- Escalação ---"
  joao.escalacao.each { |musico| puts musico }

  #inst = Instrumentista.new("Carlos", "Flauta")
  #inst.interpretar("Peça Teste")
  #Instrumentista deve implementar o método interpretar (NotImplementedError)
  
