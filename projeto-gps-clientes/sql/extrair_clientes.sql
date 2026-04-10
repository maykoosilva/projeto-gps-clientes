SELECT r.razao AS representante,
       cli.razao_social,
       cli.nome_fantasia,
       cli.endereco,
       cli.end_numero,
       cli.cep,
       c.descricao AS cidade,
       cli.cnpj_cpf AS cnpj,
       cli.ativo,
       CASE cli.ativo
           WHEN 'S' THEN 'ATIVO'
           ELSE 'INATIVO'
       END AS categoria
FROM clientes cli
INNER JOIN representante r ON r.cod_repres = cli.cod_repres
INNER JOIN cidade c ON c.cod_cidade = cli.cod_cidade
WHERE cli.cod_repres = 53;