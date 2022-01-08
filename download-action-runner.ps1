Invoke-WebRequest -Uri https://github.com/actions/runner/releases/download/v2.285.1/actions-runner-win-x64-2.285.1.zip -OutFile actions-runner-win-x64-2.285.1.zip
mkdir actions-runner
Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory("$PWD/actions-runner-win-x64-2.285.1.zip", "$PWD/actions-runner")
