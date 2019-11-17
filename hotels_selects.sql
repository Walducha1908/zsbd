-- Przyk³adowe zapytania do tabel projektu bazy danych dla sieci hoteli
-- Autorzy: Mateusz Walczak & Konrad Kajszczak

-- 1) imiê i nazwisko klienta, okres rezerwacji, nazwa hotelu i numer pokoju dla hotelów z miasta £odzi z pokojów na 1 piêtrze
	
	select Klienci.Imie as Imie_klienta, Klienci.Nazwisko as Nazwisko_klienta, 
	Data_rozpoczecia, Data_zakonczenia, Hotele.Nazwa as Nazwa_hotelu, Pietro, 
	Pokoje.Numer as Numer_pokoju
	from Rezerwacje, Pokoje, Hotele, Miasta, Klienci
	where Rezerwacje.Id_Pokoju = Pokoje.Id 
	and Rezerwacje.Id_Klienta = Klienci.Id
	and Pokoje.Id_Hotelu = Hotele.Id
	and Hotele.Id_Miasta = Miasta.Id
	and Miasta.Nazwa = '£ódŸ'
	and Pokoje.Pietro = 1

-- 2) Najwy¿szy hotel

	select distinct top(1) Pietro as Max_pietro, Miasta.Nazwa, Hotele.Nazwa from Pokoje, Hotele, Miasta
	where Pokoje.Id_Hotelu = Hotele.Id
	and Miasta.Id = Hotele.Id_Miasta
	group by Pietro, Hotele.Nazwa, Miasta.Nazwa
	order by Pietro desc

-- 3) Liczby pokojów na poszczególnych piêtrach hotelów o nazwie 'Grand'
	
	select count(*) as Liczba_Pokojów, Pietro, Hotele.Nazwa, Miasta.Nazwa 
	from Pokoje, Hotele, Miasta
	where Pokoje.Id_Hotelu = Hotele.Id
	and Hotele.Id_Miasta = Miasta.Id
	and Hotele.Nazwa = 'Grand'
	group by Pietro, Hotele.Nazwa, Miasta.Nazwa

-- 4) 3 Najczêœciej rezerwowane pokoje

	select top(3) count(*) as Liczba_rezerwacji, Pokoje.Id as Id_pokoju, 
	Pokoje.Numer as Numer_Pokoju, Pokoje.Pietro, Hotele.Nazwa as Nazwa_hotelu, 
	Miasta.Nazwa as Miasto
	from Rezerwacje, Hotele, Pokoje, Miasta
	where Rezerwacje.Id_Pokoju = Pokoje.Id 
	and Pokoje.Id_Hotelu = Hotele.Id
	and Hotele.Id_Miasta = Miasta.Id
	group by Pokoje.Id, Numer, Pokoje.Pietro, Hotele.Nazwa, Miasta.Nazwa
	order by Liczba_rezerwacji desc
	
-- 5) Miasta posortowane po liczbie hoteli

	select Miasta.Nazwa as Miasto, count(*) as Liczba_hoteli
	from Miasta, Hotele
	where Hotele.Id_Miasta = Miasta.Id
	group by Miasta.Nazwa
	order by Liczba_hoteli desc

-- 6) Liczba osób zatrudnionych na poszczególnych stanowiskach

	select Stanowiska.Nazwa as Stanowisko, count(*) as Liczba_Zatrudnionych
	from Stanowiska, Pracownicy
	where Pracownicy.Id_Stanowiska = Stanowiska.Id
	group by Stanowiska.Nazwa
	order by Liczba_Zatrudnionych desc

-- 7) Miasta, w których pracuje przynajmniej 2 pracowników technicznych

	select Miasta.Nazwa as Miasto, count(*) as 'Liczba Pracowników Technicznych'
	from Stanowiska, Pracownicy, Miasta
	where Pracownicy.Id_Stanowiska = Stanowiska.Id
	and Pracownicy.Id_Miasta = Miasta.Id
	and Stanowiska.Nazwa = 'Pracownik techniczny'
	group by Miasta.Nazwa
	having count(*) >= 2

-- 8) Miasto i nazwisko dyrektora w danym mieœcie

	select Miasta.Nazwa as miasto, Pracownicy.Imie, Pracownicy.Nazwisko
	from Miasta, Pracownicy, Stanowiska
	where Pracownicy.Id_Miasta = Miasta.Id
	and Pracownicy.Id_Stanowiska = Stanowiska.Id
	and Stanowiska.Nazwa = 'Dyrektor'

-- 9) Liczba rezerwacji w ka¿dym miesi¹cu roku 2019

	select count(*) as liczba_rezerwacji, (month(Data_rozpoczecia)) as miesiac
	from Rezerwacje
	where year(Data_rozpoczecia) = 2019
	group by month(Data_rozpoczecia)

-- 10) Wszystkie kobiety na stanowisku kierownika zmiany

	select imie, nazwisko 
	from Pracownicy, Stanowiska
	where Pracownicy.Id_Stanowiska = Stanowiska.Id
	and Stanowiska.Nazwa = 'Kierownik zmiany'
	and right(imie, 1) = 'a' 

-- 11) Wszyscy klienci warszawskich hoteli w lipcu i sierpniu 2019 posortowani wzglêdem daty rozpoczêcia

	select imie as 'imie klienta', nazwisko as 'nazwisko klienta',
	Hotele.Nazwa, Data_rozpoczecia, Data_zakonczenia
	from Klienci, Rezerwacje, Pokoje, Hotele, Miasta
	where Rezerwacje.Id_Klienta = Klienci.Id
	and Rezerwacje.Id_Pokoju = Pokoje.Id
	and Pokoje.Id_Hotelu = Hotele.Id
	and Hotele.Id_Miasta = Miasta.Id
	and Miasta.Nazwa = 'Warszawa'
	and Rezerwacje.Data_rozpoczecia >= '2019-07-01'
	and Rezerwacje.Data_zakonczenia <= '2019-08-30'
	order by Data_rozpoczecia asc

-- 12) Klienci z wiêksz¹ liczb¹ rezerwacji ni¿ 25

	select count(*) as liczba_rezerwacji, imie, nazwisko
	from Rezerwacje, Klienci
	where Rezerwacje.Id_Klienta = Klienci.Id
	group by imie, nazwisko
	having count(*) > 25

-- 13) Pokoje, które nigdy nie by³y zarezerwowane

	select Pokoje.Id as 'id pokoju'
	from Pokoje
	where Pokoje.Id not in (select Rezerwacje.Id_Pokoju from Rezerwacje)


	