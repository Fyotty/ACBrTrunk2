{******************************************************************************}
{ Projeto: ACBr Monitor                                                        }
{  Executavel multiplataforma que faz uso do conjunto de componentes ACBr para }
{ criar uma interface de comunica��o com equipamentos de automacao comercial.  }

{ Direitos Autorais Reservados (c) 2009 Daniel Simoes de Almeida               }

{ Colaboradores nesse arquivo:                                                 }

{  Voc� pode obter a �ltima vers�o desse arquivo na p�gina do Projeto ACBr     }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }

{  Este programa � software livre; voc� pode redistribu�-lo e/ou modific�-lo   }
{ sob os termos da Licen�a P�blica Geral GNU, conforme publicada pela Free     }
{ Software Foundation; tanto a vers�o 2 da Licen�a como (a seu crit�rio)       }
{ qualquer vers�o mais nova.                                                   }

{  Este programa � distribu�do na expectativa de ser �til, mas SEM NENHUMA     }
{ GARANTIA; nem mesmo a garantia impl�cita de COMERCIALIZA��O OU DE ADEQUA��O A}
{ QUALQUER PROP�SITO EM PARTICULAR. Consulte a Licen�a P�blica Geral GNU para  }
{ obter mais detalhes. (Arquivo LICENCA.TXT ou LICENSE.TXT)                    }

{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral GNU junto com este}
{ programa; se n�o, escreva para a Free Software Foundation, Inc., 59 Temple   }
{ Place, Suite 330, Boston, MA 02111-1307, USA. Voc� tamb�m pode obter uma     }
{ copia da licen�a em:  http://www.opensource.org/licenses/gpl-license.php     }

{ Daniel Sim�es de Almeida  -  daniel@djsystem.com.br  -  www.djsystem.com.br  }
{              Pra�a Anita Costa, 34 - Tatu� - SP - 18270-410                  }

{******************************************************************************}
{$I ACBr.inc}

unit DoPosPrinterUnit;

interface

uses
  Classes, TypInfo, SysUtils, CmdUnit, ACBrUtil, ACBrPosPrinter,
  ACBrMonitorConsts, ACBrMonitorConfig;

type

{ TACBrObjetoPosPrinter }

TACBrObjetoPosPrinter = class(TACBrObjetoDFe)
private
  fACBrPosPrinter: TACBrPosPrinter;
public
  constructor Create(AConfig: TMonitorConfig; ACBrPosPrinter: TACBrPosPrinter); reintroduce;
  procedure Executar(ACmd: TACBrCmd); override;

  property ACBrPosPrinter: TACBrPosPrinter read fACBrPosPrinter;
end;

{ TMetodoAtivar}
TMetodoAtivar = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoDesativar}
TMetodoDesativar = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoAtivo}
TMetodoAtivo = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoImprimir}
TMetodoImprimir = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoImprimirLinha}
TMetodoImprimirLinha = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoImprimirCMD}
TMetodoImprimirCMD = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoImprimirTAGs}
TMetodoImprimirTAGs = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoLerStatusImpressora}
TMetodoLerStatusImpressora = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoLerInfoImpressora}
TMetodoLerInfoImpressora = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoModelo}
TMetodoModelo = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoSetModelo}
TMetodoSetModelo = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoPorta}
TMetodoPorta = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoSetPorta}
TMetodoSetPorta = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoColunas}
TMetodoColunas = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoEspacoEntreLinhas}
TMetodoEspacoEntreLinhas = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoSetEspacoEntreLinhas}
TMetodoSetEspacoEntreLinhas = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoLinhasEntreCupons}
TMetodoLinhasEntreCupons = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoSetLinhasEntreCupons}
TMetodoSetLinhasEntreCupons = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoLinhasBuffer}
TMetodoLinhasBuffer = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoSetLinhasBuffer}
TMetodoSetLinhasBuffer = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoColunasFonteExpandida}
TMetodoColunasFonteExpandida = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoColunasFonteCondensada}
TMetodoColunasFonteCondensada = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoPaginaDeCodigo}
TMetodoPaginaDeCodigo = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoSetPaginaDeCodigo}
TMetodoSetPaginaDeCodigo = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoColunasFonteNormal}
TMetodoColunasFonteNormal = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoSetColunasFonteNormal}
TMetodoSetColunasFonteNormal = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoCortaPapel}
TMetodoCortaPapel = class(TACBrMetodo)
public
  procedure Executar; override;
