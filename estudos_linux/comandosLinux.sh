#################### curso linux ##################################

 pwd  = "para saber em qual diretório"
 ls = "Lista de diretório" 
 echo = "repetir, criar uma arquivo"
 cat = "ler o arquivo"
 -la= " Ler todos os arquivos que possui extenção (.TXT)"
 clear = "Limpar a tela"
 man = " comando de ajuda para ensinar sobre determinados comando (manual)"
 cd = " Para entrear em outro diretório, para voltar ao diretório raiz"
 cd .. = "Para voltar ao arquivo anteriro"
 cd ~ = "comando que leva para o diretório hoot"
 mkdir = " criar um diretório"
 rmdir = " Remove um diretório(Apenas diretórios vazios)"
 rm = "Remove um arquivo"
 rm -r = "Remove recursivamente, ou seja remove todos os arquivos que estão dentro do diretório"
 mv = "Renomeia diretório,  move diretórios"
 zip = "Compcta"
 unzip = "Descompácta"
 head -n 3 ="Imprime no terminal as três primeiras linhas que foram selecionadas para um testo dentro do diretório"
 tail-n 3 ="Imprime no terminal as três últimas linhas que foram selecionadas para um testo dentro do diretório"
 
 tar -czf = " O parâmetro -c indica ao comando tar que desejamos criar um novo arquivo.
O comando tar apenas empacota vários arquivos em um único arquivo, sem realizar compactação, 
e por isso passamos o parâmetro -z para indicar que queremos, além de criar um único arquivo,
realizar um processo de compactação utilizando o formato .gz. Quando compactamos podemos reduzir o tamanho.
O parâmetro -f indica que compactaremos para um arquivo."
 
 tar -cxz ="Para descompactar o arquivo .tar.gz, substituímos o -c que usamos antes por -x,
para indicar que iremos extrair os arquivos.
O f indica que lemos de um arquivo. E o z, que o arquivo está compactado.
O parâmetro z na verdade é ignorado na extração, no man fala que só funciona no creation mode.
Logo poderíamos fazer: tar -xf work.tar.gz."

##################################### grancursos_Linux ###############################
## Professor Cesar Ciello ##
 
cd ~ = "comando que leva para o diretório hoot"
ls =  "Listar diretórios"
ls - la = "Listar diretórios ocutos"
cat ~/.bash_history  ou history= " Lista o histórico de comando em cada terminal"
!! = "executa o útimo comando"
!n = "executa o comando da linha no arquivo .bash_history"
!texto = "Executa o comando mais recente que inicia com o texto"
!?texto = "executa o comando mais recente que contém o texto"
Ctrl r texto = "procura comandos que contenham o 'texto' "
Alt M < = "vai para o início do arquivo .bash_histoty"
Alt M > = "Vai para o fim do arquivo .bash_histoty"
########## Caracteres coringas #############
* = "Faz referência a um nome completo/ rstante de um arquivo/diretóri"
? = "Faz referência a uma faixa de caracteres de um arquivo/diretório"
lsblk = "Exibe todos os hardwares de blocos"