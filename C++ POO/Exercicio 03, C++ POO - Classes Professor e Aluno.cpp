#include <iostream>

using namespace std;

class Pessoa {
protected:
    string nome;

public:
    Pessoa(string n) : nome(n) {}


    virtual void apresentar() {
        cout << "Ola, meu nome e " << nome << " e eu sou uma pessoa." << endl;
    }


    virtual ~Pessoa() {}
};


class Professor : public Pessoa {
private:
    string disciplina;

public:
    Professor(string n, string d) : Pessoa(n), disciplina(d) {}

    
    void apresentar() {
        cout << "Ola, meu nome e " << nome << " e eu sou um professor de " << disciplina << "." << endl;
    }
};


class Aluno : public Pessoa {
private:
    string curso;
    int matricula;

public:
    Aluno(string n, string c, int m) : Pessoa(n), curso(c), matricula(m) {}

    
    void apresentar() {
        cout << "Ola, meu nome e " << nome << " e eu sou um aluno de " << curso << "." << endl;
    }
};


int main() {
    Pessoa* p1 = new Professor("Luiz", "Matematica");
    Pessoa* p2 = new Aluno("Maria", "Engenharia", 12345);

    
    p1->apresentar(); 
    p2->apresentar();

    delete p1;
    delete p2;

    return 0;
}
