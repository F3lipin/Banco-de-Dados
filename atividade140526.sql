create table obra(
   id_obra serial primary key,
   codigo_obra varchar(10) not null,
   nome_obra varchar(200) not null,
   fator_k numeric(5,4) not null,
   bdi numeric (6,4) not null
  );
  
  create table item(
    id_item serial primary key,
    codigo_item varchar(20) not null,
    descricao varchar(300) not null,
    unidade varchar(5) not null,
    preco_unitario numeric(15,2) not null
  );
  
  create table item_orcado(
    id_orcado serial primary key,
    id_obra integer not null,
    id_item integer not null,
    quantidade numeric(15,4) not null,
    foreign key (id_obra) references obra (id_obra),
    foreign key (id_item) references item (id_obra)
  );
  
 insert into obra (codigo_obra, nome_obra, fator_k, bdi) values ('123456','casa_de_nk',0.7600,0.2404);
