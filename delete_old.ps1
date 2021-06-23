#$directory = Read-Host -Prompt "Please Enter The Directory Location Path: "
$directory = "C:\Users\Asus\Desktop\Arafat\test"
#$days = Read-Host -Prompt "Please Enter Mininm Days You Want to Delete From: "
$date = (get-date)-(new-timespan -Days 30)
$list = Get-ChildItem $directory | Where-Object{$_.LastWriteTime -lt $date}|Remove-Item 
#echo "Items Successfully Removed !"