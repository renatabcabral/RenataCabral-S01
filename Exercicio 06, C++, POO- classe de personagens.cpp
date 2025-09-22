#include <iostream>
#include <string>
using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    void setNome(const string &n) {
        nome = n;
    }

    void setIdade(int i) {
        idade = i;
    }

    string getNome() const {
        return nome;
    }

    int getIdade() const {
        return idade;
    }
};


class Protagonista : public Pessoa {
private:
    int nivel;

public:
    void setNivel(int n) {
        nivel = n;
    }

    int getNivel() const {
        return nivel;
    }
};

class Personagem : public Pessoa {
private:
    int rank; 

public:
    void setRank(int r) {
        if (r < 0) r = 0;
        if (r > 10) r = 10;
        rank = r;
    }

    int getRank() const {
        return rank;
    }
};

int main() {
    Protagonista hero;
    hero.setNome("Ren");
    hero.setIdade(17);
    hero.setNivel(5);

    Personagem aliado;
    aliado.setNome("Carlos");
    aliado.setIdade(17);
    aliado.setRank(3);

    cout << "=== Informacoes do Protagonista ===" << endl;
    cout << "Nome: " << hero.getNome() << endl;
    cout << "Idade: " << hero.getIdade() << endl;
    cout << "Nivel: " << hero.getNivel() << endl;

    cout << "\n=== Informacoes do Personagem ===" << endl;
    cout << "Nome: " << aliado.getNome() << endl;
    cout << "Idade: " << aliado.getIdade() << endl;
    cout << "Rank: " << aliado.getRank() << endl;

    return 0;
}
