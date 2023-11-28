                    -- Lucro liquido por mês/ano
SELECT
    TO_CHAR(DATE_TRUNC('month', p.data), 'MM/YYYY') AS MesAno,
    SUM(pp.ValorLiquido) AS LucroLiquido,
    (SUM(pp.ValorLiquido) / NULLIF(SUM(pp.Custo), 0)) * 100 AS PercentualLucro
FROM
    produto_pedido pp
JOIN
    pedidos p ON pp.CupomID = p.CupomID
GROUP BY
    MesAno
ORDER BY
    MesAno;
