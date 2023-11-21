                    --CALCULA O VALOR E A QUANTIDADE DE VENDAS(SOMENTE PEDIDOS) POR CIDADE
SELECT
    c.Cidade,
    COUNT(DISTINCT p.CupomID) AS QuantidadeVendas,
    SUM(pp.ValorLiquido) AS ValorTotalVendas
FROM
    clientes c
JOIN
    pedidos p ON c.ClienteID = p.ClienteID
JOIN
    produto_pedido pp ON p.CupomID = pp.CupomID
GROUP BY
    c.Cidade
ORDER BY
    c.Cidade;
