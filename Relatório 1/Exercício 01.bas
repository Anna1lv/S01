Dim peso As double
Dim qagua As double
Dim meta As double

Print "Insira seu peso"
Input peso
Print "Insira a quantidade de agua ingerida hoje"
Input qagua

meta = peso * 35

If qagua >= meta Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End If

Sleep
