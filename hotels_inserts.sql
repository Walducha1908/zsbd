-- Przyk³adowe dane do tabel projektu bazy danych dla sieci hoteli
-- Autorzy: Mateusz Walczak & Konrad Kajszczak

use HoteleDB;


-- Inserty do tabeli stanowisko --

insert into Stanowiska values ('Dyrektor')
insert into Stanowiska values ('Kierownik zmiany')
insert into Stanowiska values ('Obs³uga pokoju')
insert into Stanowiska values ('Pracownik rejestracji')
insert into Stanowiska values ('Pracownik techniczny')

select *from Stanowiska


-- Inserty do tabeli klienci --

insert into Klienci values ('Mateusz', 'Walczak')
insert into Klienci values ('Konrad', 'Kajszczak')
insert into Klienci values ('Adam', 'Kowalski')
insert into Klienci values ('Ma³gorzata', 'Nowak')
insert into Klienci values ('Karolina', 'Mus')
insert into Klienci values ('Patryk', 'Zaj¹c')
insert into Klienci values ('Micha³', 'Królik')
insert into Klienci values ('Patrycja', 'Burak')
insert into Klienci values ('Kamil', 'Zwyciêzca')
insert into Klienci values ('Patryk', 'Pawlik')
insert into Klienci values ('Szymon', 'Cieœlak')
insert into Klienci values ('Adam', 'Socha')
insert into Klienci values ('Ma³gorzata', 'jakubowski')
insert into Klienci values ('Karolina', 'Kowalski')
insert into Klienci values ('Marcin', 'Ma³ek')
insert into Klienci values ('Adrian', 'Kozak')
insert into Klienci values ('Iwo', 'Kalinowska')
insert into Klienci values ('Kamil', 'Jab³oñski')
insert into Klienci values ('Ignacy', 'Maj')
insert into Klienci values ('Adrian', 'Zakrzewski')

select *from Klienci


-- Inserty do tabeli miasta --

insert into Miasta values ('£ódŸ')
insert into Miasta values ('Kraków')
insert into Miasta values ('Warszawa')
insert into Miasta values ('Wroc³aw')
insert into Miasta values ('Gdañsk')
insert into Miasta values ('Poznañ')
insert into Miasta values ('Zakopane')
insert into Miasta values ('Toruñ')

select *from Miasta


-- Inserty do tabeli pracownicy --

insert into Pracownicy values (1, 1, 'Micha³', 'Mocny')
insert into Pracownicy values (2, 1, 'Karolina', 'Prêdka')
insert into Pracownicy values (2, 1, 'Natalia', 'Pracuœ')
insert into Pracownicy values (3, 1, '£ukasz', 'Szybki')
insert into Pracownicy values (3, 1, 'Antoni', 'Nowak')
insert into Pracownicy values (4, 1, 'Konrad', 'Miazga')
insert into Pracownicy values (5, 1, 'Jan', 'Pasek')

insert into Pracownicy values (1, 2, 'Olga', 'P¹k')
insert into Pracownicy values (2, 2, 'Katarzyna', 'Pêdrak')
insert into Pracownicy values (3, 2, 'Pawe³', 'Pracuœ')
insert into Pracownicy values (4, 2, 'Marian', 'Wolny')
insert into Pracownicy values (4, 2, 'Zenon', 'Kowalski')
insert into Pracownicy values (4, 2, 'Krzysztof', 'Porak')
insert into Pracownicy values (5, 2, 'Kamil', 'Wilczek')

insert into Pracownicy values (1, 3, 'Jan', 'Si³ak')
insert into Pracownicy values (2, 3, 'Marianna', 'Modra')
insert into Pracownicy values (3, 3, 'Wies³aw', 'Borzalski')
insert into Pracownicy values (4, 3, 'Karolina', 'Wojna')
insert into Pracownicy values (4, 3, 'Genowefa', 'Ko³czan')
insert into Pracownicy values (5, 3, 'Michalina', 'R¹czka')
insert into Pracownicy values (5, 3, 'Pedro', 'Domingo')

