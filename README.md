[<img src="https://img.shields.io/github/languages/code-size/fabriciocybershell/Filter-Disco">](https://img.shields.io/github/languages/code-size/fabriciocybershell/Filter-Disco)
![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/m/fabriciocybershell/filter-disco/master)


# Disco Cover Script-fu
este script é um Plug-in que serve para que outras pessoas possam aplicar minhas técnicas de forma automática, padronizada e procedimental, a intenção é replicar alguns efeitos com gradient-map que vi em imagens diversas pela internet, com alguns efeitos de coisas antigas com chuviscos e tons de cores específicas. consegui criar alguns gradientes personalizados, irei melhorar os existentes e adicionar mais.

o script anota as suas etapas no histórico de desfazer, e as mudanças são realizadas iguais a um procedimento feito manualmente, isso te permite estudar como o efeito é criado, e também a modificar e ajustar o efeito após ser aplicado, alterando os níveis de oparcidade da camada de "Poeira", alterar seu modo de camada, e até mesmo a da camada "Disco Cover", mesclando as cores remapeadas com os tons da original.

Exeplos de antes (Imagem em ecala de cinza) e depois (com filtro aplicado), funciona com imagens coloridas normalmente:
<img src="images/disco_cover.png" width="10%">
<img src="images/disco cover01.png" width="10%">
<img src="images/disco cover02.png" width="10%">
<img src="images/disco cover03.png" width="10%">
<img src="images/disco cover04.png" width="10%">
<img src="images/disco cover05.png" width="10%">
<img src="images/disco cover06.png" width="10%">
<img src="images/disco cover07.png" width="10%">
<img src="images/disco cover08.png" width="10%">
<img src="images/disco cover09.png" width="10%">
<img src="images/disco cover10.png" width="10%">

# instalação
para instalar, basta fazer: ```make instalar```, para remover, basta fazer: ```make desinstalar```, ele instalará em sua versão de gimp 2.*, não para a versão 1 e nem a 3, para o novo gimp, são necessários alguns testes adicionais, ele funciona, mas quebra, a versão recente solicita retornos de função inexistentes.

# instalação manual:
primeiro você deve mover os gradientes para o seu gimp, sem eles os gradientes que criei especialmente para este script não irão funcionar (pesar dele permitir você selecionar qualquer gradiente disponível pelo gimp).

mova para o diretório relacionado ao seu sistema, para Linux:
```${HOME}/.config/GIMP/version/gradients/```

para adicionar os scripts, você pode utilizar um diretório a sua escolha, ou usar o diretório padrão do gimp em:
```${HOME}/.config/GIMP/version/scripts/```
