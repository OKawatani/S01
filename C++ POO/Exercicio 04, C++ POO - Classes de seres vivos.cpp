#include <iostream>
#include <vector>
#include <string>

using namespace std;


class SerVivo {
public:
    string nome;

    SerVivo(const string& n) : nome(n) {}

    
    virtual void apresentar() {
        cout << "Ola, eu sou um ser vivo chamado " << nome << "." << endl;
    }
};


class Humano : public SerVivo {
public:
    Humano(const string& n) : SerVivo(n) {}

    void apresentar() {
        cout << "Ola, eu sou um humano chamado " << nome << "." << endl;
    }
};

class Elfo : public SerVivo {
public:
    Elfo(const string& n) : SerVivo(n) {}

    void apresentar() {
        cout << "Saudacoes, sou um elfo chamado " << nome << "." << endl;
    }
};

class Fada : public SerVivo {
public:
    Fada(const string& n) : SerVivo(n) {}

    void apresentar() {
        cout << "Oi, sou uma fada chamada " << nome << "." << endl;
    }
};

int main() {
    
    vector<SerVivo*> seres;

    
    Humano h("Arthur");
    Elfo e("Legolas");
    Fada f("Tinkerbell");


    seres.push_back(&h);
    seres.push_back(&e);
    seres.push_back(&f);

    
    for (size_t i = 0; i < seres.size(); i++) 
    {
    seres[i]->apresentar();
    }

    return 0;
}
