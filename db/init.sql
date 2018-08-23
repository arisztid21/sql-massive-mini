drop table if exists heroes;
create table heroes(
    id serial primary key
    ,name text not null
    ,alias text
    ,age int
    ,powers text
    ,picture_url text
)

insert into heroes(name, alias, age, powers, picture_url) values('arisztid', 'steedo', 20, 'super cool guy', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuU8yBJgxSsDqaMESB5trR61YJDeA97OJ_qA_ZBPstS1vPRhRQaw')
