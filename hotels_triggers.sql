-- Procedury i triggery wykorzystywane do projektu bazy danych dla sieci hoteli
-- Autorzy: Mateusz Walczak & Konrad Kajszczak

use HoteleDB;



-- Procedura sluzaca do wprowadzenia podwy¿ki dla pracowników danego stanowiska 

-- drop procedure podwyzkaDlaStanowiska
go
create procedure podwyzkaDlaStanowiska
(
	@stanowisko int = 1,
	@procent int = 5
)
as
  begin
	declare @suma int, @podwyzka decimal(3,2), @nazwa_stanowiska nvarchar(20)
	
	set @podwyzka = @procent * 0.01
	set @nazwa_stanowiska = (select nazwa from Stanowiska where Id = @stanowisko)

	begin
		update Stanowiska set Pensja = Pensja + (Pensja * @podwyzka) where Id = @stanowisko;
	end

	insert into Historia VALUES ('Stanowiska', GETDATE(), 'Wprowadzono podwyzke o ' + CONVERT(varchar(4), @procent) 
														+ ' procent dla stanowiska ' + @nazwa_stanowiska);
	select *from Historia;
	select *from Stanowiska;
  end
go
-- exec podwyzkaDlaStanowiska 3, 10


-- Procedura sluzaca do zwolnienia wszystkich pracownikow w danym miescie
-- zatrudnionych na konretnym, podanym przez uzytkownika stanowisku

-- drop procedure zwolnijWszystkichPracownikowWMiescieNaDanymStanowisku
go
create procedure zwolnijWszystkichPracownikowWMiescieNaDanymStanowisku (
	@miasto int = 1,
	@stanowisko int = 1 
)
as
  begin
	declare @nazwa_stanowiska nvarchar(20), @nazwa_miasta nvarchar(20), @suma int

	set @nazwa_stanowiska = (select nazwa from Stanowiska where Id = @stanowisko)
	set @nazwa_miasta = (select nazwa from Miasta where Id = @miasto)

	begin
		set @suma = (select count(*) from Pracownicy where Id_Stanowiska = @stanowisko and Id_Miasta = @miasto)
		delete from Pracownicy where Id_Stanowiska = @stanowisko and Id_Miasta = @miasto
	end

	if (@suma > 0)
	begin
		insert into Historia VALUES ('Pracownicy', GETDATE(), 'Zwolniono ' + CONVERT(varchar(4), @suma) + ' pracownikow'
															+ ' ze stanowiska ' + @nazwa_stanowiska + ' w miescie ' + @nazwa_miasta);
	end	
													
	select *from Historia;
  end
go
-- exec zwolnijWszystkichPracownikowWMiescieNaDanymStanowisku 1, 2


-- Procedura sluzaca do ograniczenia liczby osob w rezerwacji w danym pokoju
-- zmniejsza liczbe osob w rezerwacjach w danym pokoju do podanej liczby
-- maksymalnej, tak aby nie bylo w systemie rezerwacji, ktorych liczba osob
-- przekraczalaby podona wartosc maksymalna

-- drop procedure ograniczLiczbeOsob
go
create procedure ograniczLiczbeOsob
(
	@pokoj int = 1,
	@maksymalnaLiczbaOsob int = 2
)
as
  begin
	declare @suma int
	
	begin
		set @suma = (select count(*) from Rezerwacje where Liczba_osob > @maksymalnaLiczbaOsob and Id_Pokoju = @pokoj)
		update Rezerwacje set Liczba_osob = @maksymalnaLiczbaOsob where Liczba_osob > @maksymalnaLiczbaOsob and Id_Pokoju = @pokoj
	end

	if (@suma > 0)
	begin
		insert into Historia VALUES ('Rezerwacje', GETDATE(), 'Zmniejszono liczbe osob w ' + CONVERT(varchar(4), @suma) + ' rezerwacjach'
															+ ' dla pokoju o id = ' + CONVERT(varchar(4), @pokoj) 
															+ ' do maksymalnej wartosci ' + CONVERT(varchar(4), @maksymalnaLiczbaOsob));
	end

	select *from Historia;
  end
go
-- exec ograniczLiczbeOsob 5, 3

-- Funkcja obliczajaca liczbe dni trwania rezerwacji
-- dla konkretnej rezerwacji

-- drop function czasTrwaniaRezerwacji
go
create function czasTrwaniaRezerwacji
(
	@rezerwacja int
)
returns int 
as
  begin
	declare @rozpoczecie date, @zakonczenie date, @liczbaDni int

	set @rozpoczecie = (select Data_rozpoczecia from Rezerwacje where Id = @rezerwacja)
	set @zakonczenie = (select Data_zakonczenia from Rezerwacje where Id = @rezerwacja)

	set @liczbaDni = (select datediff(day, @rozpoczecie, @zakonczenie));
	return @liczbaDni
  end
go

-- SELECT DISTINCT Id, Data_rozpoczecia, Data_zakonczenia, dbo.czasTrwaniaRezerwacji(Id) as 'Liczba dni' from Rezerwacje


-- Procedura sluzaca do tworzenia losowych rezerwacji 
-- (nie wrzucaj jej do sprawozdania - ona jest tylko dla nas do u¿ytku)
-- chyba ze bardzo chcesz :D

-- drop procedure losujRezerwacje
go

create procedure losujRezerwacje (
	@liczbaRezerwacji int = 500
)
as
	begin
	declare @cnt int = 0;
	while @cnt < @liczbaRezerwacji
	begin
		set @cnt = @cnt + 1
		declare @miesiace int = Floor(Rand()*9+1)
		declare @dni int = Floor(Rand()*20+1)
		declare @roznica int = Floor(Rand()*8+1)
			insert into Rezerwacje values (Floor(Rand()*20+1), Floor(Rand()*188+1), Floor(Rand()*6+1), 
				concat('2019-0', @miesiace, '-', @dni), 
				concat('2019-0', @miesiace, '-', @dni + @roznica))
		end
	end
go
-- exec losujRezerwacje