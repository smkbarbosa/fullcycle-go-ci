# Desafio de CI

O desafio consiste em:

1. Programar uma função de soma na linguagem Golang, a função deve
receber dois parâmetros e retorna a a adição dos valores. Quando a função for executada, deve exibir na tela o resultado da soma de 5 + 5. 

1. Criar um teste unitário para essa função

1. Ativar um processo de CI no GCP que:
    1. execute o teste unitário
    1. faça push da imagem gerada no processo de CI no GCP
    1. ativar a app do Cloud Build no Github para que cada pull request execute automaticamente o processo de CI.
    
   