insert into Pracownicy values (1, 4, 'Maciej', 'Bielecki')
insert into Pracownicy values (2, 4, 'Anna', 'Stêpieñ')
insert into Pracownicy values (2, 4, 'Wiktoria', 'Nawrocka')
insert into Pracownicy values (3, 4, 'Karolina', 'Zieliñski')
insert into Pracownicy values (3, 4, 'Mateusz', 'WoŸniak')
insert into Pracownicy values (4, 4, 'Barbara', '£uczak')
insert into Pracownicy values (5, 4, 'Iwo', 'Wiœniewski')

insert into Pracownicy values (1, 5, '£ukasz', 'Zaj¹c')
insert into Pracownicy values (2, 5, 'Joanna', 'Tomasik')
insert into Pracownicy values (3, 5, 'Marcin', 'Szyd³owska')
insert into Pracownicy values (3, 5, 'Lidia', 'Nowak')
insert into Pracownicy values (3, 5, 'Mariusz', 'Wójtowicz')

insert into Pracownicy values (1, 6, 'Emilia', 'G³owacka')
insert into Pracownicy values (3, 6, 'Anna', 'Sadowska')
insert into Pracownicy values (4, 6, 'Adrian', 'Gajewski')
insert into Pracownicy values (4, 6, 'Aleksander', 'Witkowska')
insert into Pracownicy values (5, 6, 'Mateusz', 'Kurek')
insert into Pracownicy values (5, 6, 'Paulina', 'Domaga³a')

insert into Pracownicy values (1, 7, 'Wiktor', 'Szczepañski')
insert into Pracownicy values (2, 7, 'Mieszko', 'Borowski')
insert into Pracownicy values (3, 7, 'Micha³', 'B³aszczyk')
insert into Pracownicy values (4, 7, 'Angelika', 'Szczypczyk')
insert into Pracownicy values (5, 7, 'Beata', 'Pietrzak')
insert into Pracownicy values (5, 7, 'Szymon', 'Sawicki')
insert into Pracownicy values (4, 7, 'Alicja', 'Markiewicz')
insert into Pracownicy values (5, 7, 'Kacper', 'Leszczyñski')
insert into Pracownicy values (5, 7, 'Borys', 'Marciniak')

insert into Pracownicy values (1, 8, 'Stefan', 'Szymañski')
insert into Pracownicy values (3, 8, 'Zuzanna', 'Paw³owska')
insert into Pracownicy values (3, 8, 'Ignacy', 'Marciniak')
insert into Pracownicy values (4, 8, 'Andrzej', 'Rutkowski')
insert into Pracownicy values (5, 8, 'Patryk', 'Pawlik')

select *from Pracownicy


-- Inserty do tabeli hotele --

insert into Hotele values (1, 'Grand')
insert into Hotele values (1, 'Darium')

insert into Hotele values (2, 'Grand')
insert into Hotele values (2, 'Bohema')
insert into Hotele values (2, 'M³ode lata')

insert into Hotele values (3, 'Wielki')
insert into Hotele values (3, 'Ma³y')
insert into Hotele values (3, 'Na uboczu')
insert into Hotele values (3, 'Skraj lasu')
insert into Hotele values (3, 'Spokój i cisza')

insert into Hotele values (4, 'Central')
insert into Hotele values (4, 'Cichy hotel')
insert into Hotele values (4, 'Malutki hotelik')

insert into Hotele values (5, 'M¹drala hotel')
insert into Hotele values (5, 'Dreaming spy hotel')

insert into Hotele values (6, 'Grand')

insert into Hotele values (7, 'Zbawienie')

insert into Hotele values (8, 'Reinkarnacja hotel')
insert into Hotele values (8, 'Zacisze')

select *from Hotele



-- Inserty do tabeli pokoje --

insert into Pokoje values (1, 1, 0)
insert into Pokoje values (1, 2, 0)
insert into Pokoje values (1, 3, 0)
insert into Pokoje values (1, 4, 0)
insert into Pokoje values (1, 5, 0)
insert into Pokoje values (1, 6, 0)
insert into Pokoje values (1, 7, 0)
insert into Pokoje values (1, 1, 1)
insert into Pokoje values (1, 2, 1)
insert into Pokoje values (1, 3, 1)
insert into Pokoje values (1, 4, 1)
insert into Pokoje values (1, 5, 1)
insert into Pokoje values (1, 6, 1)

