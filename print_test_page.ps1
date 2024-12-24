$result = Get-CimInstance Win32_Printer -Filter "Name LIKE 'HP ENVY%'" | Invoke-CimMethod -MethodName printtestpage
if ($result.ReturnValue -eq 0)
{
    "Test page printed on $printerName."
}
else
{
    "Unable to print test page on $printerName."
    "Error code $($result.ReturnValue)."
}
