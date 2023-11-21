                    -- Quantidade e valor das vendas por dia
SELECT
    TO_CHAR(DATE_TRUNC('day', p.data), 'DD') AS Dia,
    SUM(pp.Quantidade) AS QuantidadeTotal,
    SUM(pp.Valor) AS ValorTotalVendas
FROM
    pedidos p
JOIN
    produto_pedido pp ON p.CupomID = pp.CupomID
GROUP BY
    Dia
ORDER BY
    Dia;
