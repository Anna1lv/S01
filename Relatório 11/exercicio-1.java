import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class Main {
    public static void main(String[] args) {
        // esse filme é uma belezinha
        Morador howl = new Mago("Howl", "Feitiço Vira Corvo");
        Morador calcifer = new DemonioDoFogo("Calcifer Bebezinho");

        howl.apresentar();
        calcifer.apresentar();

        //Morador annalivia = new Morador("livoca");
        //erro pois morador é abstrato e nao pode ser instanciado
        
    }
}

abstract class Morador {

    private String nome;

    public Morador(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void apresentar();

}

class Mago extends Morador {

    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }
    

    @Override
    public void apresentar() {
        System.out.println("Olá! Sou " + getNome() + "! | Feitiço: " + feitico);
    }

}

class DemonioDoFogo extends Morador {

    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Olá! Sou " + getNome() + "! Faço o Castelo Andar");
    }

}
