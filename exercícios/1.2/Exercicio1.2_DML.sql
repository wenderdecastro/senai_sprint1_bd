INSERT INTO Marcas(NomeMarca)
VALUES('Volkswagen')

INSERT INTO Modelos(NomeModelo)
VALUES('Fusca')

INSERT INTO Veiculos(Placa, MarcaID, ModeloID)
VALUES('53XON40', 1, 2)

INSERT INTO Clientes(ClienteNome, CPF)
VALUES('marcos modas', 2345678)

INSERT INTO Alugueis(ClienteID, VeiculoID, DataRetirada, DataDevolucao, PrecoAluguel)
VALUES (1, 3, '01-03-2023', '04-12-2023', 3000)