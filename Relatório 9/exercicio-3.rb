 class PhoneWave
    
    def enviar_dmail(mensagem)
        puts "#{mensagem}"
        puts "Atenção! Sua mensagem foi enviada para o passado!"
    end
    
  end

  class MembroDoLab
    attr_reader :numero, :nome
  
    def initialize(numero, nome)
      @numero = numero
      @nome = nome
    end
    
  end

  class LaboratorioDeGadgets 

    def initialize
        @phonewave = PhoneWave.new
        @membros = []
    end

    def admitir(membro)
        @membros << membro
        puts "#{membro.numero} - #{membro.nome}"
    end
  
    def experimento(mensagem)

        puts "\n--- Iniciando Experimento ---"

        @membros.each do |m|
            puts "#{m.numero} - #{m.nome}"
        end

        @phonewave.enviar_dmail(mensagem)
    end
  
  end

  
  # --- MAIN ---
  
  maria = MembroDoLab.new(001, "Maria")
  jose = MembroDoLab.new(002, "Jose")

  lab = LaboratorioDeGadgets.new

  lab.admitir(maria)
  lab.admitir(jose)

  lab.experimento("Olá isso é um teste")

  #composição acontece no phonewave dentro de LaboratorioDeGadgets pois o phonewave só existe la dentro.
  # a agregação acontece entre os membros do lab e o lab pois os membros são independentes e existem fora do lab.
  
