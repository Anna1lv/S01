#include <iostream>
#include <string>
using namespace std;

class LinkSocial {

private:
    string nome;
    string arcana;
    int rank;

public:
    LinkSocial() {
        rank = 0;
    }

    void setNome(string n) {
        nome = n;
    }

    void setArcana(string a) {
        arcana = a;
    }

    void setRank(int r) {
        rank = r;
    }

    string getNome() {
        return nome;
    }

    string getArcana() {
        return arcana;
    }

    int getRank() {
        return rank;
    }

    void subirRank() {
        rank = rank + 1;
    }
};

int main() {
   
    LinkSocial social1;

    social1.setNome("Ryuji Sakamoto");
    social1.setArcana("O Carro");
    social1.setRank(1);

    cout << ">> Link Social Criado <<" << endl;
    cout << "Nome: " << social1.getNome() << endl;
    cout << "Arcana: " << social1.getArcana() << endl;
    cout << "Rank Inicial: " << social1.getRank() << endl;

    social1.subirRank();

    cout << "Após Subir de Rank:" << endl;
    cout << "Novo Rank de " << social1.getNome() << ": " << social1.getRank() << endl;

    return 0;
}
