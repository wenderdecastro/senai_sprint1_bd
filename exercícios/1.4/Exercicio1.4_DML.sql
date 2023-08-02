INSERT INTO Artistas(Nome)
VALUES('AnaFrangoEletrico')

INSERT INTO Albuns(IDArtista, Titulo, DataLancamento, Localizacao, QTDMin, Ativo)
VALUES(1, 'Vitoria da Conquista', '01-09-2023', 'Vitoria da Conquista - Bahia', '1:35', 0)

INSERT INTO GenerosMSC(Nome)
VALUES('Indie')

INSERT INTO EstilosMSC(IDAlbum, IDGenero)
VALUES(1, 1)

INSERT INTO Usuarios(Nome, Email, Senha, Permissao)
VALUES('JulioCDS', 'julioacessorios@yahoo.com', 'coxinha123', 1)
