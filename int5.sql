-- melhor marcador do mundial

.mode columns
.headers on
.nullvalue NULL

select j.nomeJogador as "Jogador", count(*) as "Golos", j.nomeSelecao as "Seleção"
from Jogadores j join Golos g on j.idJogador = g.idJogador
    join Jogo on Jogo.idJogo = g.idJogo
group by j.nomeJogador
order by 2 desc
limit 1;