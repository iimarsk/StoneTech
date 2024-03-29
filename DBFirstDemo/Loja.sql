IF OBJECT_ID ('dbo.Pedido') IS NOT NULL
DROP TABLE dbo.Pedido;
GO

IF OBJECT_ID ('dbo.Cliente') IS NOT NULL
DROP TABLE dbo.Cliente;
GO

CREATE TABLE Cliente (
    Id INTEGER PRIMARY KEY IDENTITY(1,1),
    Nome TEXT,
    Email TEXT);
    GO

CREATE TABLE Pedido (
    Id INTEGER PRIMARY KEY IDENTITY(1,1),
    Cliente_id INTEGER,
    Item TEXT,
    Preco REAL,
    FOREIGN KEY (cliente_id) REFERENCES Cliente (id));
    GO