insert into Pokoje values (2, 1, 0)
insert into Pokoje values (2, 2, 0)
insert into Pokoje values (2, 3, 0)
insert into Pokoje values (2, 4, 0)
insert into Pokoje values (2, 1, 1)
insert into Pokoje values (2, 2, 1)

insert into Pokoje values (3, 1, 0)
insert into Pokoje values (3, 2, 0)
insert into Pokoje values (3, 3, 0)
insert into Pokoje values (3, 4, 0)
insert into Pokoje values (3, 5, 0)
insert into Pokoje values (3, 6, 0)
insert into Pokoje values (3, 7, 0)
insert into Pokoje values (3, 1, 1)
insert into Pokoje values (3, 2, 1)
insert into Pokoje values (3, 3, 1)
insert into Pokoje values (3, 4, 1)
insert into Pokoje values (3, 5, 1)
insert into Pokoje values (3, 6, 1)

insert into Pokoje values (3, 1, 2)
insert into Pokoje values (3, 2, 2)
insert into Pokoje values (3, 3, 2)
insert into Pokoje values (3, 4, 2)
insert into Pokoje values (3, 5, 2)
insert into Pokoje values (3, 6, 2)

insert into Pokoje values (4, 1, 0)
insert into Pokoje values (4, 2, 0)
insert into Pokoje values (4, 3, 0)
insert into Pokoje values (4, 4, 0)

insert into Pokoje values (5, 1, 0)
insert into Pokoje values (5, 2, 0)

insert into Pokoje values (6, 1, 0)
insert into Pokoje values (6, 2, 0)
insert into Pokoje values (6, 3, 0)
insert into Pokoje values (6, 4, 0)

insert into Pokoje values (6, 1, 1)
insert into Pokoje values (6, 2, 1)
insert into Pokoje values (6, 3, 1)
insert into Pokoje values (6, 4, 1)
insert into Pokoje values (6, 5, 1)
insert into Pokoje values (6, 6, 1)
insert into Pokoje values (6, 7, 1)
insert into Pokoje values (6, 8, 1)
insert into Pokoje values (6, 9, 1)
insert into Pokoje values (6, 10, 1)
insert into Pokoje values (6, 11, 1)
insert into Pokoje values (6, 12, 1)

insert into Pokoje values (7, 1, 0)
insert into Pokoje values (7, 2, 0)
insert into Pokoje values (7, 3, 1)
insert into Pokoje values (7, 4, 2)

insert into Pokoje values (8, 1, 0)
insert into Pokoje values (8, 2, 0)
insert into Pokoje values (8, 3, 0)
insert into Pokoje values (8, 4, 1)
insert into Pokoje values (8, 5, 1)
insert into Pokoje values (8, 6, 1)
insert into Pokoje values (8, 7, 2)
insert into Pokoje values (8, 8, 2)
insert into Pokoje values (8, 9, 2)
insert into Pokoje values (8, 10, 3)
insert into Pokoje values (8, 11, 3)
insert into Pokoje values (8, 12, 3)

insert into Pokoje values (9, 1, 0)
insert into Pokoje values (9, 2, 0)
insert into Pokoje values (9, 3, 0)
insert into Pokoje values (9, 4, 1)
insert into Pokoje values (9, 5, 1)
insert into Pokoje values (9, 6, 1)
insert into Pokoje values (9, 7, 2)
insert into Pokoje values (9, 8, 2)
insert into Pokoje values (9, 9, 2)
insert into Pokoje values (9, 10, 3)
insert into Pokoje values (9, 11, 3)
insert into Pokoje values (9, 12, 3)
insert into Pokoje values (9, 13, 4)
insert into Pokoje values (9, 14, 4)
insert into Pokoje values (9, 15, 4)
insert into Pokoje values (9, 16, 4)
insert into Pokoje values (9, 17, 5)
insert into Pokoje values (9, 18, 5)
insert into Pokoje values (9, 19, 5)
insert into Pokoje values (9, 20, 5)
insert into Pokoje values (9, 21, 5)
insert into Pokoje values (9, 22, 6)
insert into Pokoje values (9, 23, 6)
insert into Pokoje values (9, 24, 6)

insert into Pokoje values (10, 1, 0)
insert into Pokoje values (10, 2, 0)
insert into Pokoje values (10, 3, 0)
insert into Pokoje values (10, 4, 0)

