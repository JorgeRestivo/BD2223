--Equipas mais penalizadas com autogolos

.mode columns
.headers on
.nullvalue NULL

select a.Seleção as "Seleção", sum(a.Golos) as "  Autogolos"
from (
    select count(*) as "Golos", j.nomeSelecao as "Seleção"
    from Jogadores j join Golos g on j.idJogador = g.idJogador
        join Jogo on Jogo.idJogo = g.idJogo
    where g.autoGolo = "1"
    group by j.nomeJogador
    order by 2 desc) as a
group by 1
order by 2 desc
limit 2;