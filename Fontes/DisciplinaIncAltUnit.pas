unit DisciplinaIncAltUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FMTBcd, DB, SqlExpr;

type
  TDisciplinaIncAltForm = class(TForm)
    DadosPanel: TPanel;
    BotaoPanel: TPanel;
    NomeLabel: TLabel;
    NomeEdit: TEdit;
    OkButton: TButton;
    CancelarButton: TButton;
    FecharButton: TButton;
    PesquisaSQLQuery: TSQLQuery;
    procedure FormActivate(Sender: TObject);
    procedure NomeEditKeyPress(Sender: TObject; var Key: Char);
    procedure OkButtonClick(Sender: TObject);
    procedure CancelarButtonClick(Sender: TObject);
    procedure FecharButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LimpaCampos;
    function TestaDadosDisciplina(): boolean;
  public
    { Public declarations }
    varAcao: string;
  end;

var
  DisciplinaIncAltForm: TDisciplinaIncAltForm;

implementation

{$R *.dfm}

uses DataModuleUnit, LibUnit, DisciplinaUnit;

procedure TDisciplinaIncAltForm.FormActivate(Sender: TObject);
begin
  if varAcao = 'Incluir' then DisciplinaIncAltForm.Caption := 'Incluir Disciplinas'
  else DisciplinaIncAltForm.Caption := 'Alterar Disciplina';
  LimpaCampos;
  NomeEdit.SetFocus;
end;

procedure TDisciplinaIncAltForm.LimpaCampos;
begin
  NomeLabel.Caption    := 'Nome:';
  NomeLabel.Font.Color := clWindowText;
  if varAcao = 'Incluir' then
  begin
    NomeEdit.Text := '';
  end
  else
  begin
    NomeEdit.Text := DataModuleBanco.DisciplinaClientDataSetNOMEDISCIPLINA.AsString;
  end;
end;

function TDisciplinaIncAltForm.TestaDadosDisciplina(): boolean;
var
  varResult:boolean;
begin
  varResult    := true;
  if trim(NomeEdit.Text) = '' then
  begin
    NomeLabel.Caption    := 'Nome:  (** CAMPO OBRIGATÓRIO **)';
    NomeLabel.Font.Color := clRed;
    varResult            := false;
  end;
  result := varResult;
end;

procedure TDisciplinaIncAltForm.NomeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then OkButton.SetFocus;
end;

procedure TDisciplinaIncAltForm.OkButtonClick(Sender: TObject);
begin
  if TestaDadosDisciplina() then
  begin
    if varAcao = 'Incluir' then
    begin
      if Application.MessageBox('Confirma a Inclusão desta Disciplina?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        DisciplinasForm.DisciplinaSQLQuery.Close;
        DisciplinasForm.DisciplinaSQLQuery.SQL.Clear;
        DisciplinasForm.DisciplinaSQLQuery.SQL.Add('Insert into Disciplina (NOMEDISCIPLINA) values (:Pnome)');
        DisciplinasForm.DisciplinaSQLQuery.ParamByName('Pnome').AsString := NomeEdit.Text;
        DisciplinasForm.DisciplinaSQLQuery.ExecSQL;
        LimpaCampos;
      end;
      NomeEdit.SetFocus;
    end
    else
    begin
      if Application.MessageBox('Confirma a Alteração desta Disciplina?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        DisciplinasForm.DisciplinaSQLQuery.Close;
        DisciplinasForm.DisciplinaSQLQuery.SQL.Clear;
        DisciplinasForm.DisciplinaSQLQuery.SQL.Add('Update Disciplina set NOMEDISCIPLINA=:Pnome where disciplinaID=:PdisciplinaID');
        DisciplinasForm.DisciplinaSQLQuery.ParamByName('PdisciplinaID').AsInteger := DataModuleBanco.DisciplinaClientDataSetDISCIPLINAID.AsInteger;
        DisciplinasForm.DisciplinaSQLQuery.ParamByName('Pnome').AsString          := NomeEdit.Text;
        DisciplinasForm.DisciplinaSQLQuery.ExecSQL;
        Close;
      end
      else NomeEdit.SetFocus;
    end;
  end;
end;

procedure TDisciplinaIncAltForm.CancelarButtonClick(Sender: TObject);
begin
  LimpaCampos;
end;

procedure TDisciplinaIncAltForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TDisciplinaIncAltForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModuleBanco.DisciplinaClientDataSet.Refresh;
end;

end.
