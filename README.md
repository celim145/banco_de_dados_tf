# banco_de_dados_tf
marcelo Luis dos Santos Raimundo 6324637
codigo do tf
LIVRO [color: #c2915d] {
	id_livro int pk
	titulo varchar
	autor varchar
	editora varchar
	ano_publicacão varchar
	categoria varchar
}

EMPRESTIMO [color: #111439] {
	Id_emprestimo int pk
	data_emprestimo date
	data_devolução date
	status varchar
	id_livro int *>* LIVRO.id_livro
	id_usuario int *>* USUARIO.id
	id_funcionario int *>* FUNCIONARIO.id_funcionario
}

FUNCIONARIO [color: #f47ea2] {
	id_funcionario int pk
	nome varchar
	email varchar
	celular varchar
}

USUARIO [color: #e66e63] {
	id_usuario int pk *>* EMPRESTIMO.Id_emprestimo
	string varchar(100)
	data date
	email varchar
	telefone varchar
	endereço varchar
}

