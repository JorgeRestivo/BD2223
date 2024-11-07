-- percentagem de golos da primeira parte do jogo em relação ao jogo inteiro

.mode column
.headers on
.nullvalue NULL

select round(cast(golos1Parte as float) / totalGolos, 4) as 'Percentagem'
from (
    select count(*) as golos1Parte
    from Golos
    where minuto <= 45
    ) join (
        select count(*) as totalGolos
        from Golos
        );
