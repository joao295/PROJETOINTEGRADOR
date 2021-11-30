	CREATE DATABASE db_rede_social_g3; 
    
    
    use db_rede_social_g3; 
    
    
    CREATE TABLE tb_usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    nome_completo VARCHAR (255) NOT NULL,
    email VARCHAR (255) NOT NULL,
    senha VARCHAR (15) NOT NULL
    
    );
    
    
    CREATE TABLE tb_postagem  (
    id_postagem INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    aprender VARCHAR (15), 
    ensinar VARCHAR (15),
    didatica BOOLEAN,
    pontosdeexperiencia INT NOT NULL, 
    fk_usuario INT,
    fk_tema INT,
    
    FOREIGN KEY (fk_usuario) REFERENCES tb_usuario(id_usuario),
	FOREIGN KEY (fk_tema) REFERENCES tb_tema(id_tema)
   
   );
   
   
       CREATE TABLE tb_tema  (
    id_tema INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    Ptsaprender INT NOT NULL , 
	Ptsensinar INT NOT NULL

   
   );
   
   
   
    
    