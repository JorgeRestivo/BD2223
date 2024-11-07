DELETE FROM Jogo WHERE idJogo = '71' OR idJogo = '72' OR idJogo = '73' OR idJogo = '74' OR idJogo = '75' OR idJogo = '76';

SELECT * FROM Jogo WHERE idJogo = 71 or idJogo = 72 or idJogo = 73;

INSERT INTO Jogo (idJogo, faseTorneio, estadio, dataJogo, nomeSelecao1, nomeSelecao2, golos1, golos2, pontosSelecao1, pontosSelecao2) VALUES (71, "Jornada 1 da Fase de grupos", "Al Bayt Stadium", "2022-11-20", "Catar", "Equador", 2, 0, "?", "?");
INSERT INTO Jogo (idJogo, faseTorneio, estadio, dataJogo, nomeSelecao1, nomeSelecao2, golos1, golos2, pontosSelecao1, pontosSelecao2) VALUES (72, "Jornada 1 da Fase de grupos", "Al Bayt Stadium", "2022-11-20", "Catar", "Equador", 0, 2, "?", "?");
INSERT INTO Jogo (idJogo, faseTorneio, estadio, dataJogo, nomeSelecao1, nomeSelecao2, golos1, golos2, pontosSelecao1, pontosSelecao2) VALUES (73, "Jornada 1 da Fase de grupos", "Al Bayt Stadium", "2022-11-20", "Catar", "Equador", 0, 0, "?", "?");


INSERT INTO Jogo (idJogo, faseTorneio, estadio, dataJogo, nomeSelecao1, nomeSelecao2, golos1, golos2, pontosSelecao1, pontosSelecao2) VALUES (74, "Final", "Al Bayt Stadium", "2022-11-20", "Portugal", "Catar", 5, 0, "?", "?");
INSERT INTO Jogo (idJogo, faseTorneio, estadio, dataJogo, nomeSelecao1, nomeSelecao2, golos1, golos2, pontosSelecao1, pontosSelecao2) VALUES (75, "Final", "Al Bayt Stadium", "2022-11-20", "Portugal", "Catar", 0, 1, "?", "?");
INSERT INTO Jogo (idJogo, faseTorneio, estadio, dataJogo, nomeSelecao1, nomeSelecao2, golos1, golos2, pontosSelecao1, pontosSelecao2) VALUES (76, "Final", "Al Bayt Stadium", "2022-11-20", "Portugal", "Catar", 9, 9, "?", "?");

SELECT * FROM Jogo WHERE idJogo = 71 OR idJogo = 72 OR idJogo = 73 OR idJogo = 74 OR idJogo = 75 OR idJogo = 76;