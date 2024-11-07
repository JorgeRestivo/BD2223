CREATE TRIGGER if not exists PONTOSA
    AFTER INSERT ON Jogo
    WHEN new.golos1 > new.golos2
    BEGIN
        UPDATE Jogo SET pontosSelecao1 = 3, pontosSelecao2 = 0
                    WHERE idJogo = new.idJogo AND new.faseTorneio in ('Jornada 1 da Fase de grupos', 'Jornada 2 da Fase de grupos', 'Jornada 3 da Fase de grupos');
        UPDATE Jogo SET pontosSelecao1 = 'V', pontosSelecao2 = 'D'
                    WHERE idJogo = new.idJogo AND new.faseTorneio in ('Oitavos-final', 'Quartos-final', 'Semi-final', '3/4 lugar', 'Final');
    END;

CREATE TRIGGER if not exists PONTOSB
    AFTER INSERT ON Jogo
    WHEN new.golos1 < new.golos2
    BEGIN
        UPDATE Jogo SET pontosSelecao1 = 0, pontosSelecao2 = 3
                    WHERE idJogo = new.idJogo AND new.faseTorneio in ('Jornada 1 da Fase de grupos', 'Jornada 2 da Fase de grupos', 'Jornada 3 da Fase de grupos');
        UPDATE Jogo SET pontosSelecao1 = 'D', pontosSelecao2 = 'V'
                    WHERE idJogo = new.idJogo AND new.faseTorneio in ('Oitavos-final', 'Quartos-final', 'Semi-final', '3/4 lugar', 'Final');
    END;

CREATE TRIGGER if not exists PONTOSC
    AFTER INSERT ON Jogo
    WHEN new.golos1 = new.golos2
    BEGIN
        UPDATE Jogo SET pontosSelecao1 = 1, pontosSelecao2 = 1
                    WHERE idJogo = new.idJogo AND new.faseTorneio in ('Jornada 1 da Fase de grupos', 'Jornada 2 da Fase de grupos', 'Jornada 3 da Fase de grupos');
        UPDATE Jogo SET pontosSelecao1 = 'E', pontosSelecao2 = 'E'
                    WHERE idJogo = new.idJogo AND new.faseTorneio in ('Oitavos-final', 'Quartos-final', 'Semi-final', '3/4 lugar', 'Final');
    END;
