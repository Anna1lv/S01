import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class Main {
    public static void main(String[] args) {
        ItemDoCardapio bololimao = new ItemDoCardapio("Bolo de Limão", 14.99);
        ItemDoCardapio bololaranja = new ItemDoCardapio("Bolo de Laranja", 15.99);

        ComboLeblanc combolanche = new ComboLeblanc("Lanche com Fritas", 39.99);

        CafeLeblanc cafe = new CafeLeblanc();

        cafe.adicionar(bololimao);
        cafe.adicionar(bololaranja);
        cafe.adicionar(combolanche);

        cafe.mostrarCardapio();
        
    }
}

class ItemDoCardapio {

    private String nome;
    private double preco;

    public ItemDoCardapio(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public double precoFinal(){
       return preco;
    }

}

class ComboLeblanc extends ItemDoCardapio {

    public ComboLeblanc(String nome, double preco) {
        super(nome, preco);
    }
    

    @Override
    public double precoFinal() {
        return getPreco() * 0.9;
    }

}

class CafeLeblanc {

    private ArrayList<ItemDoCardapio> cardapio;

    public CafeLeblanc() {
        this.cardapio = new ArrayList<>();
    }

    public void adicionar(ItemDoCardapio item) {
        cardapio.add(item);
    }

    public void mostrarCardapio(){
        for (ItemDoCardapio item : cardapio){
          System.out.println("[Cardápio] " + item.getNome() + " R$: " +item.precoFinal());
        }
    }

}
