USE Exercicio1_3

INSERT INTO Clinica(NomeClinica, EnderecoClinica)
VALUES('Neguinho Veterinaria', 'Onde os fifi não cola')

INSERT INTO Veterinario(IDClinica, NomeVeterinario, CRMV)
VALUES(1, 'Julio Cds', '55555')

INSERT INTO TiposPet(NomeTipo)
VALUES('Cachorro')

INSERT INTO RacasPet(NomeRaca)
VALUES('Salsicha')

INSERT INTO Pets(IDRaca, IDTipo,IDDono, NomePet, DataNascimento)
VALUES(1, 1, 1, 'Butão', '01-06-2009')

INSERT INTO Dono(Endereco)
VALUES('Casas Bahia')

INSERT INTO Atendimento(IDVeterinario, IDPet)
VALUES(1, 1)


