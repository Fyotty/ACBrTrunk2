{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2016 Elias C�sar Vieira                     }
{                                                                              }
{ Colaboradores nesse arquivo: Daniel Sim�es de Almeida                        }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{ Esse arquivo usa a classe  SynaSer   Copyright (c)2001-2003, Lukas Gebauer   }
{  Project : Ararat Synapse     (Found at URL: http://www.ararat.cz/synapse/)  }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida  -  daniel@djsystem.com.br  -  www.djsystem.com.br  }
{              Pra�a Anita Costa, 34 - Tatu� - SP - 18270-410                  }
{                                                                              }
{******************************************************************************}

{******************************************************************************
|* Historico
|*
|* 17/05/2016: Elias C�sar Vieira
|*  - Primeira Versao ACBrMTerClass
******************************************************************************}

{$I ACBr.inc}

unit ACBrMTerClass;

interface

uses
  Classes, SysUtils;

type

  { Classe generica de MicroTerminal, nao implementa nenhum modelo especifico,
  apenas declara a Classe. NAO DEVE SER INSTANCIADA. Usada apenas como base para
  as demais Classes de ACBrMTer, como por exemplo a classe TACBrMTerVT100 }

  { TACBrMTerClass }

  TACBrMTerClass = class
  private
    procedure DisparaErroNaoImplementado( const NomeMetodo: String );

  protected
    fpModeloStr: String;
    fpOwner: TComponent;

  public
    constructor Create(aOwner: TComponent);

    function ComandoBackSpace: AnsiString; virtual;
    function ComandoBeep(aTempo: Integer = 0): AnsiString; virtual;
    function ComandoBoasVindas: AnsiString; virtual;
    function ComandoDeslocarCursor(aValue: Integer): AnsiString; virtual;
    function ComandoDeslocarLinha(aValue: Integer): AnsiString; virtual;
    function ComandoEco(const aValue: AnsiString): AnsiString; virtual;
    function ComandoEnviarParaParalela(const aDados: AnsiString): AnsiString; virtual;
    function ComandoEnviarParaSerial(const aDados: AnsiString; aSerial: Byte = 0): AnsiString; virtual;
    function ComandoEnviarTexto(const aTexto: AnsiString): AnsiString; virtual;
    function ComandoOnline: AnsiString; virtual;
    function ComandoPosicionarCursor(aLinha, aColuna: Integer): AnsiString; virtual;
    function ComandoLimparDisplay: AnsiString; virtual;
    function ComandoLimparLinha(aLinha: Integer): AnsiString; virtual;

    function InterpretarResposta(const aRecebido: AnsiString): AnsiString; virtual;
    function LimparConteudoParaEnviar(const aString: AnsiString): AnsiString;

    property ModeloStr: String read fpModeloStr;
  end;


implementation

uses
  ACBrMTer, ACBrConsts, ACBrUtil;

{ TACBrMTerClass }

procedure TACBrMTerClass.DisparaErroNaoImplementado(const NomeMetodo: String);
begin
  raise Exception.Create(ACBrStr('Metodo: '+NomeMetodo+', n�o implementada em: '+ModeloStr));
end;

constructor TACBrMTerClass.Create(aOwner: TComponent);
begin
  if not (aOwner is TACBrMTer) then
    raise Exception.Create(ACBrStr('Essa Classe deve ser instanciada por TACBrMTer'));

  fpOwner := aOwner;
  fpModeloStr := 'N�o Definido';
end;

function TACBrMTerClass.ComandoBackSpace: AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoBackSpace');
end;

function TACBrMTerClass.ComandoBeep(aTempo: Integer): AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoBeep');
end;

function TACBrMTerClass.ComandoBoasVindas: AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoBoasVindas');
end;

function TACBrMTerClass.ComandoDeslocarCursor(aValue: Integer): AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoDeslocarCursor');
end;

function TACBrMTerClass.ComandoDeslocarLinha(aValue: Integer): AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoDeslocarCursor');
end;

function TACBrMTerClass.ComandoEco(const aValue: AnsiString): AnsiString;
begin
  Result := ComandoEnviarTexto(LimparConteudoParaEnviar(aValue));
end;

function TACBrMTerClass.ComandoEnviarParaParalela(const aDados: AnsiString): AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoEnviarParaParalela');
end;

function TACBrMTerClass.ComandoEnviarParaSerial(const aDados: AnsiString;
  aSerial: Byte): AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoEnviarParaSerial');
end;

function TACBrMTerClass.ComandoEnviarTexto(const aTexto: AnsiString): AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoEnviarTexto');
end;

function TACBrMTerClass.ComandoOnline: AnsiString;
begin
  Result := '';
end;

function TACBrMTerClass.ComandoPosicionarCursor(aLinha, aColuna: Integer): AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoPosicionarCursor');
end;

function TACBrMTerClass.ComandoLimparDisplay: AnsiString;
begin
  Result := '';
  DisparaErroNaoImplementado('ComandoLimparDisplay');
end;

function TACBrMTerClass.ComandoLimparLinha(aLinha: Integer): AnsiString;
begin
  Result := ComandoPosicionarCursor( aLinha, 0) +
            ComandoEnviarTexto( Space(TACBrMTer(fpOwner).DisplayColunas) ) +
            ComandoPosicionarCursor( aLinha, 0);
end;

function TACBrMTerClass.InterpretarResposta(const aRecebido: AnsiString): AnsiString;
var
  ALen: Integer;
begin
  Result := '';
  ALen := Length(aRecebido);
  if (ALen < 1) then
    Exit;

  if CharInSet(aRecebido[1], [ACK,NAK]) then
    Exit;

  Result := aRecebido;

  if (aRecebido[1] = STX) then
  begin
    Result := copy(aRecebido, 2, ALen);
    Dec(ALen);
  end;

  if (ALen > 0) and (aRecebido[ALen] = ETX) then
    Result := copy(aRecebido, 1, ALen-1);
end;

function TACBrMTerClass.LimparConteudoParaEnviar(const aString: AnsiString): AnsiString;
var
  aChar: AnsiChar;
  I: Integer;
begin
  // Fun��o retira os caracteres estranhos da String,
  // Usada para enviar o eco ao Micro Terminal.
  Result := '';

  if (aString = EmptyStr) then
    Exit;

  for I := 1 to Length(aString) do
  begin
    aChar := aString[I];

    { Mantem apenas Letras/Numeros/Pontos/Sinais }
    if not CharInSet(aChar, [#32..#126,#13,#10,#8]) then
      Continue;

    Result := Result + aChar;
  end;

end;

end.

