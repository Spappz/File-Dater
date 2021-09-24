<#
 Outputs a tab-separated text file with a list of filenames (relative
 to $startpath) and creation timestamps.

 The resulting file can get quite big.



 $startPath   (array of strings)
    Absolute paths to your desired start folder. 

 $output   (string)
    Absolute path to the desired output text file.



 Spappz 2021
 
 MIT License
 No warranty or guarantee provided
 All rights reserved
#> 

$startPath = ( "C:\Users", "D:\" )
$output = "D:\Desktop\file.txt"

Get-ChildItem $startPath -Recurse -Attributes "!D" | ForEach-Object {
    $_.FullName
    (
        (($_.FullName | Resolve-Path -LiteralPath -Relative) -replace "\\", "/") `
        + "`t" `
        + ($_.CreationTime) `
    ) | Out-File $output -Append
}