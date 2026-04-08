
Tem dois padrões de agência
- Banco do Brasil
- Bradesco

Agência e cedente ficam juntos e podem ser encontrados pelos dois campos de conteúdolinha. Nas posições 4 até15:
- Remessa
	- Script para listar o conteúdo de um período
		- `SELECT devedor.id_devedor, devedor.conteudoLinhaRemessa FROM retornoarquivo`
	         `inner join retornotitulo on retornoarquivo.id_retornotitulo = retornotitulo.id_retornotitulo`  
	         `inner join titulo on retornotitulo.id_titulo = titulo.id_titulo`  
	         `inner join devedor on devedor.id_titulo = titulo.id_titulo`  
			`Where retornoarquivo.data >= "2026-03-09 00:00:00"`  
			`and sequencial = 1`
- Retorno
	- Script para listar o conteúdo de um período
		- `SELECT titulo.id_retornotitulo, retornotitulo.conteudoLinha FROM retornoarquivo`  
	         `inner join retornotitulo on retornoarquivo.id_retornotitulo = retornotitulo.id_retornotitulo`  
	         `inner join titulo on retornotitulo.id_titulo = titulo.id_titulo`  
			`Where retornoarquivo.data >= "2026-03-09 00:00:00"`


Para vincular a uma agência, é só enviar na remessa o campo agência/cedente preenchido.

Enviado na remessa/retorno = 401053961695415
baseagencia.bancoBrasil =  010539616
Agência cadastrada baseagencia.agencia =  9999