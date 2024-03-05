CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;


use cadastro; 

create table pessoas (
nome varchar(20),
idade tinyint,
sexo char (1),
peso float,
altura float,
nacionalidade varchar(20)
);

describe pessoas; 



