#include<iostream>
using namespace std;

class Personagem 
{
private:
    /* data */
public:
    string nome;
    int nivel;
    int dano;
    int vida;

    Personagem(string nome, int nivel, int dano, int vida)
    {
        this->nome = nome;
        this->nivel = nivel;
        this->vida = vida;
        this->dano = dano;
    }

    void atacar(Personagem p0)
    {
        p0.vida -= this->dano;
        cout << p0.nome << " Perdeu " << this->dano << " de vida" << endl;
    }


};



int main()
{
    Personagem p1("Personagem 1", 3, 1, 3);
    Personagem p2("Personagem 2", 3, 1, 5);

    p1.atacar(p2);

    return 0;
}