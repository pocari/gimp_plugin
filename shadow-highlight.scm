(define (script-fu-shadow-highlight image drawable)
        (gimp-context-push)
        (gimp-context-set-defaults)
        (gimp-image-set-active-layer image drawable)
        (gimp-image-undo-group-start image)

        (gimp-selection-invert image)
        (gimp-brightness-contrast drawable -127 0)
        
        (gimp-image-set-active-layer image drawable)
        (gimp-image-undo-group-end image)
        (gimp-displays-flush)

        (gimp-context-pop))


(script-fu-register "script-fu-shadow-highlight"
                    _"_Shadow Hightlight..."
                    _"Add a shadow highlight to selected areas"
                    "caffelattenonsugar"
                    "caffelattenonsugar"
                    "2015/03/19"
                    "RGB* GRAY*"
                    SF-IMAGE      "Image"           0
                    SF-DRAWABLE   "Drawable"        0
                    )

(script-fu-menu-register "script-fu-shadow-highlight"
                         "<Image>/Filters/Shadow Highlight")
