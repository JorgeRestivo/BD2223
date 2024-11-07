--

.mode column
.headers on
.nullvalue NULL

select faseTorneio as 'Fase', estadio as 'Estadio', dataJogo as 'Data', nomeSelecao1 as 'Selecao1', golos1 as 'Golos1', golos2 as 'Golos2', nomeSelecao2 as 'Selecao2'
from Jogo
where abs(golos1 - golos2) >=5
order by idJogo;