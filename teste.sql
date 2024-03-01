--1
SELECT 
	Nome, 
	Ano
	
FROM Filmes

--2
SELECT * FROM Filmes
ORDER BY Ano ASC

--3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Ano = 1997

--5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Ano >= 2000

--6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE duracao > 100 AND duracao < 150 
ORDER BY duracao ASC;

--7
SELECT Ano, 
	COUNT(Ano) as Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT 
	F.nome AS Filme,
	G.genero AS Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
ON F.Id = FG.IdFilme
INNER JOIN Generos AS g
ON FG.IdGenero = G.id

--11
SELECT 
	F.nome AS Filme,
	G.genero AS Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
ON F.Id = FG.IdFilme
INNER JOIN Generos AS g
ON FG.IdGenero = G.id
WHERE G.genero = 'Mistério'

--12
SELECT 
	F.Nome AS Nome,
	A.PrimeiroNome AS "Primeiro Nome",
	A.UltimoNome AS UltimoNome,
	E.Papel AS Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS E
ON f.Id = E.IdFilme
INNER JOIN Atores AS A
ON E.IdAtor = A.Id
