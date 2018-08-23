drop table if exists heroes;

create table heroes (
    id serial primary key,
    name text not null,
    alias text,
    age int,
    powers text,
    picture_url text
);

insert into heroes (name, alias, age, powers, picture_url) values ('T$', 'T-Dawg', 36, 'Meddling with Batman', 'https://amp.thisisinsider.com/images/5b7d39803cccd123008b456e-750-563.jpg');
insert into heroes(name, alias, age, powers, picture_url) values('arisztid', 'steedo', 20, 'super cool guy', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuU8yBJgxSsDqaMESB5trR61YJDeA97OJ_qA_ZBPstS1vPRhRQaw');
