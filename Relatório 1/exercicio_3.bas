Dim tempoh As Integer
Dim  min As Integer
Dim  seg As Integer

Print "Insira o tempo em horas:"
Input tempoh
Print tempoh

min = tempoh * 60
seg = min * 60

Print "Valor original em horas:"; tempoh ; "h"
Print "Valor equivalente em minutos:"; min ; "min"
Print "Valor equivalente em segundos:"; seg ; "seg"

Sleep
