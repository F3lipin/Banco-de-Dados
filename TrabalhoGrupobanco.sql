-- 1 tables

create table competicao (
    id int auto_increment primary key,
    nome varchar(50),
    tipo varchar(20),
    ano int
);

create table time (
    id int auto_increment primary key,
    nome varchar(50),
    cidade varchar(50),
    estado varchar(50)
);

create table jogador (
    id int auto_increment primary key,
    nome varchar(50),
    posicao varchar(30),
    numero int,
    id_time int,
    foreign key (id_time) references time(id)
);

create table partida (
    id int auto_increment primary key,
    data date,
    estadio varchar(50),
    id_competicao int,
    id_time_casa int,
    id_time_fora int,
    gols_casa int,
    gols_fora int,
    foreign key (id_competicao) references competicao(id),
    foreign key (id_time_casa) references time(id),
    foreign key (id_time_fora) references time(id)
);

create table gol (
    id int auto_increment primary key,
    minuto int,
    tipo varchar(20),
    id_jogador int,
    id_partida int,
    foreign key (id_jogador) references jogador(id),
    foreign key (id_partida) references partida(id)
);

create table classificacao (
    id int auto_increment primary key,
    pontos int,
    vitorias int,
    empates int,
    derrotas int,
    saldo_gols int,
    id_time int,
    id_competicao int,
    foreign key (id_time) references time(id),
    foreign key (id_competicao) references competicao(id)
);

-- 2 inserts

-- competicao
insert into competicao (nome, tipo, ano) values ("Serie A", "Liga", 2024);
insert into competicao (nome, tipo, ano) values ("Serie B", "Liga", 2024);
insert into competicao (nome, tipo, ano) values ("Copa do Brasil", "Copa", 2024);
insert into competicao (nome, tipo, ano) values ("Serie C", "Liga", 2024);
insert into competicao (nome, tipo, ano) values ("Serie D", "Liga", 2024);
insert into competicao (nome, tipo, ano) values ("Libertadores", "Copa", 2024);
insert into competicao (nome, tipo, ano) values ("Sulamericana", "Copa", 2024);
insert into competicao (nome, tipo, ano) values ("Paulista", "Estadual", 2024);
insert into competicao (nome, tipo, ano) values ("Carioca", "Estadual", 2024);
insert into competicao (nome, tipo, ano) values ("Mineiro", "Estadual", 2024);

-- time
insert into time (nome, cidade, estado) values ("Flamengo", "Rio", "RJ");
insert into time (nome, cidade, estado) values ("Palmeiras", "Sao Paulo", "SP");
insert into time (nome, cidade, estado) values ("Corinthians", "Sao Paulo", "SP");
insert into time (nome, cidade, estado) values ("Bahia", "Salvador", "BA");
insert into time (nome, cidade, estado) values ("Gremio", "Porto Alegre", "RS");
insert into time (nome, cidade, estado) values ("Cruzeiro", "Belo Horizonte", "MG");
insert into time (nome, cidade, estado) values ("Vasco", "Rio", "RJ");
insert into time (nome, cidade, estado) values ("Santos", "Santos", "SP");
insert into time (nome, cidade, estado) values ("Fortaleza", "Fortaleza", "CE");
insert into time (nome, cidade, estado) values ("Botafogo", "Rio", "RJ");

-- jogador
insert into jogador (nome, posicao, numero, id_time) values ("Pedro", "Atacante", 9, 1);
insert into jogador (nome, posicao, numero, id_time) values ("Veiga", "Meia", 23, 2);
insert into jogador (nome, posicao, numero, id_time) values ("Yuri", "Atacante", 9, 3);
insert into jogador (nome, posicao, numero, id_time) values ("Cauly", "Meia", 8, 4);
insert into jogador (nome, posicao, numero, id_time) values ("Suarez", "Atacante", 9, 5);
insert into jogador (nome, posicao, numero, id_time) values ("Matheus", "Zagueiro", 3, 6);
insert into jogador (nome, posicao, numero, id_time) values ("Vegetti", "Atacante", 99, 7);
insert into jogador (nome, posicao, numero, id_time) values ("Marcos", "Goleiro", 1, 8);
insert into jogador (nome, posicao, numero, id_time) values ("Lucero", "Atacante", 9, 9);
insert into jogador (nome, posicao, numero, id_time) values ("Tiquinho", "Atacante", 9, 10);

-- partida
insert into partida (data, estadio, id_competicao, id_time_casa, id_time_fora, gols_casa, gols_fora)
values ("2024-05-01", "Maracana", 1, 1, 2, 2, 1);

insert into partida (data, estadio, id_competicao, id_time_casa, id_time_fora, gols_casa, gols_fora)
values ("2024-05-02", "Arena", 1, 3, 4, 1, 1);

insert into partida (data, estadio, id_competicao, id_time_casa, id_time_fora, gols_casa, gols_fora)
values ("2024-05-03", "Beira-Rio", 1, 5, 6, 3, 2);

insert into partida (data, estadio, id_competicao, id_time_casa, id_time_fora, gols_casa, gols_fora)
values ("2024-05-04", "Nilton Santos", 1, 10, 7, 2, 0);

-- gol
insert into gol (minuto, tipo, id_jogador, id_partida) values (10, "normal", 1, 1);
insert into gol (minuto, tipo, id_jogador, id_partida) values (20, "penalti", 2, 1);
insert into gol (minuto, tipo, id_jogador, id_partida) values (30, "normal", 3, 2);
insert into gol (minuto, tipo, id_jogador, id_partida) values (40, "normal", 4, 2);
insert into gol (minuto, tipo, id_jogador, id_partida) values (50, "normal", 5, 3);
insert into gol (minuto, tipo, id_jogador, id_partida) values (60, "normal", 6, 3);
insert into gol (minuto, tipo, id_jogador, id_partida) values (70, "normal", 7, 4);
insert into gol (minuto, tipo, id_jogador, id_partida) values (80, "normal", 8, 4);
insert into gol (minuto, tipo, id_jogador, id_partida) values (85, "normal", 9, 4);
insert into gol (minuto, tipo, id_jogador, id_partida) values (90, "normal", 10, 4);

-- classificacao
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (6, 2, 0, 0, 3, 1, 1);
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (null, 4, 1, 1, 0, 2, 2, 1);
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (null, 3, 1, 0, 1, 3, 3, 1);
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (null, 1, 0, 1, -1, 4, 4, 1);
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (null, 3, 1, 0, 2, 5, 5, 1);
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (null, 0, 0, 2, -3, 6, 6, 1);
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (null, 3, 1, 0, 2, 7, 7, 1);
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (null, 1, 0, 1, -1, 8, 8, 1);
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (null, 3, 1, 0, 2, 9, 9, 1);
insert into classificacao (pontos, vitorias, empates, derrotas, saldo_gols, id_time, id_competicao) values (null, 6, 2, 0, 3, 10, 10, 1);

update classificacao
set pontos = pontos + 3,
    vitorias = vitorias + 1
where id_time = 1 and id_competicao = 1;

delete from jogador
where id = 5;

-- select
select * from time;
select * from jogador;

select 
    t.nome as time,
    c.pontos,
    c.vitorias
from classificacao c
inner join time t
    on c.id_time = t.id;

select 
    j.nome as jogador,
    count(g.id) as gols
from gol g
inner join jogador j
    on g.id_jogador = j.id
group by j.nome
order by gols desc;

select 
    t.nome as time,
    count(g.id) as total_gols
from gol g
inner join jogador j
    on g.id_jogador = j.id
inner join time t
    on j.id_time = t.id
group by t.nome;
