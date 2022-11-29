$HTMLDATA = Get-Content "c:\testfolder\test.html" -Raw
$jsonValue=ConvertTo-Json("$HTMLDATA")
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Authorization", "Bearer SG.fsfdfdsfdffdsfdfdsfdsfsdYy4NbWqoqmffsdfddsfddsfdfsdfsdfsdf")
$headers.Add("Content-Type", "application/json")
$body = "{
`n  `"template_id`": `"d-7dasfsdfsdf245fc4r4f4f553e434355352818efbd4`",
`n  `"active`": 1,
`n  `"name`": `"test 1.0`",
`n  `"html_content`": $jsonValue,
`n  `"subject`": `"no-reply`",
`n  `"editor`": `"code`"
`n}"
$response = Invoke-RestMethod 'https://api.sendgrid.com/v3/templates/d-7dasfsdfsdf245fc4r4f4f553e434355352818efbd4/versions' -Method 'POST' -Headers $headers -Body $body
