--1

select Nome,Ano from Filmes;

--2

select Nome,Ano,Duracao from Filmes order by ano ;

--3
select Nome,Ano,Duracao from Filmes where Nome = 'De Volta para o futuro';

--4
select Nome,Ano,Duracao from Filmes where Ano=1997;

--5

select Nome,Ano,Duracao from Filmes where Ano>2000;

--6
select Nome,Ano,Duracao from Filmes where Duracao>100 and Duracao<150 order by Duracao ;

--7
select Ano,COUNT(Ano) as quantidade  from Filmes group by Ano order by SUM(Duracao) desc;

--8 
select * from Atores where Genero= 'M';

--9
select * from Atores where Genero= 'F' order by PrimeiroNome;

--10
select Filmes.Nome, gn.Genero from Filmes
inner join FilmesGenero  as fg
on fg.IdFilme= Filmes.Id
inner join Generos as gn
on gn.Id = fg.IdGenero;

--11

select Filmes.Nome, gn.Genero from Filmes
inner join FilmesGenero  as fg
on fg.IdFilme= Filmes.Id
inner join Generos as gn
on gn.Id = fg.IdGenero
where 
gn.Genero = 'Mistério'

--12
select Filmes.Nome,ato.PrimeiroNome,ato.UltimoNome,el.Papel from Filmes
inner join ElencoFilme as el
on el.IdFilme = Filmes.Id
inner join Atores as ato
on ato.Id = el.IdAtor



