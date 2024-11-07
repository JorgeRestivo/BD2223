create trigger if not exists forbid_repnumber
before insert on Jogadores
when (select numero from Jogadores where nomeSelecao = new.nomeSelecao and numero = new.numero)
begin
select raise(Abort, 'Esse numero já está a ser utilizado por outro jogador da mesma equipa');
end;


/*
For each row
begin
    select
        case
            when exists( select numero from Jogadores where nomeSelecao = new.nomeSelecao and numero = new.numero) then
                raise(Abort, 'Esse numero já está a ser utilizado por outro jogador da mesma equipa');
        end;
end;