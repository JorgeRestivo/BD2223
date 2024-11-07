--Sendo que temos uma generalização completa e disjunta, no passo da criação do modelo relacional, a estratégia que mais se adequa para a finalidade que desejamos é "Object Oriented", por isso, 
--                                                                                 segui os passos do ppt (slide 23-25) "T - From UML to Relations V02" que se encontra no moodle, 
--                                                                                e eliminei a tabela Jogo por ser desnecessária (generalização completa e disjunta).
-- Ao realizar o passo acima, percebi que tinhamos um problema que era a ligação dos golos ao jogo pois se só tivessemos as tabelas JogoFaseGrupos e JogoEliminatoria teriamos de ter duas tabelas Golo
--                                                                                 para cada uma aceder à chave das tabelas dos jogos(numeroJornada e tipoEliminatoria)
--                                                                                 Só vejo, duas soluções, ou criamos duas tabelas de golos (GoloFaseGrupos e GoloElminatoria) ou 
--                                                                                 implemento na mesma a tabela Jogo que fica guardada à parte sem grande utilidade e sem qualquer informação
--                                                                                 do tipo de jogo que é(fase grupos ou eliminatoria) mas que serve para associar o idJogo ao golo, sabendo em que jogo
--                                                                                      foi marcado o golo.

-- Implementar query para dar update aos pontos ganhos num jogo por equipa, dependendo do numero de golos

pragma foreign_keys = off;

drop table if exists Selecao;

drop table if exists Jogadores;

drop table if exists Jogo;

drop table if exists Golos;

drop table if exists Grupo;



.mode columns
pragma foreign_keys = on;


create table Selecao(
    nomeSelecao varchar(50) PRIMARY key NOT NULL,
    idGrupo integer,
    FOREIGN key (idGrupo) REFERENCES Grupo (idGrupo)
);

create table Jogadores(
    idJogador integer PRIMARY KEY NOT NULL,
    nomeJogador varchar(100) NOT NULL,
    posicao varchar(2) NOT NULL,
    numero integer NOT NULL,
    nomeSelecao varchar(50) NOT NULL,
    CONSTRAINT chk_idJogador CHECK (idJogador > 0),
    CONSTRAINT posicao CHECK (posicao IN ("GR", "DE", "DC", "DD", "ME", "MC", "MD", "PE", "PD", "PL")),
    CONSTRAINT numero CHECK (numero >= 1)
);

create table Jogo (
    idJogo integer primary key NOT NULL,
    faseTorneio varchar(50) NOT NULL,
    estadio varchar(50) NOT NULL,
    dataJogo date NOT NULL,
    nomeSelecao1 varchar(50) NOT NULL,
    nomeSelecao2 varchar(50) NOT NULL,
    golos1 integer NOT NULL,
    golos2 integer NOT NULL,
    pontosSelecao1 varchar(1) NOT NULL,
    pontosSelecao2 varchar(1) NOT NULL,
    CONSTRAINT chk_faseTorneio CHECK (faseTorneio IN("Oitavos-final", "Quartos-final", "Semi-final", "3/4 lugar", "Final", "Jornada 1 da Fase de grupos", "Jornada 2 da Fase de grupos", "Jornada 3 da Fase de grupos")),
    CONSTRAINT chk_golos1 CHECK (golos1 >= 0),
    CONSTRAINT chk_golos2 CHECK (golos2 >= 0),
    CONSTRAINT chk_pontosSelecao1 CHECK (pontosSelecao1 IN("?", "V", "D", "3", "0", "1")),
    CONSTRAINT chk_pontosSelecao2 CHECK (pontosSelecao2 IN("?", "V", "D", "3", "0", "1")),
  	FOREIGN KEY (nomeSelecao1) references Selecao(nomeSelecao),
  	FOREIGN KEY (nomeSelecao2) references Selecao(nomeSelecao)
);


create table Golos (
    idGolo integer PRIMARY KEY NOT NULL,
    idJogo char(9) NOT NULL,
    minuto integer NOT NULL,
    autoGolo integer NOT NULL,
    idJogador integer NOT NULL,
  	FOREIGN KEY (idJogador) references Jogadores(idJogador),
    CONSTRAINT chk_idGolo CHECK (idGolo > 0),
    CONSTRAINT chk_minuto CHECK (minuto > 0 and minuto <= 90 ),
    CONSTRAINT chk_autoGolo CHECK (autoGolo IN (0, 1)),
  	FOREIGN KEY (idjogo) references Jogo(idJogo)
);


create table Grupo (
    idGrupo char(1) PRIMARY KEY NOT NULL,
    CONSTRAINT chk_idGrupo CHECK (idGrupo IN ("A", "B", "C", "D", "E", "F", "G", "H"))  
);