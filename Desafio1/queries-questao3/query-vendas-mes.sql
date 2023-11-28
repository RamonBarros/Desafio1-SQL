                    -- Quantidade e valor das vendas por mês e ano
SELECT
    TO_CHAR(DATE_TRUNC('month', p.data), 'MM/YYYY') AS MesAno,
    SUM(pp.Quantidade) AS QuantidadeTotal,
    SUM(pp.Valor) AS ValorTotalVendas
FROM
    pedidos p
JOIN
    produto_pedido pp ON p.CupomID = pp.CupomID
GROUP BY
    MesAno
ORDER BY
    MesAno;