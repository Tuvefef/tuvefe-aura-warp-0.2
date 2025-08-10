$gitTag = git describe --tags --abbrev=0
$zipName = "taw-optifine-$gitTag.zip"
$src = "src"

Write-Host "create zip...$zipName ..."

if(Test-Path $zipName) {
    Remove-Item $zipName
}

Compress-Archive -Path $src\* -DestinationPath $zipName
Write-Host "file: $zipName"
