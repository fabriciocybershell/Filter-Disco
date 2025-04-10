[<img src="https://img.shields.io/github/languages/code-size/fabriciocybershell/Filter-Disco">](https://img.shields.io/github/languages/code-size/fabriciocybershell/Filter-Disco)
![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/m/fabriciocybershell/filter-disco/master)


# Disco Cover Script-fu
Este script é um Plug-in que serve para que outras pessoas possam aplicar minhas técnicas de forma automática, padronizada e procedimental. A intenção é replicar alguns efeitos com gradient-map que vi em imagens diversas pela internet, com alguns efeitos de coisas antigas com chuviscos e tons de cores específicas. Consegui criar alguns gradientes personalizados, irei melhorar os existentes e adicionar mais.

O script anota as suas etapas no histórico de desfazer, e as mudanças são realizadas iguais a um procedimento feito manualmente. Isso te permite estudar como o efeito é criado, e também a modificar e ajustar o efeito após ser aplicado, alterando os níveis de opacidade da camada de "Poeira", alterar seu modo de camada, e até mesmo a da camada "Disco Cover", mesclando as cores remapeadas com os tons da original.

Exemplos de antes (Imagem em escala de cinza) e depois (com filtro aplicado), funciona com imagens coloridas normalmente:
### Exemplos:
<p>
	<img src="images/disco_cover.png" width="20%">
	<img src="images/disco cover01.png" width="20%">
	<img src="images/disco cover02.png" width="20%">
	<img src="images/disco cover03.png" width="20%">
</p>
<p>
	<img src="images/disco cover04.png" width="20%">
	<img src="images/disco cover05.png" width="20%">
	<img src="images/disco cover06.png" width="20%">
	<img src="images/disco cover07.png" width="20%">
</p>
<p>
	<img src="images/disco cover08.png" width="20%">
	<img src="images/disco cover09.png" width="20%">
	<img src="images/disco cover10.png" width="20%">	
	<img src="images/disco cover11.png" width="20%">	
</p>

### Modo de acesso e uso:
Para encontrar o plugin, navege até: ``` Filtros > 90's Style > Disco Cover```
A forma de usar está meio confusa, mas é devido a algumas limitações quanto ao Script-fu que será contornada.
Exemplificando:
<p>
	<img src="tutorial/menu.png" width="50%">
</p>

A primeira seleção serve para você escolher entre todos os gradientes do Gimp, incluindo os da extensão, porém, o input (Gradiente Personalizado) "```Selecione um gradiente personalizado```" agrupa apenas os criados para serem utilizados com esta extensão. Se você selecionar algum deles, o Script irá ignorar a seleção do primeiro input (Gradiente). Se você deixar o Gradiente personalizado selecionado na primeira opção "```Selecione um gradiente personalizado```", ele vai levar em consideração a seleção livre do primeiro input de gradiente.
A opção: "```Gradiente Reverso```" inverte a ordem de remapeamento de cores. A forma fácil dele fazer isso é inverter a cor da imagem de cópia original. e aplicar o efeito.

# Instalação
Para instalar, basta fazer: ```make instalar```, para remover, basta fazer: ```make desinstalar```. Ele instalará em sua versão de gimp 2.*, não para a versão 1 e nem a 3. Para o novo gimp, são necessários alguns testes adicionais. Ele funciona, mas quebra, a versão recente solicita retornos de funções inexistentes.
# Instalação manual:
primeiro você deve mover os gradientes para o seu Gimp. Sem eles os gradientes que criei especialmente para este script não irão funcionar (apesar dele permitir você selecionar qualquer gradiente disponível pelo gimp).
Mova para o diretório relacionado ao seu sistema. Para Linux:
```${HOME}/.config/GIMP/version/gradients/```
Para adicionar os scripts, você pode utilizar um diretório a sua escolha, ou usar o diretório padrão do gimp em:
```${HOME}/.config/GIMP/version/scripts/```
