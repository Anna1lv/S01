Dim pin As Integer
Dim usupin As Integer

pin = 6742

Print "Insira o PIN:"
Input usupin
Print usupin

While usupin <> pin
    Print "PIN incorreto, digite novamente"
    Input usupin
    Print usupin
Wend

if usupin = pin Then
    Print "Transacao autorizada!"
End if

Sleep