insert into Pokoje values (11, 1, 0)
insert into Pokoje values (11, 2, 0)
insert into Pokoje values (11, 3, 0)
insert into Pokoje values (11, 4, 1)
insert into Pokoje values (11, 5, 1)
insert into Pokoje values (11, 6, 2)
insert into Pokoje values (11, 7, 2)

insert into Pokoje values (12, 1, 0)
insert into Pokoje values (12, 2, 0)
insert into Pokoje values (12, 3, 0)
insert into Pokoje values (12, 4, 1)
insert into Pokoje values (12, 5, 1)
insert into Pokoje values (12, 6, 1)
insert into Pokoje values (12, 7, 2)
insert into Pokoje values (12, 8, 2)
insert into Pokoje values (12, 9, 2)
insert into Pokoje values (12, 10, 3)
insert into Pokoje values (12, 11, 3)
insert into Pokoje values (12, 12, 3)
insert into Pokoje values (12, 13, 4)
insert into Pokoje values (12, 14, 4)
insert into Pokoje values (12, 15, 4)
insert into Pokoje values (12, 16, 4)
insert into Pokoje values (12, 17, 5)
insert into Pokoje values (12, 18, 5)
insert into Pokoje values (12, 19, 5)
insert into Pokoje values (12, 20, 5)

insert into Pokoje values (13, 1, 0)
insert into Pokoje values (13, 2, 0)
insert into Pokoje values (13, 3, 0)

insert into Pokoje values (14, 1, 0)
insert into Pokoje values (14, 2, 0)
insert into Pokoje values (14, 3, 0)
insert into Pokoje values (14, 4, 1)
insert into Pokoje values (14, 5, 1)
insert into Pokoje values (14, 6, 1)

insert into Pokoje values (15, 1, 1)
insert into Pokoje values (15, 2, 1)
insert into Pokoje values (15, 3, 1)
insert into Pokoje values (15, 4, 1)
insert into Pokoje values (15, 5, 2)
insert into Pokoje values (15, 6, 2)
insert into Pokoje values (15, 7, 2)
insert into Pokoje values (15, 8, 2)
insert into Pokoje values (15, 9, 3)
insert into Pokoje values (15, 10, 3)

insert into Pokoje values (16, 1, 0)
insert into Pokoje values (16, 2, 0)
insert into Pokoje values (16, 3, 0)
insert into Pokoje values (16, 4, 0)
insert into Pokoje values (16, 1, 1)

insert into Pokoje values (17, 1, 1)
insert into Pokoje values (17, 2, 1)
insert into Pokoje values (17, 3, 1)
insert into Pokoje values (17, 4, 1)
insert into Pokoje values (17, 5, 1)
insert into Pokoje values (17, 6, 1)
insert into Pokoje values (17, 7, 1)
insert into Pokoje values (17, 8, 1)

insert into Pokoje values (18, 1, 0)
insert into Pokoje values (18, 2, 0)
insert into Pokoje values (18, 3, 0)
insert into Pokoje values (18, 4, 0)
insert into Pokoje values (18, 5, 0)
insert into Pokoje values (18, 6, 0)

insert into Pokoje values (19, 1, 0)
insert into Pokoje values (19, 2, 0)
insert into Pokoje values (19, 3, 1)
insert into Pokoje values (19, 4, 1)
insert into Pokoje values (19, 5, 1)
insert into Pokoje values (19, 6, 1)
insert into Pokoje values (19, 7, 1)
insert into Pokoje values (19, 8, 1)
insert into Pokoje values (19, 9, 1)
insert into Pokoje values (19, 10, 1)
insert into Pokoje values (19, 11, 1)
insert into Pokoje values (19, 12, 2)
insert into Pokoje values (19, 13, 2)
insert into Pokoje values (19, 14, 2)
insert into Pokoje values (19, 15, 2)
insert into Pokoje values (19, 16, 3)
insert into Pokoje values (19, 17, 3)
insert into Pokoje values (19, 18, 3)
insert into Pokoje values (19, 19, 3)

select *from Pokoje


-- Inserty do tabeli rezerwacje realizujemy za pomoc¹ procedury losujRezerwacje --
-- zdefiniowanej wewnatrz pliku hotele_triggers --

exec losujRezerwacje

select *from Rezerwacje 