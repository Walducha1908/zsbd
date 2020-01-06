-- Tworzenie tabel do projektu bazy danych dla sieci hoteli
-- Autorzy: Mateusz Walczak & Konrad Kajszczak

create database HoteleDB;
use HoteleDB;

--drop table Stanowiska;
--drop table Miasta;
--drop table Hotele;
--drop table Pokoje;
--drop table Rezerwacje;
--drop table Klienci;
--drop table Pracownicy;
--drop table Historia;

-- Tworzenie tabeli stanowiska --

if db_name()<>'master' and not exists (select * from INFORMATION_SCHEMA.TABLES where table_name='Stanowiska')
begin
	Print 'Tworzenie tabeli stanowiska';
	create table Stanowiska (
		Id		int				identity(1, 1)				constraint stanowiska_klucz primary key not null,
		Nazwa	nvarchar(30)	collate Polish_CS_AS		not null default 'brak nazwy', 
		Pensja	money										not null default 2500
	);
end;
go


-- Tworzenie tabeli miasta --

if db_name()<>'master' and not exists (select * from INFORMATION_SCHEMA.TABLES where table_name='Miasta')
begin
	Print 'Tworzenie tabeli miasta';
	create table Miasta (
		Id		int				identity(1, 1)				constraint miasta_klucz primary key not null,
		Nazwa	nvarchar(30)	collate Polish_CS_AS		not null default 'brak nazwy miasta', 
	);
end;
go


-- Tworzenie tabeli hotele --

if db_name()<>'master' and not exists (select * from INFORMATION_SCHEMA.TABLES where table_name='Hotele')
begin
	Print 'Tworzenie tabeli hotele';
	create table Hotele (
		Id				int				identity(1, 1)				constraint hotele_klucz primary key not null,
		Id_Miasta		int											not null,
		Nazwa			nvarchar(30)	collate Polish_CS_AS		not null default 'brak nazwy hotelu', 

		constraint miasta_klucz_obcy foreign key(Id_Miasta) references Miasta(Id),
	);
end;
go


-- Tworzenie tabeli pracownicy

if db_name()<>'master' and not exists (select * from INFORMATION_SCHEMA.TABLES where table_name='Pracownicy')
begin
	Print 'Tworzenie tabeli pracownicy';
	create table Pracownicy (
		Id				int				identity(1, 1)				constraint pracownicy_klucz primary key not null,
		Id_Stanowiska	int											not null,
		Id_Miasta		int											not null,
		Imie			nvarchar(30)	collate Polish_CS_AS		not null default 'brak imienia', 
		Nazwisko		nvarchar(30)	collate Polish_CS_AS		not null default 'brak nazwiska', 

		constraint stanowiska_klucz_obcy foreign key(Id_Stanowiska) references Stanowiska(Id),
		constraint miasta_pracownicy_klucz_obcy foreign key(Id_Miasta) references Miasta(Id),
	);
end;
go


-- Tworzenie tabeli klienci --

if db_name()<>'master' and not exists (select * from INFORMATION_SCHEMA.TABLES where table_name='Klienci')
begin
	Print 'Tworzenie tabeli klienci';
	create table Klienci (
		Id				int				identity(1, 1)				constraint klienci_klucz primary key not null,
		Imie			nvarchar(30)	collate Polish_CS_AS		not null default 'brak imienia', 
		Nazwisko		nvarchar(30)	collate Polish_CS_AS		not null default 'brak nazwiska', 
	);
end;
go


-- Tworzenie tabeli pokoje --

if db_name()<>'master' and not exists (select * from INFORMATION_SCHEMA.TABLES where table_name='Pokoje')
begin
	Print 'Tworzenie tabeli pokoje';
	create table Pokoje (
		Id				int				identity(1, 1)				constraint pokoje_klucz primary key not null,
		Id_Hotelu		int											not null,
		Numer			int											not null,
		Pietro			int											not null default 0, 

		constraint hotele_klucz_obcy foreign key(Id_Hotelu) references Hotele(Id),
		constraint numer_pokoju_wiekszy_od_zera check(Numer > 0),
		constraint pietro_nieujemne check (Pietro >= 0)
	);
end;
go


-- Tworzenie tabeli rezerwacje --

if db_name()<>'master' and not exists (select * from INFORMATION_SCHEMA.TABLES where table_name='Rezerwacje')
begin
	Print 'Tworzenie tabeli rezerwacje';
	create table Rezerwacje (
		Id					int				identity(1, 1)				constraint rezerwacje_klucz primary key not null,
		Id_Klienta			int											not null,
		Id_Pokoju			int											not null,
		Liczba_osob			int											not null,
		Data_rozpoczecia	date										not null,
		Data_zakonczenia	date										not null,

		constraint klienci_klucz_obcy foreign key(Id_Klienta) references Klienci(Id),
		constraint pokoje_klucz_obcy foreign key(Id_Pokoju) references Pokoje(Id),
		constraint liczba_osob_wieksza_od_zera check(Liczba_osob > 0),
		constraint data_rozpoczecia_po_2019 check(Data_rozpoczecia > '2018-12-31'),
		constraint data_zakonczenia_pozniejsza_od_daty_rozpoczecia check(Data_zakonczenia > Data_rozpoczecia)
	);
end;
go

-- Tworzenie tabeli historia --

if db_name()<>'master' and not exists (select * from INFORMATION_SCHEMA.TABLES where table_name='Historia')
begin
	Print 'Tworzenie tabeli historia';
	create table Historia (
		Nazwa_tabeli		nvarchar(20)								not null,
		Data_operacji		date										not null,
		Komunikat			nvarchar(100)	collate Polish_CS_AS		not null default 'brak komunikatu'
	);
end;
go