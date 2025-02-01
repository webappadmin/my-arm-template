$templateFile="C:\Azure Learning\ARM\azuredeploy.v1.2.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addstorage-"+"$today"
New-AzResourceGroupDeployment -Name $deploymentName -Templatefile $templateFile

$templateFile="C:\Azure Learning\ARM\azuredeploy.v1.3.json"
az deployment group create --name testdeploymentashok1 --resource-group company-1 --template-file $templateFile --parameters storageAccountType=Standard_LRS


New-AzResourceGroupDeployment `-Name $deploymentName `-TemplateFile $templateFile `-storageName {your-unique-name}