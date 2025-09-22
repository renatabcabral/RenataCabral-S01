#include <iostream>
#include <string>
using namespace std;


class Pessoa {
protected:
    string nome;

public:
    void setNome(const string &n) {
        nome = n;
    }

    virtual void apresentar() {
        cout << "Ola, meu nome e " << nome << " e eu sou uma pessoa." << endl;
    }
};


class Professor : public Pessoa {
private:
    string disciplina;

public:
    void setDisciplina(const string &d) {
        disciplina = d;
    }

    void apresentar() {  
        cout << "Ola, meu nome e " << nome
             << " e eu sou um professor de " << disciplina << "." << endl;
    }
};


class Aluno : public Pessoa {
private:
    string curso;

public:
    void setCurso(const string &c) {
        curso = c;
    }

    void apresentar() {  
        cout << "Ola, meu nome e " << nome
             << " e eu sou uma aluna de " << curso << "." << endl;
    }
};

int main() {
    Professor prof;
    prof.setNome("Fernandinho");
    prof.setDisciplina("Programacao Orientada a Objetos");

    Aluno aluno;
    aluno.setNome("Mariana");
    aluno.setCurso("Engenharia de Software");

   
    Pessoa *p1 = &prof;
    Pessoa *p2 = &aluno;

    cout << "=== Apresentacoes ===" << endl;
    p1->apresentar();  
    p2->apresentar();  

    return 0;
}
