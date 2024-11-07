--Neste ficheiro coloquei:
    -- 8 seleções na tebela Seleções;
    -- 11 jogadores de 4 seleções na tebela Jogadores;
    -- resultados de 2 jogos da fase de grupos na tebela JogosFaseGrupos, e respetiva cópia para a tabela Jogo sem saber que tipo de jogo foi;
    -- resultado de 1 jogo das eliminatórias na tebela JogosEliminatoria, e respetiva cópia para a tabela Jogo sem saber que tipo de jogo foi;
    -- golos marcados de um jogo (idJogo) na tabela Golo;
    -- Todos os grupos que participam (gostava de fazer os grupos com a sua constituição(4 equipas));
    -- *******faltam as tabelas dos golos com o idJogo, minuto, se foi autogolo (bool[1-true,0-false]),marcador*******

-- Implementar query para dar update aos pontos ganhos num jogo por equipa, dependendo do numero de golos;


pragma foreign_keys = on;


insert into Grupo values("A");
insert into Grupo values("B");
insert into Grupo values("C");
insert into Grupo values("D");
insert into Grupo values("E");
insert into Grupo values("F");
insert into Grupo values("G");
insert into Grupo values("H");

insert into Selecao values("Holanda","A");
insert into Selecao values("Senegal","A");
insert into Selecao values("Equador","A");
insert into Selecao values("Catar","A");

insert into Selecao values("Inglaterra","B");
insert into Selecao values("Estados Unidos","B");
insert into Selecao values("Irao","B");
insert into Selecao values("Pais de Gales","B");

insert into Selecao values("Argentina","C");
insert into Selecao values("Arabia Saudita","C");
insert into Selecao values("Mexico","C");
insert into Selecao values("Polonia","C");

insert into Selecao values("Franca","D");
insert into Selecao values("Australia","D");
insert into Selecao values("Tunisia","D");
insert into Selecao values("Dinamarca","D");

insert into Selecao values("Japao","E");
insert into Selecao values("Espanha","E");
insert into Selecao values("Alemanha","E");
insert into Selecao values("Costa Rica","E");

insert into Selecao values("Marrocos","F");
insert into Selecao values("Croacia","F");
insert into Selecao values("Belgica","F");
insert into Selecao values("Canada","F");

insert into Selecao values("Brasil","G");
insert into Selecao values("Suica","G");
insert into Selecao values("Camaroes","G");
insert into Selecao values("Servia","G");

insert into Selecao values("Portugal","H");
insert into Selecao values("Gana","H");
insert into Selecao values("Uruguai","H");
insert into Selecao values("Coreia do Sul","H");



insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(56, "Andries Noppert", "GR", 21, "Senegal");
insert into Jogadores values(57, "Denzel Dumfries", "DE", 22, "Senegal");
insert into Jogadores values(58, "Virgil Van Dijk", "DC", 23, "Senegal");
insert into Jogadores values(59, "Matthijs De Ligt", "DC", 24, "Senegal");
insert into Jogadores values(60, "Daley Blind", "DD", 25, "Senegal");
insert into Jogadores values(61, "Frenkie De Jong", "ME", 26, "Senegal");
insert into Jogadores values(62, "Davy Klaassen", "MC", 27, "Senegal");
insert into Jogadores values(63, "Cody Gakpo", "MD", 28, "Senegal");
insert into Jogadores values(64, "Memphis Depay", "PE", 29, "Senegal");
insert into Jogadores values(65, "Luuk De Jong", "PD", 30, "Senegal");
insert into Jogadores values(66, "Steven Bergwijn", "PL", 31, "Senegal");

