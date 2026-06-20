#Persistent
SetTimer, CheckShortcuts, 1000  ; Revisa cada 1 segundo

CheckShortcuts:
Loop, %A_Desktop%\*.lnk  ; Recorre todos los accesos directos (.lnk) en el escritorio
{
    ; Verifica si el nombre del archivo contiene " - Shortcut"
    if (InStr(A_LoopFileName, " - Shortcut"))
    {
        ; Obtiene la parte del nombre sin la extensión ".lnk"
        baseName := SubStr(A_LoopFileName, 1, StrLen(A_LoopFileName) - 4)
        
        ; Elimina el sufijo " - Shortcut" del nombre base
        newName := RegExReplace(baseName, " - Shortcut$", "")
        
        ; Añade ".lnk" de nuevo al final del nombre renombrado
        newName := newName ".lnk"
        
        ; Renombra el archivo, manteniendo la ruta original
        FileMove, %A_LoopFileFullPath%, %A_Desktop%\%newName%
    }
}
Return
