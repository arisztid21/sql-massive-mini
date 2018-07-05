drop table if exists heroes;

create table heroes (
    id serial primary key,
    name text not null unique,
    street_name text,
    age INTEGER,
    powers text,
    picture_url text
);

INSERT INTO heroes (name, street_name, age, powers, picture_url) 
values ('Morty Smith', 'Morty', 15, 'stolen portal gun, inifinite variations, annoying voice, knowledge of alien races, super smart Grandpa', 'https://pbs.twimg.com/profile_images/693986726058917888/piI-BFuY.jpg');

insert into heroes (name, street_name, age, powers, picture_url) 
values ('thor', 'arisztid', 20, 'hammer', 'lightning', 'super strength', 'super good looks', 'can spit that fire bo-ah','https://files.slack.com/files-pri/T039C2PUY-FBK1R1TEG/image.png');

insert into heroes (name, street_name, age, powers, picture_url) 
values ('Cuphead', 'Cuppie', 20, 'Milk shooting, jumping, dodging', 'https://http2.mlstatic.com/camiseta-ou-baby-look-cuphead-jogo-xbox-one-game-modelo-7-D_NQ_NP_938682-MLB26383675962_112017-F.jpg');

insert into heroes (name, street_name, age, powers, picture_url) 
values ('Batman', 'Bruce', 45, 'super-rich, tool-belt, cool-buttler', 'https://www.lego.com/en-us/batmanmovie/characters');

insert into heroes (name, street_name, age, powers, picture_url) 
values ('Gamora', 'Danielle', 30, 'guns, swords', 'https://www.herocollector.com/uploads/media/guardians_of_the_galaxy_zoe_saldana_as_gamora.jpg');
