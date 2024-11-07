--Jogadores de Portugal

.mode columns
.headers on
.nullvalue NULL

select nomeJogador as "Jogador", posicao as "Posição", numero as "  Número", nomeSelecao as "  Seleção"
from Jogadores
where nomeSelecao = "Portugal";