
begin;
insert into tbl_bok (bok_titel, Bok_Sidor, bok_skriven, bok_id)
    values ('Imorgon och imorgon och imorgon', 356, (select Fo_ID from tbl_författare where fo_namn = 'Nova Sjögren'), 5);

rollback;