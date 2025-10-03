#include <iostream>
#include <string>
using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    
    Pessoa(string n = "", int i = 0) : nome(n), idade(i) {}

    void Nome(string n) { nome = n; }
    string getNome() { return nome; }

    void Idade(int i) { idade = i; }
    int getIdade() { return idade; }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    Protagonista(string n = "", int i = 0, int lvl = 1) : Pessoa(n, i), nivel(lvl) {}

    void Nivel(int lvl) { nivel = lvl; }
    int getNivel() { return nivel; }
};

class Personagem : public Pessoa {
private:
    int rank; 

public:
    Personagem(string n = "", int i = 0, int r = 0) : Pessoa(n, i), rank(r) {}

    void Rank(int r) { 
        if(r >= 0 && r <= 10) rank = r;
        else cout << "Rank invalido! Deve ser entre 0 e 10." << endl;
    }

    int getRank() { return rank; }
};

int main() {
    
    Protagonista heroi;
    heroi.Nome("Ren");
    heroi.Nivel(99);
    heroi.Idade(16);

    Personagem aliado;
    aliado.Nome("Ryuji");
    aliado.Rank(7);
    aliado.Idade(16);

    cout << "Protagonista:" << endl;
    cout << "Nome: " << heroi.getNome() << ", Idade: " << heroi.getIdade() 
         << ", Nivel: " << heroi.getNivel() << endl;

    cout << "Personagem Secundario:" << endl;
    cout << "Nome: " << aliado.getNome() << ", Idade: " << aliado.getIdade() 
         << ", Rank: " << aliado.getRank() << endl;

    return 0;
}
