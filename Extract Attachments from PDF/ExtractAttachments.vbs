'*******************************************************************************************'
'                                                                                           '
' Download Free Evaluation Version From:     https://bytescout.com/download/web-installer   '
'                                                                                           '
' Also available as Web API! Free Trial Sign Up: https://secure.bytescout.com/users/sign_up '
'                                                                                           '
' Copyright © 2017-2018 ByteScout Inc. All rights reserved.                                 '
' http://www.bytescout.com                                                                  '
'                                                                                           '
'*******************************************************************************************'


' Create Bytescout.PDFExtractor.extractor object
Set extractor = CreateObject("Bytescout.PDFExtractor.AttachmentExtractor")
extractor.RegistrationName = "demo"
extractor.RegistrationKey = "demo"

' Load sample PDF document with embedded attachments
extractor.LoadDocumentFromFile("..\..\attachments.pdf")

' Iterate through attachments and save them
For i = 0 To extractor.Count - 1
    ' Save file to current folder with original name
    extractor.Save i, extractor.GetFileName(i)
Next

MsgBox "Done: " & CStr(extractor.Count) & " attachments extracted"

Set extractor = Nothing

