' -----------------------------------------------------------------------------
' Example VB Script to apply an XSLT transformation to a file.
' Use this script to create a report from your manifest:
'
'  CScript xsl.vbs manifest-report.xsl your-manifest-file.manifest report.htm
'
' Both this file and "manifest-report.xsl" are available at:
' http://www.mazecomputer.com/sxs/report.htm
' -----------------------------------------------------------------------------
' Copyright (c) Maze Computer Communications, Inc.
' Maze Computer makes no warranties regarding the fitness of this file for any
' purpose expressed or implied. Use at your own risk.
' This file may be copied and modified free of charge under the condition that
' this copyright notice and the disclaimer of liability is retained. 
' -----------------------------------------------------------------------------

option explicit

if WScript.Arguments.Count < 2 or 3 < WScript.Arguments.Count then
    WScript.Echo "Syntax: xsl.vbs <input-xsl> <input-xml> [output-html]"
    WScript.Quit
end if

dim fso, fout, ofl, fxml, fxsl, xml, xsl, outstr

fxsl = WScript.Arguments(0)
fxml = WScript.Arguments(1)
fout = "console"

if 3 <= WScript.Arguments.Count then fout = WScript.Arguments(2)

WScript.Echo "Input XSL: " & fxsl
WScript.Echo "Input XML: " & fxml
WScript.Echo "Output to: " & fout

set xml = CreateObject("MSXML2.DomDocument.6.0")
xml.async = false
xml.Load(fxml)

if 0 <> xml.parseError.ErrorCode then
   WScript.Echo ""
   WScript.Echo "XML: (line " & CStr(xml.parseError.line) & ") " & Hex(xml.parseError.ErrorCode) & " " & xml.parseError.reason
   WScript.Quit
end if

set xsl = CreateObject("MSXML2.DomDocument.6.0")
xsl.async = false
xsl.Load(fxsl)

if 0 <> xsl.parseError.ErrorCode then
   WScript.Echo ""
   WScript.Echo "XSL: (line " & CStr(xsl.parseError.line) & ") " & Hex(xsl.parseError.ErrorCode) & " " & xsl.parseError.reason
   WScript.Quit
end if

outstr = xml.transformNode(xsl)

if 0 <> err.number then
   WScript.Echo ""
   WScript.Echo "*** Transformation error: " & Hex(err.number) & ": " & err.Description
end if

if "console" = fout then
   WScript.Echo ""
   WScript.Echo outstr
else
   set fso = CreateObject("Scripting.FileSystemObject")
   set ofl = fso.CreateTextFile(fout, true, false)
   ofl.Write outstr
   ofl.Close()
   set fso = nothing
   set ofl = nothing
   WScript.Echo "File size: " & CStr(Len(outstr)) & " characters."
end if

WScript.Echo ""
