oh-my-posh --init --shell pwsh --config C:\dev\configs\oh_my_posh-conf-wh.omp.json | Invoke-Expression
Import-Module -Name Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -Colors @{ InlinePrediction = '#2F7004'}
Set-PSReadLineOption -EditMode Windows