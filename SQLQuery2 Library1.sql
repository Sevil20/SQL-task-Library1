use DbLibrary
Select BookAuthor, count(BookName) as 'Kitab Sayi' from Books group by BookAuthor
select * from Books
Select BookPublisher, SUM(BookPrice) as 'Kitab Qiymetleri' from Books group by BookPublisher
select BookPublisher, MIN(BookPrice) as 'Ən Ucuz', MAX(BookPrice) as 'Ən Bahalı' from Books group by BookPublisher
select BookPublisher, COUNT(BookName) as 'Kitab Sayısı' 
from Books group by BookPublisher having COUNT(BookName)>2
select BookPublisher, SUM(BookPrice) as 'Kitab Gəliri',
SUM(Tax) as 'Toplam Vergi',
(SUM(BookPrice)-SUM(Tax)) as 'Toplam Gəlir'
from Books group by BookPublisher
having (SUM(BookPrice)-SUM(Tax))<50

