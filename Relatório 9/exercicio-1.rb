 class CoquetelAfterlife
    attr_reader :nome
  
    def initialize(nome, preco)
      @nome = nome
      @_preco = preco 
    end
  
    def preco
      @_preco
    end
  
    def preco=(valor)
      if valor >= 5 && valor <= 200
        @_preco = valor
      else
        puts "Preço Inválido!"
      end
    end
  
    def ficha
      "#{@nome} : R$ #{@_preco}"
    end
    
  end
 
  class DrinkDeLenda < CoquetelAfterlife
    attr_reader :lenda
  
    def initialize(nome, preco, lenda)
      super(nome, preco)
      @lenda = lenda
    end
  
    def ficha
      "#{super} - Lenda Homenageada: #{@lenda}"
    end
  end
  
  # --- MAIN ---
  
  skol = CoquetelAfterlife.new("Skolzinha", 7.99)
  limoneto = DrinkDeLenda.new("Limoneto", 8.99, "Mônica do Limoeiro")
  brahma = DrinkDeLenda.new("Brahma Geladinha", 6.99, "Vera Verão")
  
  drinks = [skol, limoneto, brahma]
  
  drinks.each { |d| puts d.ficha }
  
  puts "\nDefinindo com o Setter:"
  limoneto.preco = 500
  puts limoneto.ficha
  limoneto.preco = 80
  puts limoneto.ficha
  
  #skol.nome = "baby shark"
  #erro no NoMethodError
