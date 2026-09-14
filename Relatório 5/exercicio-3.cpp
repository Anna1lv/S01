#include <iostream>
using namespace std;


int main() {
    float capmax, cargaatual = 0, espaco = 0, peso = 0, pesor=0;
    int op = 0;

    cout<< "Informe a capacidade maxima de carga do drone (kg): ";
    cin>> capmax;

    while (op != 4){
        cout<<"=== SISTEMA DE CARGA DO DRONE ==="<<endl;
        cout<<"1. Verificar Carga"<<endl;
        cout<<"2. Carregar Pacote"<<endl;
        cout<<"3. Descarregar Pacote"<<endl;
        cout<<"4. Encerrar Operacao"<<endl;

        cout<<"Escolha uma opcao:"<<endl;
        cin>>op;

        if(op == 1){
            cout<<"Carga Atual: "<<cargaatual<<" kg / "<<capmax<<" kg"<<endl;
            espaco = capmax - cargaatual;
            cout<<"Espaco Disponivel: "<<espaco<<" kg"<<endl;
        }
        else if(op == 2){
            cout<<"Digite o peso do pacote a ser carregado (kg): ";
            cin>>peso;

            if((cargaatual + peso) <= capmax ){
                cargaatual = cargaatual + peso;
                cout<<"Pacote adicionado com sucesso!"<<endl;
            }
            else{
                cout<<"Alerta: Peso máximo de decolagem excedido! Operação cancelada."<<endl;
            }
        }
        else if (op == 3){
            cout<<"Digite o peso do pacote a ser removido (kg): ";
            cin>>pesor;

            if((cargaatual - pesor) >= 0 ){
                cargaatual = cargaatual - pesor;
                cout<<"Pacote removido com sucesso!"<<endl;
            }
            else{
                cout<<"Alerta: não é permitido remover mais peso do que o que já está carregado."<<endl;
            }
    
        }
        else if (op == 4){
            cout<<"Encerrando sistema de telemetria...";
        }
    }
    return 0;
}