end;

{ TMetodoSetCortaPapel}
TMetodoSetCortaPapel = class(TACBrMetodo)
public
  procedure Executar; override;
end;

implementation

{ TACBrObjetoPosPrinter }

constructor TACBrObjetoPosPrinter.Create(AConfig: TMonitorConfig; ACBrPosPrinter: TACBrPosPrinter);
begin
  inherited Create(AConfig);

  fACBrPosPrinter := ACBrPosPrinter;

  ListaDeMetodos.Add(CMetodoAtivar);
  ListaDeMetodos.Add(CMetodoDesativar);
  ListaDeMetodos.Add(CMetodoAtivo);
  ListaDeMetodos.Add(CMetodoImprimir);
  ListaDeMetodos.Add(CMetodoImprimirLinha);
  ListaDeMetodos.Add(CMetodoImprimirCMD);
  ListaDeMetodos.Add(CMetodoImprimirTAGs);
  ListaDeMetodos.Add(CMetodoLerStatusImpressora);
  ListaDeMetodos.Add(CMetodoLerInfoImpressora);
  ListaDeMetodos.Add(CMetodoModelo);
  ListaDeMetodos.Add(CMetodoSetModelo);
  ListaDeMetodos.Add(CMetodoPorta);
  ListaDeMetodos.Add(CMetodoSetPorta);
  ListaDeMetodos.Add(CMetodoColunas);
  ListaDeMetodos.Add(CMetodoEspacoEntreLinhas);
  ListaDeMetodos.Add(CMetodoSetEspacoEntreLinhas);
  ListaDeMetodos.Add(CMetodoLinhasEntreCupons);
  ListaDeMetodos.Add(CMetodoSetLinhasEntreCupons);
  ListaDeMetodos.Add(CMetodoLinhasBuffer);
  ListaDeMetodos.Add(CMetodoSetLinhasBuffer);
  ListaDeMetodos.Add(CMetodoColunasFonteExpandida);
  ListaDeMetodos.Add(CMetodoColunasFonteCondensada);
  ListaDeMetodos.Add(CMetodoPaginaDeCodigo);
  ListaDeMetodos.Add(CMetodoSetPaginaDeCodigo);
  ListaDeMetodos.Add(CMetodoColunasFonteNormal);
  ListaDeMetodos.Add(CMetodoSetColunasFonteNormal);
  ListaDeMetodos.Add(CMetodoCortaPapel);
  ListaDeMetodos.Add(CMetodoSetCortaPapel);
end;

procedure TACBrObjetoPosPrinter.Executar(ACmd: TACBrCmd);
var
  AMetodoClass: TACBrMetodoClass;
  CmdNum: Integer;
  Ametodo: TACBrMetodo;
begin
  inherited Executar(ACmd);

  CmdNum := ListaDeMetodos.IndexOf(LowerCase(ACmd.Metodo));
  AMetodoClass := Nil;

  case CmdNum of
    0  : AMetodoClass := TMetodoAtivar;
    1  : AMetodoClass := TMetodoDesativar;
    2  : AMetodoClass := TMetodoAtivo;
    3  : AMetodoClass := TMetodoImprimir;
    4  : AMetodoClass := TMetodoImprimirLinha;
    5  : AMetodoClass := TMetodoImprimirCMD;
    6  : AMetodoClass := TMetodoImprimirTAGs;
    7  : AMetodoClass := TMetodoLerStatusImpressora;
    8  : AMetodoClass := TMetodoLerInfoImpressora;
    9  : AMetodoClass := TMetodoModelo;
   10  : AMetodoClass := TMetodoSetModelo;
   11  : AMetodoClass := TMetodoPorta;
   12  : AMetodoClass := TMetodoSetPorta;
   13  : AMetodoClass := TMetodoColunas;
   14  : AMetodoClass := TMetodoEspacoEntreLinhas;
   15  : AMetodoClass := TMetodoSetEspacoEntreLinhas;
   16  : AMetodoClass := TMetodoLinhasEntreCupons;
   17  : AMetodoClass := TMetodoSetLinhasEntreCupons;
   18  : AMetodoClass := TMetodoLinhasBuffer;
   19  : AMetodoClass := TMetodoSetLinhasBuffer;
   20  : AMetodoClass := TMetodoColunasFonteExpandida;
   21  : AMetodoClass := TMetodoColunasFonteCondensada;
   22  : AMetodoClass := TMetodoPaginaDeCodigo;
   23  : AMetodoClass := TMetodoSetPaginaDeCodigo;
   24  : AMetodoClass := TMetodoColunasFonteNormal;
   25  : AMetodoClass := TMetodoSetColunasFonteNormal;
   26  : AMetodoClass := TMetodoCortaPapel;
   27  : AMetodoClass := TMetodoSetCortaPapel;
  end;

  if Assigned(AMetodoClass) then
  begin
    Ametodo := AMetodoClass.Create(ACmd, Self);
    try
      Ametodo.Executar;
    finally
      Ametodo.Free;
    end;
  end;
