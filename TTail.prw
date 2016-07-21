#INCLUDE "PROTHEUS.CH"
#INCLUDE "RWMAKE.CH"
#INCLUDE "FONT.CH"
#INCLUDE "COLORS.CH"
#INCLUDE "TOPCONN.CH"
#INCLUDE "TBICONN.CH"

//ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
//±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
//±±ÚÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿±±
//±±³Cliente   ³            ³                                                 ³±±
//±±ÃÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ´±±
//±±³Programa  ³ TTail      ³ Autor ³Leonardo G. de Almeida ³ Data ³ 15/07/16 ³±±
//±±ÃÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄ´±±
//±±³          ³                                                              ³±±
//±±³Descricao ³                                                              ³±±
//±±³          ³                                                              ³±±
//±±ÀÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ±±
//±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
//ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
User Function TTail();
//Exemplo
Private _oTTail := TTail():New({|| TestTail() }, .T.) 
_oTTail:Start()

Return()

//ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
// Function que testa o Tail
//ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
Static Function TestTail()

_oTTail:AppendText(" _______  _______  _______  ___   ___     "); Sleep(500)
_oTTail:AppendText("|       ||       ||   _   ||   | |   |    "); Sleep(500)
_oTTail:AppendText("|_     _||_     _||  |_|  ||   | |   |    "); Sleep(500)
_oTTail:AppendText("  |   |    |   |  |       ||   | |   |    "); Sleep(500)
_oTTail:AppendText("  |   |    |   |  |       ||   | |   |___ "); Sleep(500)
_oTTail:AppendText("  |   |    |   |  |   _   ||   | |       |"); Sleep(500)
_oTTail:AppendText("  |___|    |___|  |__| |__||___| |_______|"); Sleep(500)

_oTTail:AppendText(""); Sleep(500)
_oTTail:AppendText("                      ug                "); Sleep(500)
_oTTail:AppendText("                     b                  "); Sleep(500)
_oTTail:AppendText("                    g           bug     "); Sleep(500)
_oTTail:AppendText("                    u        bug        "); Sleep(500)
_oTTail:AppendText("    bugbug          b       g           "); Sleep(500)
_oTTail:AppendText("          bug      bugbug bu            "); Sleep(500)
_oTTail:AppendText("             bug  bugbugbugbugbugbug    "); Sleep(500)
_oTTail:AppendText("bug   bug   bugbugbugbugbugbugbugbugb   "); Sleep(500)
_oTTail:AppendText("   bug   bug bugbugbugbugbugbugbugbugbu "); Sleep(500)
_oTTail:AppendText(" bugbugbugbu gbugbugbugbugbugbugbugbugbu"); Sleep(500)
_oTTail:AppendText("bugbugbugbug                            "); Sleep(500)
_oTTail:AppendText(" bugbugbugbu gbugbugbugbugbugbugbugbugbu"); Sleep(500)
_oTTail:AppendText("   bug   bug bugbugbugbugbugbugbugbugbu "); Sleep(500)
_oTTail:AppendText("bug   bug  gbugbugbugbugbugbugbugbugb   "); Sleep(500)
_oTTail:AppendText("             bug  bugbugbugbugbugbug    "); Sleep(500)
_oTTail:AppendText("          bug      bugbug  bu           "); Sleep(500)
_oTTail:AppendText("    bugbug          b        g          "); Sleep(500)
_oTTail:AppendText("                    u         bug       "); Sleep(500)
_oTTail:AppendText("                    g            bug    "); Sleep(500)
_oTTail:AppendText("                     b                  "); Sleep(500)
_oTTail:AppendText("                      ug                "); Sleep(500)
_oTTail:AppendText(""); Sleep(500)

For x:=1 to 50
	_oTTail:AppendText(StrZero(x,3) +" | "+ Time())
	Sleep(500)
End
   
Return()

//ÚÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³CLASSE  ³ TTail                                                              ³
//ÀÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Class TTail

// atributos
Data bRotina  as String
Data lVisual  as Boolean

Data oDialog  as Object
Data oFontTxt as Object
Data oFontTai as Object

// metodos
Method New() CONSTRUCTOR
Method Start()
Method OpenDialog()
Method AppendText()

EndClass

//ÚÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³METHOD | new                                                                 ³
//ÃÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
//³Parametros Obrigatorios:                                                     ³
//³ _bRotina -> Função a escutada pelo Tail                                     ³
//³                                                                             ³
//³Parametros Opcionais:                                                        ³
//³ _lVisual -> Define se o Tail aparecerá no console ou em um dialog           ³
//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Method New(_bRotina, _lVisual) Class TTail

::bRotina  := _bRotina
::lVisual  := If(Empty(_lVisual),.F.,.T.)

::oDialog  := Nil
::oFontTxt := TFont():New("FixedSys",,14,,.T.,,,,,.F.,.F.)
::oFontTai := TFont():New("FixedSys",,14,,.F.,,,,,.F.,.F.)

Return Self

//ÚÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³METHOD | Start                                                               ³
//ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Method Start() Class TTail

If ::lVisual
	::OpenDialog()
Else
	Eval(::bRotina)
EndIf

Return()

//ÚÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³METHOD | OpenDialog                                                          ³
//ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Method OpenDialog() Class TTail

Local _oObj  := Nil
Local _cJson := ""

_cJson += '{'
_cJson += ' "oDlg": null, '
_cJson += ' "oSay": null, '
_cJson += ' "oMtGet": null, '
_cJson += ' "oBtIni": null, '
_cJson += ' "oBtClo": null '
_cJson += '}'

If FWJsonDeserialize(_cJson, @_oObj)
	::oDialog := _oObj
	
	::oDialog:oDlg   := TDialog():New(000,000,500,600,"TTAIL",,,,,CLR_BLACK,CLR_WHITE,,,.T.)
	::oDialog:oSay   := TSay():New(005,005,{|| "TTAIL" },::oDialog:oDlg,,::oFontTxt,,,,.T.,CLR_BLACK,CLR_WHITE,400,10)
	::oDialog:oMtGet := TMultiget():New(015,005,{|u| ""},::oDialog:oDlg,290,200,::oFontTai,,,,,.T.) 
	::oDialog:oBtIni := TButton():New(225,006,"Iniciar" ,::oDialog:oDlg,{|| Eval(::bRotina) },60,12,,,.F.,.T.,.F.,,.F.,,,.F.)
	::oDialog:oBtClo := TButton():New(225,075,"Sair"    ,::oDialog:oDlg,{|| ::oDialog:oDlg:End() },60,12,,,.F.,.T.,.F.,,.F.,,,.F.)
	::oDialog:oDlg:Activate(,,,.T.,{|| .t.},,{|| .t.})
Else
	MessageBox("Classe disponivel apenas para Microsiga_Protheus 11 em diante.","Atenção",48)
EndIf

Return Nil

//ÚÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³METHOD | AppendText                                                          ³
//ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Method AppendText(_cTexto) Class TTail

If ::lVisual
	::oDialog:oMtGet:AppendText(_cTexto + Chr(13) + Chr(10))
	::oDialog:oMtGet:GoEnd()
	::oDialog:oDlg:CommitControls()
Else
	ConOut(_cTexto)
EndIf

Return Nil