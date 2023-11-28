                    -- Calcula o Valor Total de Vendas por Produto 
SELECT                          
    pp.ProdutoID,  
    SUM(pp.Valor) AS ValorTotalVendas
FROM
    produto_pedido pp
JOIN
    pedidos p ON pp.CupomID = p.CupomID 
GROUP BY
    pp.ProdutoID 
ORDER BY
    pp.ProdutoID;