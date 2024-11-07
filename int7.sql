--media de golos por jogo

.mode columns
.headers on
.nullvalue NULL

select round(avg(soma),2) as "Média de Golos"
from (
        select count(*) as soma
        from Jogadores j join Golos g on g.idJogador = j.idJogador
        group by j.nomeSelecao
    )


