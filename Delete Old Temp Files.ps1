$tempDir = "C:\temp\*"

#get a list of items that haven't been touched since before the "cutoff date"
$cutoffDate = [DateTime]::Today.AddYears(-1)
$items = Get-ChildItem $tempDir
$oldItems = $items | Where-Object { $_.LastAccessTime -le $cutoffDate }

#delete them
Remove-Item $oldItems -Force -Recurse