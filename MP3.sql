create database MP3
go
use MP3
go
use master
go
drop database MP3
go
create table Genre
(
GenreID int identity primary key,
Name nvarchar(30)
)
go
create table Artist
(
ArtistID int identity(1,1) primary key,
Name nvarchar(100) not null,
)
go
create table Song
(
SongId int identity(1,1) primary key,
SongName nvarchar(100) not null,
Aid int,
ALid int,
Gid int,
year int,
link nvarchar(100) not null,
Constraint FK_SA foreign key (Aid) references Artist(ArtistId),
Constraint FK_Genre foreign key (Gid) references Genre(GenreID),
Constraint FK_Album foreign key (Alid) references Album(AlbumId)
)
go
create table Album(
AlbumId int identity(1,1) primary key,
AlbumName  nvarchar(100) not null
)
go
create table Playlist(
PlaylistId int primary key ,
PlaylistName  nvarchar(100) not null,
SongId int
Constraint FK_Song foreign key (SongId) references Song(SongId)
)
go
-----------------------------Insert--------------------------------------
insert into Genre values('Pop')
insert into Genre values('Sound track')
insert into Genre values('J-Pop')
insert into Genre values('Game soundtrack')
insert into Genre values('Electronic')
go
select * from Genre
go
drop table Genre
--------------------------------------------------------------------
Insert into Album values ('One last kiss')
Insert into Album values ('Odo(Single)')
Insert into Album values ('Oracle(Single)')
Insert into Album values ('Enemy(From The Series Arcane League of Legends)[Single]')
Insert into Album values ('LiveDevil')
Insert into Album values ('BanGdream! Girls Band Party! Cover Collection')
Insert into Album values ('4U')
Insert into Album values ('Saichouten Peaky&Peaky !!')
go
select * from Album
go
drop table Album
------------------------------------------------------------
Insert into Artist values('Ado')
Insert into Artist values('Utada Hikaru')
Insert into Artist values('Hoàng Tiều Vân')
Insert into Artist values('Imagine Dragons, JID')
Insert into Artist values('Da-iCe ft Subaru Kimura')
Insert into Artist values('Roselia')
Insert into Artist values('Merm4id')
Insert into Artist values('Peaky P-key')
go
select * from Artist 
go
drop table Artist
------------------------------------------------------------
Insert into Song values ('One Last Kiss',2,1,1,2021,'D:\Musictests\One Last Kiss - Utada Hikaru.mp3')
Insert into Song values ('Odo',1,2,1,2021,'‪D:\Musictests\Odo - Ado.mp3')
Insert into Song values ('Oracle',3,3,2,2021,'D:\Musictests\Oracle - Hoang Tieu Van_ HOYO-MiX.mp3')
Insert into Song values ('Enemy',4,4,2,2021,'‪D:\Musictests\Enemy - Imagine Dragons_ JID.mp3')
Insert into Song values ('LiveDevil',5,5,3,2021,'‪D:\Musictests\01.liveDevil.mp3')
Insert into Song values ('This game',6,6,4,2019,'D:\Musictests\08. This game.mp3')
Insert into Song values ('Make some noise!',7,7,5,2021,'‪D:\Musictests\Make some noise_ - Merm4id.mp3')
Insert into Song values ('Wish You Luck',8,8,5,2021,'‪D:\Musictests\Wish You Luck - Peaky P-Key.mp3')
go
select * from Song
go
drop table Song
-----------------------------------------------------------------
INsert into Playlist values (1,'Favorite',1)
INsert into Playlist values (2,'Loop',2)
INsert into Playlist values (3,'BGM',3)
go
select * from Playlist
drop  table Playlist