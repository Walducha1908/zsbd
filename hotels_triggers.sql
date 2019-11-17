-- Procedury i triggery wykorzystywane do projektu bazy danych dla sieci hoteli
-- Autorzy: Mateusz Walczak & Konrad Kajszczak

use HoteleDB;

-- Procedura sluzaca do tworzenia losowych rezerwacji 

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