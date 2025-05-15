# 3 lines below are use to generate the bat file 
	#@echo off
	#powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Get-FolderSizes_GB.ps1"
	#pause

# Define the path to scan
$path = "C:\Users\sgummadala\Desktop"
#$path = "C:\Users\sgummadala"
#$path = "\\cvscifsp03\MIS_Retail\USERS\SGummadala"

# Get all folders in the directory
$folders = Get-ChildItem -Path $path -Directory

# Create an array to store folder sizes
$results = @()

foreach ($folder in $folders) {
    # Calculate the total size of the folder
    $size = (Get-ChildItem -Path $folder.FullName -Recurse -File | Measure-Object -Property Length -Sum).Sum
    $sizeGB = [math]::Round($size / 1GB, 5)  # Convert size to GB

    # Store result in an object
    $results += [PSCustomObject]@{
        Folder = $folder.Name
        SizeGB = "$sizeGB GB"
    }
}

# Display the results
$results | Sort-Object SizeGB -Descending | Format-Table -AutoSize
