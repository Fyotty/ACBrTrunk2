{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para interação com equipa- }
{ mentos de Automação Comercial utilizados no Brasil                           }

{ Direitos Autorais Reservados (c) 2018 Daniel Simoes de Almeida               }

{ Colaboradores nesse arquivo: José M. S. Junior                               }

{  Você pode obter a última versão desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }

{  Esta biblioteca é software livre; você pode redistribuí-la e/ou modificá-la }
{ sob os termos da Licença Pública Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a versão 2.1 da Licença, ou (a seu critério) }
{ qualquer versão posterior.                                                   }

{  Esta biblioteca é distribuída na expectativa de que seja útil, porém, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia implícita de COMERCIABILIDADE OU      }
{ ADEQUAÇÃO A UMA FINALIDADE ESPECÍFICA. Consulte a Licença Pública Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICENÇA.TXT ou LICENSE.TXT)              }

{  Você deve ter recebido uma cópia da Licença Pública Geral Menor do GNU junto}
{ com esta biblioteca; se não, escreva para a Free Software Foundation, Inc.,  }
{ no endereço 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Você também pode obter uma copia da licença em:                              }
{ http://www.opensource.org/licenses/gpl-license.php                           }

{ Daniel Simões de Almeida  -  daniel@djsystem.com.br  -  www.djsystem.com.br  }
{        Rua Cel.Aureliano de Camargo, 973 - Tatuí - SP - 18270-170            }

{******************************************************************************}

{$I ACBr.inc}

unit ACBrLibBoletoClass;


interface

uses
  Classes, SysUtils, Forms, ACBrLibComum,
   ACBrLibBoletoDataModule;

type

  {TACBrLibBoleto}

  TACBrLibBoleto = class(TACBrLib)
    private
      FBoletoDM: TLibBoletoDM;

    protected
      procedure Inicializar; override;
      procedure CriarConfiguracao(ArqConfig: string = ''; ChaveCrypt: ansistring = ''); override;
      procedure Executar; override;

    public
      constructor Create(ArqConfig: string = ''; ChaveCrypt: ansistring = ''); override;
      destructor Destroy; override;

      property BoletoDM: TLibBoletoDM read FBoletoDM;

  end;

  {%region Redeclarando Métodos de ACBrLibComum, com nome específico}
  function Boleto_Inicializar(const eArqConfig, eChaveCrypt: PChar): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_Finalizar: longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_Nome(const sNome: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_Versao(const sVersao: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_UltimoRetorno(const sMensagem: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_ConfigLer(const eArqConfig: PChar): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_ConfigGravar(const eArqConfig: PChar): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_ConfigLerValor(const eSessao, eChave: PChar; sValor: PChar;
    var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_ConfigGravarValor(const eSessao, eChave, eValor: PChar): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  {%endregion}

  {%region Boleto}

  function Boleto_ConfigurarDados(eArquivoIni: PChar; const sResposta: PChar;
    var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_IncluirTitulos(eArquivoIni, eTpSaida: PChar; const sResposta: PChar;
    var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_LimparLista: longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_TotalTitulosLista: longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_Imprimir(eNomeImpressora: PChar): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_GerarPDF: longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_GerarHTML: longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_GerarRemessa(eDir: PChar; eNumArquivo: longInt; eNomeArq: PChar): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_LerRetorno(eDir, eNomeArq: PChar; eListaRelat: Boolean): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_EnviarEmail(ePara, eAssunto, eMensagem, eCC: PChar): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_SetDiretorioArquivo(eDir, eArq: PChar; const sResposta: PChar;
    var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_ListaBancos(const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_ListaCaractTitulo(const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_ListaOcorrencias(const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_ListaOcorrenciasEX(const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_TamNossoNumero(eCarteira: PChar; const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_CodigosMoraAceitos(const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_SelecionaBanco(eCodBanco: PChar; const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_MontarNossoNumero(eIndice: longint; const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_RetornaLinhaDigitavel(eIndice: longint; const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  function Boleto_RetornaCodigoBarras(eIndice: longint; const sResposta: PChar; var esTamanho: longint): longint;
    {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};

  {%endregion}

  {%region Funções Internas}

  function ListaBancos(): String;
  function ListaCaractTitulo() : String;
  function ListaOcorrencias(): String;
  function ListaOcorrenciasEX(): String;

  {%endregion}

implementation

uses
  ACBrLibConsts, ACBrLibBoletoConsts, ACBrLibConfig, ACBrUtil, strutils, typinfo,
  ACBrBoleto;

{%region Redeclarando Métodos de ACBrLibComum, com nome específico}

function Boleto_Inicializar(const eArqConfig, eChaveCrypt: PChar): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  Result := LIB_Inicializar(eArqConfig, eChaveCrypt);
end;

function Boleto_Finalizar: longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  Result := LIB_Finalizar;
end;

function Boleto_Nome(const sNome: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  Result := LIB_Nome(sNome, esTamanho);
end;

function Boleto_Versao(const sVersao: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  Result := LIB_Versao(sVersao, esTamanho);
end;

function Boleto_UltimoRetorno(const sMensagem: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  Result := LIB_UltimoRetorno(sMensagem, esTamanho);
end;

function Boleto_ConfigLer(const eArqConfig: PChar): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  Result := LIB_ConfigLer(eArqConfig);
end;

function Boleto_ConfigGravar(const eArqConfig: PChar): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  Result := LIB_ConfigGravar(eArqConfig);
end;

function Boleto_ConfigLerValor(const eSessao, eChave: PChar; sValor: PChar;
  var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  Result := LIB_ConfigLerValor(eSessao, eChave, sValor, esTamanho);
end;

function Boleto_ConfigGravarValor(const eSessao, eChave, eValor: PChar): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  Result := LIB_ConfigGravarValor(eSessao, eChave, eValor);
end;

{%endregion}

{%region Boleto}


function Boleto_ConfigurarDados(eArquivoIni: PChar; const sResposta: PChar;
  var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
  Resposta : AnsiString;
  ArquivoIni : String;
begin
   try
     VerificarLibInicializada;
     ArquivoIni := String(eArquivoIni);

     if pLib.Config.Log.Nivel > logNormal then
       pLib.GravarLog('Boleto_ConfigurarDados(' + ArquivoIni + ' )', logCompleto, True)
     else
       pLib.GravarLog('Boleto_ConfigurarDados', logNormal);

     with TACBrLibBoleto(pLib) do
     begin
       BoletoDM.Travar;
       try
         Resposta := '';
         if not (BoletoDM.ACBrBoleto1.LerArqIni( ArquivoIni )) then
           Resposta := Format( SErroLerArquivoEntrada, [ArquivoIni]);

         MoverStringParaPChar(Resposta, sResposta, esTamanho);
         Result := SetRetorno(ErrOK, Resposta);
       finally
         BoletoDM.Destravar;
       end;
     end;
   except
     on E: EACBrLibException do
       Result := SetRetorno(E.Erro, E.Message);
     on E: Exception do
       Result := SetRetorno(ErrExecutandoMetodo, E.Message);
   end;
end;

function Boleto_IncluirTitulos(eArquivoIni, eTpSaida: PChar; const sResposta: PChar;
  var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
  Resposta : AnsiString;
  ArquivoIni : String;
  TpSaida : String;
begin
  try
     VerificarLibInicializada;
     ArquivoIni := String(eArquivoIni);
     TpSaida := String(eTpSaida);

     if pLib.Config.Log.Nivel > logNormal then
       pLib.GravarLog('Boleto_IncluirTitulos(' + ArquivoIni + ' )', logCompleto, True)
     else
       pLib.GravarLog('Boleto_IncluirTitulos', logNormal);

     with TACBrLibBoleto(pLib) do
     begin
       BoletoDM.Travar;
       try
         Resposta := '';
         if not (BoletoDM.ACBrBoleto1.LerArqIni( ArquivoIni )) then
           Resposta := Format( SErroLerArquivoEntrada, [ArquivoIni])
         else
         begin
           if TpSaida = 'I' then
             BoletoDM.ACBrBoleto1.Imprimir
           else if TpSaida = 'P' then
             BoletoDM.ACBrBoleto1.GerarPDF
           else if TpSaida = 'E' then
           begin
             {with MonitorConfig.BOLETO.Email do
             begin
               Mensagem := TStringList.Create;
               try
                 Mensagem.Add(EmailMensagemBoleto);
                     ACBrBoleto.EnviarEmail( ACBrBoleto.ListadeBoletos[0].Sacado.Email,
                                  EmailAssuntoBoleto,
                                  Mensagem,
                                  True );
                     fpCmd.Resposta := 'E-mail enviado com sucesso!'

               finally
                 Mensagem.Free;
               end;
             end;}

           end;

         end;

         MoverStringParaPChar(Resposta, sResposta, esTamanho);
         Result := SetRetorno(ErrOK, Resposta);
       finally
         BoletoDM.Destravar;
       end;
     end;
   except
     on E: EACBrLibException do
       Result := SetRetorno(E.Erro, E.Message);
     on E: Exception do
       Result := SetRetorno(ErrExecutandoMetodo, E.Message);
   end;

end;

function Boleto_LimparLista: longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  try
    VerificarLibInicializada;
    pLib.GravarLog('Boleto_LimparLista', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        BoletoDM.ACBrBoleto1.ListadeBoletos.Clear;
        Result := SetRetorno(ErrOK);
      finally
        BoletoDM.Destravar;
      end;
    end;
  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);

    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_TotalTitulosLista: longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  try
    VerificarLibInicializada;
    pLib.GravarLog('Boleto_TotalTitulosLista', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Result := SetRetornoBoletosCarregados(BoletoDM.ACBrBoleto1.ListadeBoletos.Count);
      finally
        BoletoDM.Destravar;
      end;
    end;
  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);

    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_Imprimir(eNomeImpressora: PChar): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
  NomeImpressora : String;
begin
  try
    VerificarLibInicializada;
    NomeImpressora := String(eNomeImpressora);
    pLib.GravarLog('Boleto_Imprimir', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        if NaoEstaVazio(NomeImpressora) then
          BoletoDM.ACBrBoleto1.ACBrBoletoFC.PrinterName := NomeImpressora;
        BoletoDM.ACBrBoleto1.Imprimir;
        Result := SetRetorno(ErrOK);

      finally
        BoletoDM.Destravar;
      end;
    end;
  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);

    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;

end;

function Boleto_GerarPDF: longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  try
    VerificarLibInicializada;
    pLib.GravarLog('Boleto_GerarPDF', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        BoletoDM.ACBrBoleto1.GerarPDF;
        Result := SetRetorno(ErrOK);

      finally
        BoletoDM.Destravar;
      end;
    end;
  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);

    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_GerarHTML: longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
begin
  try
    VerificarLibInicializada;
    pLib.GravarLog('Boleto_GerarHTML', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        BoletoDM.ACBrBoleto1.GerarHTML;
        Result := SetRetorno(ErrOK);

      finally
        BoletoDM.Destravar;
      end;
    end;
  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);

    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_GerarRemessa(eDir: PChar; eNumArquivo: longInt; eNomeArq: PChar): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
  Dir: String;
  NumArquivo: Integer;
  NomeArq: String;
begin
  try
    VerificarLibInicializada;
    Dir := String(eDir);
    NumArquivo:= StrToIntDef( IntToStr( eNumArquivo ), 0);
    NomeArq:= String(eNomeArq);
    pLib.GravarLog('Boleto_GerarRemessa', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        if NaoEstaVazio( Dir ) then
          BoletoDM.ACBrBoleto1.DirArqRemessa := Dir;
        if NaoEstaVazio( NomeArq ) then
          BoletoDM.ACBrBoleto1.NomeArqRemessa:= NomeArq;
        BoletoDM.ACBrBoleto1.GerarRemessa( NumArquivo );
        Result := SetRetorno(ErrOK);

      finally
        BoletoDM.Destravar;
      end;
    end;
  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);

    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_LerRetorno(eDir, eNomeArq: PChar; eListaRelat: Boolean): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
  Dir: String;
  NomeArq: String;
  //ListaRelat: Boolean;
begin
  try
    VerificarLibInicializada;
    Dir := String(eDir);
    NomeArq:= String(eNomeArq);
    //ListaRelat:= eListaRelat;
    pLib.GravarLog('Boleto_LerRetorno', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        if NaoEstaVazio( Dir ) then
          BoletoDM.ACBrBoleto1.DirArqRetorno := Dir;
        if NaoEstaVazio( NomeArq ) then
          BoletoDM.ACBrBoleto1.NomeArqRetorno:= NomeArq;
        BoletoDM.ACBrBoleto1.LerRetorno();
        BoletoDM.ACBrBoleto1.GravarArqIni(Dir,'');
        //if ( ListaRelat ) then
          //ImprimeRelatorioRetorno(Dir);
        Result := SetRetorno(ErrOK);

      finally
        BoletoDM.Destravar;
      end;
    end;
  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);

    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_EnviarEmail(ePara, eAssunto, eMensagem, eCC: PChar): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
  Para, Assunto, Mensagem, CC: String;
  slMensagem, slCC: TStrings;
begin
  try
    VerificarLibInicializada;
    Para := String(ePara);
    Assunto := String(eAssunto);
    Mensagem := String(eMensagem);
    CC := String(eCC);

    if pLib.Config.Log.Nivel > logNormal then
      pLib.GravarLog('Boleto_EnviarEmail(' + Para + ',' + Assunto
      + ',' + Mensagem + ',' + CC +')', logCompleto, True)
    else
      pLib.GravarLog('Boleto_EnviarEmail', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;

      if EstaVazio(ePara) and (BoletoDM.ACBrBoleto1.ListadeBoletos.Count > 0) then
        Para := BoletoDM.ACBrBoleto1.ListadeBoletos[0].Sacado.Email;

      try
        slMensagem := TStringList.Create;
        slMensagem.Text := Mensagem;

        slCC := TStringList.Create;
        slCC.Text := CC;

        BoletoDM.ACBrBoleto1.EnviarEmail(Para, Assunto, slMensagem, True, slCC);
        Result := SetRetorno(ErrOK);
      finally
        slMensagem.Free;
        slCC.Free;
        BoletoDM.Destravar;
      end;
    end;
  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);

    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_SetDiretorioArquivo(eDir, eArq: PChar; const sResposta: PChar;
  var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
  Resposta : AnsiString;
  Dir : String;
  Arq : String;
begin
   try
     VerificarLibInicializada;
     Dir := String(eDir);
     Arq := String(eArq);

     if pLib.Config.Log.Nivel > logNormal then
       pLib.GravarLog('Boleto_SetDiretorioArquivo( Diretorio: ' + Dir +
       ' Arquivo: ' + Arq + ' )', logCompleto, True)
     else
       pLib.GravarLog('Boleto_SetDiretorioArquivo', logNormal);

     if DirectoryExists(Dir) then
     begin
       with TACBrLibBoleto(pLib) do
       begin
         BoletoDM.Travar;
         try
           Resposta := '';
           if BoletoDM.ACBrBoleto1.ACBrBoletoFC.Filtro = TACBrBoletoFCFiltro(fiHTML) then
             BoletoDM.ACBrBoleto1.ACBrBoletoFC.NomeArquivo := PathWithDelim( Dir )  +
             IfThen(NaoEstaVazio(Arq), Arq , 'boleto.html' )
           else
             BoletoDM.ACBrBoleto1.ACBrBoletoFC.NomeArquivo := PathWithDelim( Dir ) +
             IfThen(NaoEstaVazio(Arq), Arq , 'boleto.pdf' );

           Resposta := BoletoDM.ACBrBoleto1.ACBrBoletoFC.NomeArquivo;
           MoverStringParaPChar(Resposta, sResposta, esTamanho);
           Result := SetRetorno(ErrOK, Resposta);
         finally
           BoletoDM.Destravar;
         end;
       end;

     end
     else
       Result := SetRetorno(ErrDiretorioNaoExiste);
   except
     on E: EACBrLibException do
       Result := SetRetorno(E.Erro, E.Message);
     on E: Exception do
       Result := SetRetorno(ErrExecutandoMetodo, E.Message);
   end;
end;

function Boleto_ListaBancos(const sResposta: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
   Resposta : AnsiString;
begin
  try
    VerificarLibInicializada;

    pLib.GravarLog('Boleto_SetDiretorioArquivo', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Resposta := '';
        Resposta := ListaBancos;
        MoverStringParaPChar(Resposta, sResposta, esTamanho);
        Result := SetRetorno(ErrOK, Resposta);
      finally
        BoletoDM.Destravar;
      end;
    end;

  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);
    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_ListaCaractTitulo(const sResposta: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
   Resposta : AnsiString;
begin
  try
    VerificarLibInicializada;

    pLib.GravarLog('Boleto_ListaCaractTitulo', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Resposta := '';
        Resposta := ListaCaractTitulo();
        MoverStringParaPChar(Resposta, sResposta, esTamanho);
        Result := SetRetorno(ErrOK, Resposta);
      finally
        BoletoDM.Destravar;
      end;
    end;

  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);
    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_ListaOcorrencias(const sResposta: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
   Resposta : AnsiString;
begin
  try
    VerificarLibInicializada;

    pLib.GravarLog('Boleto_ListaOcorrencias', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Resposta := '';
        Resposta := ListaOcorrencias();
        MoverStringParaPChar(Resposta, sResposta, esTamanho);
        Result := SetRetorno(ErrOK, Resposta);
      finally
        BoletoDM.Destravar;
      end;
    end;

  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);
    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_ListaOcorrenciasEX(const sResposta: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
   Resposta : AnsiString;
begin
  try
    VerificarLibInicializada;

    pLib.GravarLog('Boleto_ListaOcorrenciasEX', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Resposta := '';
        Resposta := ListaOcorrenciasEX();
        MoverStringParaPChar(Resposta, sResposta, esTamanho);
        Result := SetRetorno(ErrOK, Resposta);
      finally
        BoletoDM.Destravar;
      end;
    end;

  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);
    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_TamNossoNumero(eCarteira: PChar; const sResposta: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
   Resposta : AnsiString;
   Carteira : String;
begin
  try
    VerificarLibInicializada;
    Carteira := String(eCarteira);

    pLib.GravarLog('Boleto_TamNossoNumero', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Resposta := '';
        Resposta := IntToStr(BoletoDM.ACBrBoleto1.Banco.CalcularTamMaximoNossoNumero(Carteira));
        MoverStringParaPChar(Resposta, sResposta, esTamanho);
        Result := SetRetorno(ErrOK, Resposta);
      finally
        BoletoDM.Destravar;
      end;
    end;

  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);
    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_CodigosMoraAceitos(const sResposta: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
  var
     Resposta : AnsiString;
  begin
    try
      VerificarLibInicializada;

      pLib.GravarLog('Boleto_CodigosMoraAceitos', logNormal);

      with TACBrLibBoleto(pLib) do
      begin
        BoletoDM.Travar;
        try
          Resposta := '';
          Resposta := BoletoDM.ACBrBoleto1.Banco.CodigosMoraAceitos;
          MoverStringParaPChar(Resposta, sResposta, esTamanho);
          Result := SetRetorno(ErrOK, Resposta);
        finally
          BoletoDM.Destravar;
        end;
      end;

    except
      on E: EACBrLibException do
        Result := SetRetorno(E.Erro, E.Message);
      on E: Exception do
        Result := SetRetorno(ErrExecutandoMetodo, E.Message);
    end;
  end;

function Boleto_SelecionaBanco(eCodBanco: PChar; const sResposta: PChar; var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
   Resposta : AnsiString;
   CodBanco : String;
begin
  try
    VerificarLibInicializada;
    CodBanco := String(eCodBanco);

    pLib.GravarLog('Boleto_SelecionaBanco', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Resposta := '';
        BoletoDM.ACBrBoleto1.Banco.TipoCobranca := BoletoDM.ACBrBoleto1.GetTipoCobranca(
                                                StrToInt64Def(Trim(CodBanco),0));
        Resposta := CodBanco;
        MoverStringParaPChar(Resposta, sResposta, esTamanho);
        Result := SetRetorno(ErrOK, Resposta);
      finally
        BoletoDM.Destravar;
      end;
    end;

  except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);
    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_MontarNossoNumero(eIndice: longint; const sResposta: PChar;
         var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
   Resposta : AnsiString;
   Indice : Integer;
begin
  try
    VerificarLibInicializada;
    Indice := StrToInt( IntToStrZero( eIndice,1 ));
    pLib.GravarLog('Boleto_MontarNossoNumero', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Resposta := '';
        if (BoletoDM.ACBrBoleto1.ListadeBoletos.Count = 0) then
          Result := SetRetorno(ErrArquivoNaoExiste)
        else
        begin
          Resposta := BoletoDM.ACBrBoleto1.Banco.MontarCampoNossoNumero(
                   BoletoDM.ACBrBoleto1.ListadeBoletos[Indice]);
          MoverStringParaPChar(Resposta, sResposta, esTamanho);
          Result := SetRetorno(ErrOK, Resposta);

        end;
      finally
        BoletoDM.Destravar;
      end;
    end;
    except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);
    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_RetornaLinhaDigitavel(eIndice: longint; const sResposta: PChar;
         var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
   Resposta : AnsiString;
   Indice : Integer;
   ABarras : String;
begin
  try
    VerificarLibInicializada;
    Indice := StrToInt( IntToStrZero( eIndice, 1 ));
    pLib.GravarLog('RetornaLinhaDigitavel', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Resposta := '';
        if (BoletoDM.ACBrBoleto1.ListadeBoletos.Count = 0) then
          Result := SetRetorno(ErrArquivoNaoExiste)
        else
        begin
          ABarras := BoletoDM.ACBrBoleto1.Banco.MontarCodigoBarras(
                  BoletoDM.ACBrBoleto1.ListadeBoletos[Indice]);
          Resposta := BoletoDM.ACBrBoleto1.Banco.MontarLinhaDigitavel(ABarras,
                   BoletoDM.ACBrBoleto1.ListadeBoletos[Indice]);
          MoverStringParaPChar(Resposta, sResposta, esTamanho);
          Result := SetRetorno(ErrOK, Resposta);

        end;
      finally
        BoletoDM.Destravar;
      end;

    end;
    except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);
    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

function Boleto_RetornaCodigoBarras(eIndice: longint; const sResposta: PChar;
  var esTamanho: longint): longint;
  {$IfDef STDCALL} stdcall{$Else} cdecl{$EndIf};
var
   Resposta : AnsiString;
   Indice : Integer;
begin
  try
    VerificarLibInicializada;
    Indice := StrToInt( IntToStrZero( eIndice,1 ));
    pLib.GravarLog('Boleto_RetornaCodigoBarras', logNormal);

    with TACBrLibBoleto(pLib) do
    begin
      BoletoDM.Travar;
      try
        Resposta := '';
        if (BoletoDM.ACBrBoleto1.ListadeBoletos.Count = 0) then
          Result := SetRetorno(ErrArquivoNaoExiste)
        else
        begin
          Resposta := BoletoDM.ACBrBoleto1.Banco.MontarCodigoBarras(
                   BoletoDM.ACBrBoleto1.ListadeBoletos[Indice]);
          MoverStringParaPChar(Resposta, sResposta, esTamanho);
          Result := SetRetorno(ErrOK, Resposta);

        end;
      finally
        BoletoDM.Destravar;
      end;

    end;
    except
    on E: EACBrLibException do
      Result := SetRetorno(E.Erro, E.Message);
    on E: Exception do
      Result := SetRetorno(ErrExecutandoMetodo, E.Message);
  end;
end;

{%endregion}

{%region Funções Internas}

function ListaBancos(): String;
var
   IBanco : TACBrTipoCobranca;
   SBanco : String;
begin
   IBanco := Low(TACBrTipoCobranca);
   Inc(IBanco); // Removendo item 0-Nenhum
   Result := '';

   while IBanco <= High(TACBrTipoCobranca) do
   begin
     sBanco := GetEnumName( TypeInfo(TACBrTipoCobranca), Integer(IBanco) );
     sBanco := copy(SBanco,4, Length(SBanco)); // Removendo "cob" do nome do banco.
     Result := Result + sBanco + '|';

     Inc(IBanco);
   end;

   if Result <> '' then
      Result := copy(Result,1,Length(Result)-1) ;
end;

function ListaCaractTitulo(): String;
var
   ICaractTitulo : TACBrCaracTitulo;
   SCaractTitulo : String;
begin
   ICaractTitulo := Low(TACBrCaracTitulo);

   while ICaractTitulo <= High(TACBrCaracTitulo) do
   begin
     SCaractTitulo := GetEnumName( TypeInfo(TACBrCaracTitulo), Integer(ICaractTitulo) );
     SCaractTitulo := copy(SCaractTitulo, 3, Length(SCaractTitulo)); // Removendo "tc".
     Result := Result + SCaractTitulo + '|';

     Inc(ICaractTitulo);
   end;

   if Result <> '' then
      Result := copy(Result,1,Length(Result)-1) ;
end;

function ListaOcorrencias(): String;
var
   ITipoOcorrencia : TACBrTipoOcorrencia;
   SOcorrencia     : String;
begin
  ITipoOcorrencia := Low(TACBrTipoOcorrencia);
    while ( ITipoOcorrencia <= High(TACBrTipoOcorrencia) ) do
  begin
    SOcorrencia := GetEnumName( TypeInfo(TACBrTipoOcorrencia), Integer(ITipoOcorrencia) ) ;
    Result := Result + copy(SOcorrencia, 3, Length(SOcorrencia)) + '|';  //Remove "to"
    Inc(ITipoOcorrencia);
  end;
    if (Result <> '') then
    Result := copy(Result,1,Length(Result)-1) ;
end;

function ListaOcorrenciasEX(): String;
var
   ITipoOcorrencia : TACBrTipoOcorrencia;
   SOcorrencia     : String;
   ValorIndice     : Integer;
begin
  ITipoOcorrencia := Low(TACBrTipoOcorrencia);

  while ( ITipoOcorrencia <= High(TACBrTipoOcorrencia) ) do
  begin
    ValorIndice := Integer(ITipoOcorrencia);
    SOcorrencia := GetEnumName( TypeInfo(TACBrTipoOcorrencia), ValorIndice ) ;
    Result := Result + IntToStr(ValorIndice) + '-' +
              copy(SOcorrencia, 3, Length(SOcorrencia)) + '|';  //Remove "to"
    Inc(ITipoOcorrencia);
  end;

  if (Result <> '') then
    Result := copy(Result, 1, Length(Result)-1) ;
end;

{%endregion}

{ TACBrLibBoleto }

procedure TACBrLibBoleto.Inicializar;
begin
  GravarLog('TACBrLibBoleto.Inicializar', logNormal);

  //FBoletoDM.CriarACBrMail;

  GravarLog('TACBrLibBoleto.Inicializar - Feito', logParanoico);

  inherited Inicializar;
end;

procedure TACBrLibBoleto.CriarConfiguracao(ArqConfig: string;
  ChaveCrypt: ansistring);
begin
  //fpConfig := TLibBoletoConfig.Create(Self, ArqConfig, ChaveCrypt);
end;

procedure TACBrLibBoleto.Executar;
begin
  inherited Executar;
  //FBoletoDM.AplicarConfiguracoes;
end;

constructor TACBrLibBoleto.Create(ArqConfig: string; ChaveCrypt: ansistring);
begin
  inherited Create(ArqConfig, ChaveCrypt);
  fpNome := CLibBoletoNome;
  fpVersao := CLibBoletoVersao;

  FBoletoDM := TLibBoletoDM.Create(nil);
end;

destructor TACBrLibBoleto.Destroy;
begin
  FBoletoDM.Free;
  inherited Destroy;
end;

end.

