#include <iostream>
#include <string>
#include <vector>
using namespace std;

class MembroInatel {
protected:
    string nome; 

public:
    MembroInatel(string n) : nome(n) {}

    virtual void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: " << nome << "!" << endl;
    }

    virtual ~MembroInatel() {}
};


class Aluno : public MembroInatel {
private:
    string curso; 

public:
    
    Aluno(string n, string c) : MembroInatel(n), curso(c) {}

    
    void seApresentar() override {
        cout << "Meu nome é " << nome << " e estudo no curso de " << curso << "." << endl;
    }
};

class Professor : public MembroInatel {
private:
    string disciplina; 

public:
    
    Professor(string n, string d) : MembroInatel(n), disciplina(d) {}

    void seApresentar() override {
        cout << "Meu nome é " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};

int main() {
    vector<MembroInatel*> membro;

   
    membro.push_back(new Aluno("Anna Livia", "Engenharia de Software"));
    membro.push_back(new Professor("Daniela Barude", "Calculo I"));

    cout << "=== Membros Inatel ===" << endl;

    for (MembroInatel* m : membro) {
        m->seApresentar();
    }

 
    for (MembroInatel* m : membro) {
        delete m;
    }

    return 0;
}
