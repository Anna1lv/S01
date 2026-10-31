import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class Main {
    public static void main(String[] args) {

        Slime amoeba = new Slime("Amoeba Rosa");
        Mandragora mandra = new Mandragora("Raíz Forte");

        Cozinheiro joao = new Cozinheiro("João", "Inox"); 

        joao.adicionarIngrediente(amoeba);
        joao.adicionarIngrediente(mandra);

        joao.servirBanquete();
    }
}

abstract class Monstro{

    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();

}

class Slime extends Monstro {

    public Slime(String nome) {
        super(nome);
    }
    
    @Override
    public String receita() {
        // ideia de receita da IA tava melhor
        return "Tempura crocante de slime ao molho ácido!";
    }

}

class Mandragora extends Monstro {

    public Mandragora(String nome) {
        super(nome);
    }
    
    @Override
    public String receita() {
       return "Sopa cozida de raízes mágicas com legumes do calabouço!";
    }

}

class Panela{

  private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }

}

class Cozinheiro{

  private String nome;
  private Panela panela;
  private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete(){
        System.out.println("Nome Cozinheiro: " + nome + " | Material da Panela: " +panela.getMaterial());
        for (Monstro monstro : ingredientes){
          System.out.println("Ingrediente: " + monstro.getNome() + " | Modo de Preparo: " +monstro.receita());
        }
    }
}

//composição: panela que é criada (é composta) dentro do cozinheiro.
//agregação: os monstrinhos que também são usados pelo cozinheiro mas existem fora dele.
