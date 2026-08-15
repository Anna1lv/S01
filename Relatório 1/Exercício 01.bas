Dim peso As double
Dim qagua As double
Dim meta As double

Print "Insira seu peso"
Input peso
Print peso ; "Kg"
Print "Insira a quantidade de agua ingerida hoje"
Input qagua
Print qagua ; "ml"

meta = peso * 35
Print "Sua meta de agua: " ; meta ; "ml"

If qagua >= meta Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End If

Sleep
