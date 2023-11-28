                    --CALCULA O VALOR E A QUANTIDADE DE VENDAS(CONSIDERANDO A QUANTIDADE DE ITEMS POR PEDIDO) POR CIDADE
SELECT
    c.Cidade,
    COUNT(pp.quantidade) AS QuantidadeVendas,
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

    
