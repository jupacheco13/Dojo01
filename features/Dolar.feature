#language: pt
#utf-8

Funcionalidade: Verificar a variação do dolár
Eu como usuário
Quero verificar a variação do dolár

Cenário: Verificar a variação do dolár no UOL 
Dado que esteja na home do Google
Quando pesquisar o site da Uol
E selecionar o site da Uol
E confirmar que está no site da Uol
E selecionar o menu Economia
Então Pegar o valor e comparar se é menor que 3.20 encerrar o teste se não falhar o teste