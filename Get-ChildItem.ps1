Get-ChildItem -Force -Recurse -File | Where Length -gt 100MB | Sort Length -Descending | Select fullname, CreationTime, @{n='Size (MB)'; e={[math]::Round($_.Length / 1MB , 2)}}}
