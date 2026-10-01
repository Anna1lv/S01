#include <iostream>
#include <string>
using namespace std;

class Banda {
protected:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

public:
    Banda(string n, int i, float p, int e) 
        : nome(n), integrantes(i), potenciaSom(p), energia(e) {}

    void duelar(Banda &rival) {
        cout << "Senhoras e senhores..." << nome << " ACABA de entrar no palco para duelar contra " << rival.nome << "!!!!!" << endl;
        
        rival.energia -= potenciaSom;

        cout << "EITA! potencia de som de " << nome << " (" << potenciaSom << ") reduziu a energia de " << rival.nome << "!" << endl << endl;
    }

    void exibirStatus() {
        cout << "Status: " << nome << endl;
        cout << "Integrantes: " << integrantes << endl;
        cout << "Potencia de Som: " << potenciaSom << endl;
        cout << "Energia da Plateia: " << energia << endl << endl;
    }
};

int main() {

    Banda banda1("Chase Atlantic", 5, 40.0f, 100000);
    Banda banda2("Maroon 5", 5, 30.0f, 100);

    cout << ">> STATUS INICIAL <<" << endl;
    cout << ">> RESUMO DA ÓPERA (ou melhor, duelo) <<" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    cout << ">> DUELO DE BANDAS <<" << endl;
    banda1.duelar(banda2);

    cout << ">> STATUS APÓS O CONFRONTO <<" << endl;
    cout << ">> RESUMO DA ÓPERA (ou melhor, duelo) <<" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    return 0;
}
