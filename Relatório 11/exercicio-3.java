import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class Main {
    public static void main(String[] args) {

        Alienigena et = new Alienigena("Et de Varginha");
        EspiritoYoukai esp = new EspiritoYoukai("Espirito da Amizade");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos(); 

        mapa.registrar("Varginha", et);
        mapa.registrar("Mlp Reino", esp);

        mapa.investigar("Varginha");
        mapa.investigar("Mlp Reino");
        mapa.investigar("Inatel");
    }
}

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {

  private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar(){
        System.out.println("Olá, Sou " + nome + "! Gosto de passear pela cidade.");
    }

    //para resolver erro de concatenação --> está no IA_REPORT
    @Override
    public String toString() {
        return nome;
    }

}

class EspiritoYoukai implements Sobrenatural {

  private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar(){
        System.out.println("Olá, Sou " + nome + "! Gosto de vagar nesse mundo.");
    }

    //para resolver erro de concatenação --> está no IA_REPORT
    @Override
    public String toString() {
        return nome;
    }

}


class MapaDeAvistamentos{

    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        this.avistamentos.put(local, ser);
        System.out.println("[Registro] Local: " + local + "| Ser: " + ser);
    }

    public void investigar(String local) {
    
    Sobrenatural ser = this.avistamentos.get(local);

      if (ser == null) {
        System.out.println("O local '" + local + "' está tranquilo. Nenhum ser avistado.");
      }

      else {
        System.out.print("[" + local + "] ");
        ser.manifestar();
      }
    }

}
