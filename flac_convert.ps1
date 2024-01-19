# TODO: usunięcie plików w folderze, skopiowanie plików z converted do katalogu roboczego, usunięcie folderu converted
New-Item -Path '.\Converted' -ItemType Directory

$initFilenames = @()
$initFilenames += (Get-ChildItem .\* -Include *.flac).Name

$initFilenames | ForEach-Object {ffmpeg -i $_ -sample_fmt s16 -ar 48000 .\Converted\$_}