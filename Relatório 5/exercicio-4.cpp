#include <iostream>
using namespace std;
//nao inclui string pois nao foi utilizado em nenhum exercicio

int main() {
    int op = 0, f, c, ativa, inativa;
    float cap;
    // garantindo que iniciem com 0
    int matriz_solar[5][5] = {
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0}
    }; 

    while (op != 3){
        cout<<"=== TELEMETRIA DO PAINEL SOLAR ==="<<endl;
        cout<<"1. Ativar Celula"<<endl;
        cout<<"2. Ver Mapa da Matriz"<<endl;
        cout<<"3. Sair"<<endl;

        cout<<"Escolha uma opcao:"<<endl;
        cin>>op;

        if(op == 1){
            cout<<"Digite a fileira(0-4): "<<endl;
            cin>>f;
         
            cout<<"Digite a coluna(0-4): "<<endl;
            cin>>c;

            if(matriz_solar[f][c] == 0){
                matriz_solar[f][c]=1;
                cout<<"Sucesso: Célula solar ativada!"<<endl;
            }

            else if(matriz_solar[f][c] == 1){
                cout<<"Erro: Célula solar já está em operação!"<<endl;
            }
            
        }
        else if(op == 2){
            for(int i = 0; i < 5; i++) {       
                for(int j = 0; j < 5; j++) {   
                    cout << "[" << matriz_solar[i][j] << "] ";
                }
                cout << endl; 
            }

        }
        else if (op == 3){
            for(int i = 0; i < 5; i++) {       
                for(int j = 0; j < 5; j++) {   
                    if(matriz_solar[i][j]==1){
                        ativa++;
                    };
                }
            }

            inativa = 25 - ativa;
            cap = (ativa/25.0) * 100;
            cout<<"=== RELATORIO FINAL DE OPERACAO ==="<<endl;
            cout<<"Total de celulas ATIVAS: "<<ativa <<endl;
            cout<<"Total de celulas INATIVAS: "<<inativa <<endl;
            cout<<"Capacidade Operacional: "<<cap<<" %"<<endl;
        }
       
    }
    return 0;
}
