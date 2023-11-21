                    -- Calcula a Média Total de Valores Gastos e de Produtos Comprados por Clientes
SELECT
    AVG(ValorTotalVendas) AS MediaTotalValoresGastos,
    AVG(QuantidadeTotalProdutos) AS MediaTotalProdutos
FROM (
    SELECT
        c.ClienteID,
        c.Cliente,
        SUM(pp.ValorLiquido) AS ValorTotalVendas,
        SUM(pp.quantidade) AS QuantidadeTotalProdutos
    FROM
        clientes c
    JOIN
        pedidos p ON c.ClienteID = p.ClienteID
    JOIN
        produto_pedido pp ON p.CupomID = pp.CupomID
    GROUP BY
        c.ClienteID, c.Cliente
) AS Subquery;
