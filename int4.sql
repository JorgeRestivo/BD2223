-- Total de golos por selecao

.mode columns
.headers on
.nullvalue NULL

select j.nomeSelecao as 'Selecao', count(*) as "Total de Golos"
from Jogadores j join Golos g on g.idJogador = j.idJogador
group by j.nomeSelecao
order by "Total de Golos" desc;
