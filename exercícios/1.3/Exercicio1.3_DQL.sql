USE Exercicio1_3

/*

SELECT * FROM Clinica
SELECT * FROM Veterinario
SELECT * FROM Atendimento
SELECT * FROM Pets
SELECT * FROM Dono
SELECT * FROM RacasPet
SELECT * FROM TiposPet

*/

-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)

SELECT 
	Veterinario.NomeVeterinario, Veterinario.CRMV
FROM 
	Veterinario 
WHERE Veterinario.IDClinica = 1

-- listar todas as ra�as que come�am com a letra S

SELECT 
	RacasPet.NomeRaca AS [RA�A DO PET]
FROM 
	RacasPet
WHERE RacasPet.NomeRaca LIKE 's%'

-- listar todos os tipos de pet que terminam com a letra O

SELECT 
	TiposPet.NomeTipo AS [ESPECIE DO PET]
FROM 
	TiposPet
WHERE TiposPet.NomeTipo LIKE '%o'

-- listar todos os pets mostrando os nomes dos seus donos

SELECT *
FROM Pets
LEFT JOIN Dono 
	ON Dono.IDDono = pets.IDDono

-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica onde o pet foi atendido

SELECT 
	Atendimento.IDAtendimento AS [NUMERO ATENDIMENTO],
	Dono.Nome AS [NOME DO DONO], 
	Pets.NomePet AS [NOME DO PET], 
	Pets.IDTipo AS ESPECIE, 
	Pets.IDRaca AS  RA�A, 
	Veterinario.NomeVeterinario AS VETERIN�RIO, 
	Clinica.NomeClinica AS CL�NICA
FROM 
	Atendimento
LEFT JOIN Veterinario 
	ON Veterinario.IDVeterinario = Atendimento.IDVeterinario
LEFT JOIN Pets 
	ON Pets.IDPet = Atendimento.IDPet
LEFT JOIN Dono 
	ON Dono.IDDono = Pets.IDDono
LEFT JOIN Clinica 
	ON Clinica.IDClinica = Veterinario.IDClinica;