end;

{ TMetodoAtivar }

procedure TMetodoAtivar.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.Ativar;
  end;
end;

{ TMetodoDesativar }

procedure TMetodoDesativar.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.Desativar;
  end;
end;

{ TMetodoAtivo }

procedure TMetodoAtivo.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpCmd.Resposta := BoolToStr(ACBrPosPrinter.Ativo, true);
  end;
end;

{ TMetodoImprimir }

{ Params: 0 - String
}
procedure TMetodoImprimir.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.Imprimir(fpcmd.Params(0));
  end;
end;

{ TMetodoImprimirLinha }

{ Params: 0 - String
}
procedure TMetodoImprimirLinha.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.ImprimirLinha(fpcmd.Params(0))
  end;
end;

{ TMetodoImprimirCMD }

{ Params: 0 - String
}
procedure TMetodoImprimirCMD.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.ImprimirCmd(fpcmd.Params(0))
  end;
end;

{ TMetodoImprimirTAGs }

procedure TMetodoImprimirTAGs.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.ImprimirTags;
  end;
end;

{ TMetodoLerStatusImpressora }

procedure TMetodoLerStatusImpressora.Executar;
var
  status: TACBrPosPrinterStatus;
  astr: string;
  i: TACBrPosTipoStatus;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    status := ACBrPosPrinter.LerStatusImpressora;
    astr := '';

    if status = [] then
      fpcmd.Resposta := 'Nenhum status encontrado'
    else
    begin
      for i := Low(TACBrPosTipoStatus) to High(TACBrPosTipoStatus) do
      begin
        if i in status then
          astr := astr + GetEnumName(TypeInfo(TACBrPosTipoStatus),
            integer(i)) + ', ';
      end;

      fpcmd.Resposta := astr;
    end;
  end;
end;

{ TMetodoLerInfoImpressora }

procedure TMetodoLerInfoImpressora.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpCmd.Resposta := ACBrPosPrinter.LerInfoImpressora;
  end;
end;

{ TMetodoModelo }

procedure TMetodoModelo.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpcmd.Resposta := GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(ACBrPosPrinter.Modelo));
  end;
end;

{ TMetodoSetModelo }

{ Params: 0 - String
}
procedure TMetodoSetModelo.Executar;
var
  j: TACBrPosPrinterModelo;
  iModelo: integer;
  AModelo: String;
begin
  AModelo := fpCmd.Params(0);

  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    iModelo := -1;
    for j := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
    begin
       if Uppercase(GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(j))) = UpperCase(AModelo) then
       begin
          iModelo := integer(j);
          break;
       end;
    end;
    if iModelo >= 0 then
    begin
       ACBrPosPrinter.Modelo := TACBrPosPrinterModelo(iModelo);

       with MonitorConfig.PosPrinter do
         Modelo := iModelo;

       MonitorConfig.SalvarArquivo;
    end
    else
       raise Exception.Create('Modelo de impressora inv�lido: ' + AModelo);
  end;
end;

{ TMetodoPorta }

