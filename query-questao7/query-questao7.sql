                    -- Calcula a Média de Produtos Vendidos por Mês/Ano
SELECT
    MesAno,
    AVG(QuantidadeProdutos) AS MediaProdutosVendidos
FROM (
    SELECT
        TO_CHAR(DATE_TRUNC('month', p.data), 'MM/YYYY') AS MesAno,
        SUM(pp.Quantidade) * COUNT(DISTINCT p.CupomID) AS QuantidadeProdutos
    FROM
        pedidos p
    JOIN
        produto_pedido pp ON p.CupomID = pp.CupomID
    GROUP BY
        MesAno, p.CupomID
) AS Subquery
GROUP BY
    MesAno
ORDER BY
    MesAno;
