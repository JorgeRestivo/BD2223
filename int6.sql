-- Primeiros 25 golos do mundial

.mode columns
.headers on
.nullvalue NULL

select J2.faseTorneio as 'Fase do Torneio', J2.dataJogo as Data, J2.estadio as Estadio, J.nomeSelecao as Selecao, J.nomeJogador as Jogador, G.minuto as Minuto
from Jogadores J
    join Golos G on J.idJogador = G.idJogador
        join Jogo J2 on J2.idJogo = G.idJogo
order by J2.idJogo, G.minuto, J.nomeJogador
limit 25;