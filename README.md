# File Dater
 Creates a log of files and their creation dates.

 This code outputs a tab-separated text file with a list of filenames (relative to `$startpath`) and the creation timestamp for each. Bear in mind the `$output` file can get quite big.

## Settings
| **Variable** | **Type** | **Description** |
|:---|:---|:---|
| `$startPath` | *array* of *string*s | Absolute path(s) to your desired start folder(s). Files will be recursively found and catalogued within these folders. |
| `$output` | *string* | Absolute path to the desired output text file. |