procedure TMetodoPorta.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpCmd.Resposta := ACBrPosPrinter.Porta;
  end;
end;

{ TMetodoSetPorta }

{ Params: 0 - String
}
procedure TMetodoSetPorta.Executar;
var
  APorta: String;
begin
  APorta := fpCmd.Params(0);

  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.Porta := APorta;

    with MonitorConfig.PosPrinter do
      Porta := APorta;

    MonitorConfig.SalvarArquivo;
  end;
end;

{ TMetodoColunas }

procedure TMetodoColunas.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpCmd.Resposta := IntToStr(ACBrPosPrinter.Colunas);
  end;
end;

{ TMetodoEspacoEntreLinhas }

procedure TMetodoEspacoEntreLinhas.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpCmd.Resposta := IntToStr(ACBrPosPrinter.EspacoEntreLinhas);
  end;
end;

{ TMetodoSetEspacoEntreLinhas }

{ Params: 0 - Integer
}
procedure TMetodoSetEspacoEntreLinhas.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.EspacoEntreLinhas:= StrToInt(fpcmd.Params(0));
  end;
end;

{ TMetodoLinhasEntreCupons }

procedure TMetodoLinhasEntreCupons.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpCmd.Resposta := IntToStr(ACBrPosPrinter.LinhasEntreCupons);
  end;
end;

{ TMetodoSetLinhasEntreCupons }

{ Params: 0 - Integer
}
procedure TMetodoSetLinhasEntreCupons.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.linhasentrecupons:= StrToInt(fpcmd.Params(0));
  end;
end;

{ TMetodoLinhasBuffer }

procedure TMetodoLinhasBuffer.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpCmd.Resposta := IntToStr(ACBrPosPrinter.LinhasBuffer);
  end;
end;

{ TMetodoSetLinhasBuffer }

{ Params: 0 - Integer
}
procedure TMetodoSetLinhasBuffer.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.LinhasBuffer := StrToInt(fpcmd.Params(0));
  end;
end;

{ TMetodoColunasFonteExpandida }

procedure TMetodoColunasFonteExpandida.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpcmd.Resposta := IntToStr(ACBrPosPrinter.ColunasFonteExpandida);
  end;
end;

{ TMetodoColunasFonteCondensada }

procedure TMetodoColunasFonteCondensada.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpcmd.Resposta := IntToStr(ACBrPosPrinter.ColunasFonteCondensada);
  end;
end;

{ TMetodoPaginadeCodigo }

procedure TMetodoPaginadeCodigo.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpcmd.Resposta := GetEnumName(TypeInfo(TACBrPosPaginaCodigo),
              integer(ACBrPosPrinter.PaginaDeCodigo));
  end;
end;

{ TMetodoSetPaginadeCodigo }

{ Params: 0 - Integer
}
procedure TMetodoSetPaginadeCodigo.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.PaginaDeCodigo := TACBrPosPaginaCodigo( StrToInt(fpcmd.Params(0)) );
  end;
end;

{ TMetodoColunasFonteNormal }

procedure TMetodoColunasFonteNormal.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpcmd.Resposta := IntToStr(ACBrPosPrinter.ColunasFonteNormal);
  end;
end;

{ TMetodoSetColunasFonteNormal }

{ Params: 0 - Integer
}
procedure TMetodoSetColunasFonteNormal.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.ColunasFonteNormal := StrToInt(fpcmd.Params(0));
  end;
end;

{ TMetodoCortaPapel }

procedure TMetodoCortaPapel.Executar;
begin
  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    fpcmd.Resposta := BoolToStr(ACBrPosPrinter.CortaPapel, True);
  end;
end;

{ TMetodoSetCortaPapel }

{ Params: 0 - Integer
}
procedure TMetodoSetCortaPapel.Executar;
var
  ACorta: Boolean;
begin
  ACorta := StrToBool(fpcmd.Params(0));

  with TACBrObjetoPosPrinter(fpObjetoDono) do
  begin
    ACBrPosPrinter.CortaPapel := ACorta;

    with MonitorConfig.PosPrinter do
      CortarPapel := ACorta;

    MonitorConfig.SalvarArquivo;
  end;
end;

end.
