                    -- Quantidade e valor das vendas por ano
SELECT
    TO_CHAR(DATE_TRUNC('year', p.data), 'YYYY') AS Ano,
    SUM(pp.Quantidade) AS QuantidadeTotal,
    SUM(pp.Valor) AS ValorTotalVendas
FROM
    pedidos p
JOIN
    produto_pedido pp ON p.CupomID = pp.CupomID
GROUP BY
    Ano
ORDER BY
    Ano