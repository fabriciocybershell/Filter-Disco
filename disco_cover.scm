(define (Script-fu-filter-disco inImage inDrawable inGradient inReverse)
    ; condição verdadeira caso a opção de reverter seja ativada
    (if (= inReverse 1)
        ; invertendo a cor da imagem, mais fácil que inverter direção do gradiente, mais prático
        (gimp-invert inDrawable)
    )
    (let* 
        (
            ; criando camda com a cópia da imagem:
            (value-layer (car (gimp-layer-copy inDrawable 0)))
            ; obtendo dimensções da imagem atual:
            (width (car (gimp-image-width inImage)))
            (height (car (gimp-image-height inImage)))
            ; cria a camada que receberá o ruido e depois difusão, já nas configurações do nível de 
            ; opacidade e modo de camada e nome
            (camada_ruido
                (car
                    (gimp-layer-new
                        inImage
                        width
                        height
                        RGB-IMAGE
                        "Poeira"
                        65
                        LAYER-MODE-DIFFERENCE
                    )
                )
            )

        )
        ; iniciando gravação dos passos para o histórico de desfazer do gimp:
        (gimp-image-undo-group-start inImage)
        ; definindo nome da camada copiada
        (gimp-item-set-name value-layer "Disco Cover")
        ; inserindo camada no gimp
        (gimp-image-insert-layer inImage value-layer 0 0)
        ; definindo gradiente escolhino no contexto geral do gimp
        (gimp-context-set-gradient inGradient)
        ; remapeando as cores da camada inserida, usando gradiente de contexto do gimp
        (plug-in-gradmap TRUE inImage value-layer)
        ; exibindo mudanças
        (gimp-displays-flush)
        ; invertendo a imagem para cores originais caso tenha sido invertida antes
        (if (= inReverse 1)
            (gimp-invert inDrawable)
        )

        ; inserindo nova camada no gimp
        (gimp-image-insert-layer inImage camada_ruido 0 0)
        ; pintando o fundo da camada de preto
        (gimp-context-set-background '(0 0 0))
        ; adicionar ruido HSV
        (plug-in-hsv-noise RUN-NONINTERACTIVE  inImage camada_ruido 4 0 0 150)
        ; adicionar borrão blur gaussiano de levinho
        (plug-in-gauss RUN-NONINTERACTIVE inImage camada_ruido 5 5 0)
        ; exibindo mudanças
        (gimp-displays-flush)
        ; encerrando gravação do desfazer
        (gimp-image-undo-group-end inImage)
    )
)

(script-fu-register
"Script-fu-filter-disco"                    ;nome da função
"disco cover"                               ;nome da ferramenta
"Cria um efeito de capa de disco dos anos 80 e 90."    ;descrição
"fabriciocybershell"                        ;autor
"copyright 2025, Fabrício"                  ;copyright notice
"March 19, 2025"                            ;data de criação
"RGB* GRAY*"                                ;tipos de imagens suportadas
SF-IMAGE       "Image"          0
SF-DRAWABLE    "Current Layer"  0
SF-GRADIENT    "String"         '("Deep Sea" "Incandescent") ; "Incandescent"
SF-TOGGLE      "Gradient reverse" FALSE
; SF-TOGGLE      "Adicionar Ruído"  TRUE
)

(script-fu-menu-register "Script-fu-filter-disco" "<Image>/Filters/90's Style")
