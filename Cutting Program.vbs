Set WshShell = CreateObject("WScript.Shell")
Dim fso: Set fso = CreateObject("Scripting.FileSystemObject")

' 1. Define as pastas e caminhos (equivalente ao $Root do PowerShell)
CurrentDir = fso.GetParentFolderName(WScript.ScriptFullName)
PythonExe = Chr(34) & CurrentDir & "\python\python.exe" & Chr(34)
EdgeProfile = Chr(34) & CurrentDir & "\.edge-profile" & Chr(34)
Port = "3000"
Url = "http://127.0.0.1:" & Port

' 2. Inicia o servidor Python de forma 100% INVISÍVEL (o parâmetro 0 oculta totalmente)
WshShell.Run PythonExe & " -m http.server " & Port & " --bind 127.0.0.1", 0, False

' Aguarda 1 segundo para o servidor web subir com segurança
WScript.Sleep 1000

' 3. Abre o Edge em modo App e ESPERA ele ser fechado
' O parâmetro 1 mostra a janela do Edge normalmente
' O parâmetro True faz o script pausar aqui e "ficar olhando" o Edge rodar
EdgeArgs = "msedge.exe --user-data-dir=" & EdgeProfile & " --app=" & Url & " --new-window"
WshShell.Run EdgeArgs, 1, True

' 4. Monitoramento concluído! Quando você fecha o Edge, o script acorda e executa a linha abaixo.
' Ela mata apenas o processo do Python que abrimos, sem deixar lixo na memória do PC do trabalho.
WshShell.Run "taskkill /f /im python.exe", 0, True