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


' Create Bytescout.PDFExtractor.InfoExtractor object
Set extractor = CreateObject("Bytescout.PDFExtractor.InfoExtractor")
extractor.RegistrationName = "demo"
extractor.RegistrationKey = "demo"

' Load sample PDF document
extractor.LoadDocumentFromFile("..\..\sample1.pdf")

Dim info
info = "Author: " & extractor.Author & vbCrLf & _
       "Creator: " & extractor.Creator & vbCrLf & _
       "Producer: " & extractor.Producer & vbCrLf & _
       "Subject: " & extractor.Subject & vbCrLf & _
       "Title: " & extractor.Title & vbCrLf & _
       "CreationDate: " & extractor.CreationDate & vbCrLf & _
       "Keywords: " & extractor.Keywords & vbCrLf & _
       "Encrypted: " & extractor.Encrypted & vbCrLf & _
       "Bookmarks: " & extractor.Bookmarks & vbCrLf

MsgBox info

Set extractor = Nothing

