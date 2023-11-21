                    --Calcula o Valor total das vendas e dos fretes por produto e ordem de venda
SELECT
    pp.ProdutoID,
    pp.CupomID,
    SUM(pp.Valor) AS ValorTotalVendasPorProduto,
    MAX(p.ValorFrete) AS ValorTotalFretesPorPedido
FROM
    produto_pedido pp
JOIN
    pedidos p ON pp.CupomID = p.CupomID
GROUP BY
    pp.ProdutoID, pp.CupomID
ORDER BY
    pp.ProdutoID, pp.CupomID;