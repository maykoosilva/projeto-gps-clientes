SELECT v.nome_vendedor,
       c.razao_social,
       c.nome_fantasia,
       c.endereco,
       c.numero,
       c.cep,
       cid.nome_cidade,
       c.documento,
       c.status,
       CASE 
           WHEN c.status = 'A' THEN 'ATIVO'
           ELSE 'INATIVO'
       END AS categoria
FROM tb_clientes c
JOIN tb_vendedores v ON v.id_vendedor = c.id_vendedor
JOIN tb_cidades cid ON cid.id_cidade = c.id_cidade
WHERE c.id_vendedor = 1;