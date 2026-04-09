# Projeto GPS Clientes

## Contexto

Este projeto simula um cenário real de integração de dados entre um ERP e um sistema de GPS, onde foi necessário preparar, padronizar e organizar uma base de clientes para importação, segmentando-os por carteira de vendedores e localização.

O ERP não possuía todos os campos obrigatórios exigidos pela planilha de importação do sistema de GPS, sendo necessário realizar uma consulta no banco de dados para complementar essas informações e viabilizar a integração.

Por questões de confidencialidade, os dados utilizados aqui são fictícios, mas a lógica aplicada reflete o cenário real, incluindo validações e reconciliação de dados.


## Problema

- Os dados precisavam ser importados via planilha
- Os campos "razão social", "fantasia", "categoria" estavam inconsistentes
- Base inicial foi criada incorretamente (campos invertidos)

## Solução
- Extração de dados via SQL
- Criação de planilha com campos obrigatórios
- Categorização automática de clientes ativos e inativos
- Uso de Excel (ÍNDICE + CORRESP) para reconciliação e ajuste dos dados antes da importação
- Validação por amostragem (simulada nos dados fictícios)

## Como usar
1. Criar banco e tabelas executando `criar_banco_e_tabelas.sql`.
2. Rodar `extrair_clientes.sql` para gerar a saída final.
3. Conferir resultados e exportar para Excel se necessário.

## Resultado
- Planilha pronta para importação no GPS
- Lógica replicável para outros representantes ou cidades

## Decisão técnica

Devido a inconsistências na base inicial (campos invertidos e dados incorretos), optou-se por remover os registros e realizar uma nova importação com os dados corrigidos, garantindo consistência desde a origem.

## Validação

No cenário real, os dados foram validados por meio de comparação com o ERP, utilizando amostragem para garantir consistência entre os sistemas após a importação.
