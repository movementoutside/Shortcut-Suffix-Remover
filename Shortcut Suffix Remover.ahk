#NoEnv
#SingleInstance Force
#Persistent
SetBatchLines, -1

; Shortcut Suffix Remover
; Automatically removes the Windows " - Shortcut" suffix from newly created
; .lnk files on the current user's Desktop.
;
; AutoHotkey: v1.1+

ShortcutSuffix := " - Shortcut"
CheckIntervalMs := 1000

SetTimer, CheckShortcuts, %CheckIntervalMs%
Gosub, CheckShortcuts
Return

CheckShortcuts:
Loop, Files, %A_Desktop%\*.lnk, F
{
    fileName := A_LoopFileName
    filePath := A_LoopFileFullPath

    ; Strip the .lnk extension before checking the visible shortcut name.
    baseName := SubStr(fileName, 1, StrLen(fileName) - 4)

    ; Only rename shortcuts whose names end exactly with the configured suffix.
    if (SubStr(baseName, 1 - StrLen(ShortcutSuffix)) = ShortcutSuffix)
    {
        newBaseName := SubStr(baseName, 1, StrLen(baseName) - StrLen(ShortcutSuffix))
        targetPath := A_Desktop "\\" newBaseName ".lnk"

        ; Never overwrite an existing shortcut with the desired name.
        if (!FileExist(targetPath))
            FileMove, %filePath%, %targetPath%
    }
}
Return
