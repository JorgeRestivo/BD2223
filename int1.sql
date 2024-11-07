--Lista de todas as Seleçôes e respetivos grupos

.mode columns
.headers on
.nullvalue NULL

select nomeSelecao as "Seleção", idGrupo as "Grupo"
from Selecao
order by idGrupo, nomeSelecao;