insert into Jogadores values(67, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(68, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(69, "Virgil Van Dijk", "DC", 23, "Holanda");
/*insert into Jogadores values(70, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");

insert into Jogadores values(45, "Andries Noppert", "GR", 21, "Holanda");
insert into Jogadores values(46, "Denzel Dumfries", "DE", 22, "Holanda");
insert into Jogadores values(47, "Virgil Van Dijk", "DC", 23, "Holanda");
insert into Jogadores values(48, "Matthijs De Ligt", "DC", 24, "Holanda");
insert into Jogadores values(49, "Daley Blind", "DD", 25, "Holanda");
insert into Jogadores values(50, "Frenkie De Jong", "ME", 26, "Holanda");
insert into Jogadores values(51, "Davy Klaassen", "MC", 27, "Holanda");
insert into Jogadores values(52, "Cody Gakpo", "MD", 28, "Holanda");
insert into Jogadores values(53, "Memphis Depay", "PE", 29, "Holanda");
insert into Jogadores values(54, "Luuk De Jong", "PD", 30, "Holanda");
insert into Jogadores values(55, "Steven Bergwijn", "PL", 31, "Holanda");



*/

insert into Jogadores values(1, "YE", "GR", 21, "Gana");
insert into Jogadores values(2, "Drake", "DE", 22, "Gana");
insert into Jogadores values(3, "Dwayne Johnson", "DC", 23, "Gana");
insert into Jogadores values(4, "Michael Jackson", "DC", 24, "Gana");
insert into Jogadores values(5, "Bob Marley", "DD", 25, "Gana");
insert into Jogadores values(6, "Jay Z", "ME", 26, "Gana");
insert into Jogadores values(7, "Gordon Ramsey", "MC", 27, "Gana");
insert into Jogadores values(8, "Snoop Dogg", "MD", 28, "Gana");
insert into Jogadores values(9, "Will Smith", "PE", 29, "Gana");
insert into Jogadores values(10, "Herman Jose", "PD", 30, "Gana");
insert into Jogadores values(11, "Kim Kardashian", "PL", 31, "Gana");

insert into Jogadores values(12, "Diogo Costa", "GR", 99, "Portugal");
insert into Jogadores values(13, "Jose Saramago", "DE", 4, "Portugal");
insert into Jogadores values(14, "Luis de Camoes", "DC", 2, "Portugal");
insert into Jogadores values(15, "Jose Mourinho", "DC", 3, "Portugal");
insert into Jogadores values(16, "Antonio Costa", "DD", 6, "Portugal");
insert into Jogadores values(17, "Diogo Pissara", "ME", 16, "Portugal");
insert into Jogadores values(18, "Quim Barreiros", "MC", 8, "Portugal");
insert into Jogadores values(19, "Batatoon", "MD", 10, "Portugal");
insert into Jogadores values(20, "Ric Fazeres", "PE", 9, "Portugal");
insert into Jogadores values(21, "Ishowspeed", "PD", 11, "Portugal");
insert into Jogadores values(22, "Cristiano Ronaldo", "PL", 7, "Portugal");

insert into Jogadores values(23, "Severo Loureiro", "GR", 32, "Argentina");
insert into Jogadores values(24, "Dalton Correia", "DE", 33, "Argentina");
insert into Jogadores values(25, "Severo Loureiro", "DC", 34, "Argentina");
insert into Jogadores values(26, "Carlos Amaral", "DC", 35, "Argentina");
insert into Jogadores values(27, "Iuri Pacheco", "DD", 36, "Argentina");
insert into Jogadores values(28, "Gilberto Anjos", "ME", 37, "Argentina");
insert into Jogadores values(29, "Nicolau Melo", "MC", 38, "Argentina");
insert into Jogadores values(30, "Arthur Borges", "MD", 39, "Argentina");
insert into Jogadores values(31, "Yuri Teixeira", "PE", 40, "Argentina");
insert into Jogadores values(32, "IManuel Barros", "PD", 41, "Argentina");
insert into Jogadores values(33, "Lionel Messi", "PL", 42, "Argentina");

insert into Jogadores values(34, "Ajit Coelho", "GR", 43, "Mexico");
insert into Jogadores values(35, "Pasqual Miranda", "DE", 44, "Mexico");
insert into Jogadores values(36, "Dario Pinho", "DC", 45, "Mexico");
insert into Jogadores values(37, "Devi Araujo", "DC", 46, "Mexico");
insert into Jogadores values(38, "Salim Santos", "DD", 47, "Mexico");
insert into Jogadores values(39, "Michel Pereira", "ME", 47, "Mexico");
insert into Jogadores values(40, "Pietro Ferreira", "MC", 48, "Mexico");
insert into Jogadores values(41, "Waldomiro Fonseca", "MD", 50, "Mexico");
insert into Jogadores values(42, "Yoko Lopes", "PE", 51, "Mexico");
insert into Jogadores values(43, "Bernardino Soares", "PD", 52, "Mexico");
insert into Jogadores values(44, "Teo Rocha", "PL", 53, "Mexico");

insert into Jogo values(1, "Jornada 1 da Fase de grupos", "Al Bayt Stadium", "2022-11-20", "Catar", "Equador", 0, 2, "?", "?");

insert into Jogo values(2, "Jornada 1 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(3, "Jornada 1 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(4, "Jornada 1 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");
/*
insert into Jogo values(1, "Jornada 1 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 1 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 1 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 1 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 1 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 1 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 1 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 1 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 1 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 1 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 1 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 1 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 2 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 2 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 2 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 2 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 2 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 2 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 2 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 2 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 2 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 2 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 2 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 2 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 2 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 2 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 2 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 2 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 3 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 3 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 3 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 3 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 3 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 3 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 3 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 3 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 3 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 3 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 3 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 3 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 3 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 3 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Jornada 3 da Fase de grupos", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Jornada 3 da Fase de grupos", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Oitavos-final", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Oitavos-final", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Oitavos-final", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Oitavos-final", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Oitavos-final", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Oitavos-final", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Oitavos-final", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Oitavos-final", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Quartos-final", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Quartos-final", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Quartos-final", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Quartos-final", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

insert into Jogo values(1, "Semi-final", "Education City Stadium", "2022-11-24", "Portugal", "Gana", 3, 0, "?", "?");
insert into Jogo values(2, "Semi-final", "Al Janoub Stadium", "2022-11-22", "Argentina", "Mexico", 2, 1,"?","?");

*/

insert into Jogo values(62, "3/4 lugar", "Education City Stadium", "2022-11-24", "Holanda", "Gana", 3, 2, "?", "?");


insert into Jogo values(63, "Final", "Lusail Stadium", "2022-12-18", "Portugal", "Argentina", 5, 0,"?","?");



/* ###QUANTOS GOLOS QUISERMOS###
insert into Golos values(41, 63, 2, 0, 22);
insert into Golos values(42, 63, 10, 0, 22);
insert into Golos values(43, 63, 26, 0, 22);
insert into Golos values(44, 63, 86, 0, 22);
insert into Golos values(45, 63, 90, 0, 22);
insert into Golos values(41, 63, 2, 0, 22);
insert into Golos values(42, 63, 10, 0, 22);
insert into Golos values(43, 63, 26, 0, 22);
insert into Golos values(44, 63, 86, 0, 22);
insert into Golos values(45, 63, 90, 0, 22);
insert into Golos values(41, 63, 2, 0, 22);
insert into Golos values(42, 63, 10, 0, 22);
insert into Golos values(43, 63, 26, 0, 22);
insert into Golos values(44, 63, 86, 0, 22);
insert into Golos values(45, 63, 90, 0, 22);
insert into Golos values(41, 63, 2, 0, 22);
insert into Golos values(42, 63, 10, 0, 22);
insert into Golos values(43, 63, 26, 0, 22);
insert into Golos values(44, 63, 86, 0, 22);
insert into Golos values(45, 63, 90, 0, 22);
insert into Golos values(41, 63, 2, 0, 22);
insert into Golos values(42, 63, 10, 0, 22);
insert into Golos values(43, 63, 26, 0, 22);
insert into Golos values(44, 63, 86, 0, 22);
insert into Golos values(45, 63, 90, 0, 22);
insert into Golos values(41, 63, 2, 0, 22);
insert into Golos values(42, 63, 10, 0, 22);
insert into Golos values(43, 63, 26, 0, 22);
insert into Golos values(44, 63, 86, 0, 22);*/

insert into Golos values(30, 3, 10, 0, 22);
insert into Golos values(31, 3, 26, 1, 11);
insert into Golos values(32, 3, 86, 1, 11);
insert into Golos values(33, 4, 90, 1, 42);
insert into Golos values(34, 4, 90, 1, 43);
insert into Golos values(35, 4, 2, 1, 33);






insert into Golos values(36, 62, 2, 0, 1);
insert into Golos values(37, 62, 10, 0, 2);
insert into Golos values(38, 62, 24, 0, 67);
insert into Golos values(39, 62, 81, 0, 68);
insert into Golos values(40, 62, 82, 0, 69);


insert into Golos values(41, 63, 2, 0, 22);
insert into Golos values(42, 63, 10, 0, 22);
insert into Golos values(43, 63, 26, 0, 22);
insert into Golos values(44, 63, 86, 0, 22);
insert into Golos values(45, 63, 90, 0, 22);

