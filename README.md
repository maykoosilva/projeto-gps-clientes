# Projeto GPS Clientes

## Contexto
Este projeto é uma simulação baseada em um problema real enfrentado em ambiente corporativo, envolvendo a preparação e padronização de dados de clientes para integração entre sistemas distintos.
Por questões de confidencialidade, os dados utilizados aqui são fictícios, mas a lógica aplicada reflete o cenário real, incluindo validações e reconciliação de dados.

## Desafio
- Sistemas diferentes sem identificador único universal
- Necessidade de criar planilha pronta para importação
- Reconciliação de campos textuais (razão social e fantasia)

## Solução
- Extração de dados via SQL
- Criação de planilha com campos obrigatórios
- Categorização automática de clientes ativos e inativos
- Validação por amostragem (simulada nos dados fictícios)

## Como usar
1. Criar banco e tabelas executando `criar_banco_e_tabelas.sql`.
2. Rodar `extrair_clientes.sql` para gerar a saída final.
3. Conferir resultados e exportar para Excel se necessário.

## Resultado
- Planilha pronta para importação no GPS
- Lógica replicável para outros representantes ou cidades
