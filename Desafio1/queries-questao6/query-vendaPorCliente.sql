                    --Calcula os Valores e a quantidade de Venda totais(incluindo a quantidade de itens por pedido) por Cliente
SELECT
    c.ClienteID,
    c.Cliente,
    c.Cidade,
    SUM(pp.quantidade) AS QuantidadeVendas,
    SUM(pp.ValorLiquido) AS ValorTotalVendas
FROM
    clientes c
JOIN
    pedidos p ON c.ClienteID = p.ClienteID
JOIN
    produto_pedido pp ON p.CupomID = pp.CupomID
GROUP BY
    c.ClienteID, c.Cliente, c.Cidade
ORDER BY
    c.ClienteID;