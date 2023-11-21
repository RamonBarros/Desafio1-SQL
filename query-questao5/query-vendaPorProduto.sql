                    -- Quantidade total de vendas por produto
SELECT
    pp.ProdutoID,
    SUM(pp.Quantidade) AS QuantidadeTotalDeVendas
FROM
    produto_pedido pp
JOIN
    pedidos p ON pp.CupomID = p.CupomID
GROUP BY
    pp.ProdutoID
ORDER BY
    pp.ProdutoID;