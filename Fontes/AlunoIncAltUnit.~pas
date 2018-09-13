unit AlunoIncAltUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FMTBcd, DB, SqlExpr;

type
  TAlunoIncAltForm = class(TForm)
    DadosPanel: TPanel;
    BotaoPanel: TPanel;
    NomeLabel: TLabel;
    NomeEdit: TEdit;
    CPFLabel: TLabel;
    CPFEdit: TEdit;
    OkButton: TButton;
    CancelarButton: TButton;
    FecharButton: TButton;
    PesquisaSQLQuery: TSQLQuery;
    procedure FormActivate(Sender: TObject);
    procedure NomeEditKeyPress(Sender: TObject; var Key: Char);
    procedure CPFEditKeyPress(Sender: TObject; var Key: Char);
    procedure OkButtonClick(Sender: TObject);
    procedure CancelarButtonClick(Sender: TObject);
    procedure FecharButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LimpaCampos;
    function TestaDadosAluno(): boolean;
  public
    { Public declarations }
    varAcao: string;
  end;

var
  AlunoIncAltForm: TAlunoIncAltForm;

implementation

{$R *.dfm}

uses DataModuleUnit, LibUnit, AlunoUnit;

procedure TAlunoIncAltForm.FormActivate(Sender: TObject);
begin
  if varAcao = 'Incluir' then AlunoIncAltForm.Caption := 'Incluir Alunos'
  else AlunoIncAltForm.Caption := 'Alterar Aluno';
  LimpaCampos;
  NomeEdit.SetFocus;
end;

procedure TAlunoIncAltForm.LimpaCampos;
begin
  NomeLabel.Caption    := 'Nome:';
  NomeLabel.Font.Color := clWindowText;
  CPFLabel.Caption     := 'CPF: - sem pontuação';
  CPFLabel.Font.Color  := clWindowText;
  if varAcao = 'Incluir' then
  begin
    NomeEdit.Text := '';
    CPFEdit.Text  := '';
  end
  else
  begin
    NomeEdit.Text := DataModuleBanco.AlunoClientDataSetNOMEALUNO.AsString;
    CPFEdit.Text  := DataModuleBanco.AlunoClientDataSetCPFALUNO.AsString;
  end;
end;

function TAlunoIncAltForm.TestaDadosAluno(): boolean;
var
  varResult:boolean;
begin
  varResult    := true;
  CPFEdit.Text := TiraPontos(CPFEdit.Text);
  if trim(NomeEdit.Text) = '' then
  begin
    NomeLabel.Caption    := 'Nome:  (** CAMPO OBRIGATÓRIO **)';
    NomeLabel.Font.Color := clRed;
    varResult            := false;
  end;
  if trim(CPFEdit.Text) = '' then
  begin
    CPFLabel.Caption     := 'CPF: - sem pontuação  (** CAMPO OBRIGATÓRIO **)';
    CPFLabel.Font.Color  := clRed;
    varResult            := false;
  end;
{  if varResult then
  begin
    PesquisaSQLQuery.Close;
    PesquisaSQLQuery.SQL.Clear;
    PesquisaSQLQuery.SQL.Add('select alunoID from Aluno where cpfaluno=:Pcpf');
    PesquisaSQLQuery.ParamByName('Pcpf').AsString := CPFEdit.Text;
    PesquisaSQLQuery.ExecSQL();
    if PesquisaSQLQuery.RecNo <> 0 then
    begin
      if ((varAcao = 'Alterar') and (PesquisaSQLQuery.FieldByName('alunoID').AsInteger <> DataModuleBanco.AlunoClientDataSetALUNOID.AsInteger))
         or (varAcao = 'Incluir') then
      begin
        ShowMessage('Já existe um aluno cadastrado com este CPF.');
        varResult := false;
      end;
    end;
  end;
}  result := varResult;
end;

procedure TAlunoIncAltForm.NomeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then CPFEdit.SetFocus;
end;

procedure TAlunoIncAltForm.CPFEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then OkButton.SetFocus;
end;

procedure TAlunoIncAltForm.OkButtonClick(Sender: TObject);
begin
  if TestaDadosAluno() then
  begin
    if varAcao = 'Incluir' then
    begin
      if Application.MessageBox('Confirma a Inclusão deste Aluno?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        AlunosForm.AlunoSQLQuery.Close;
        AlunosForm.AlunoSQLQuery.SQL.Clear;
        AlunosForm.AlunoSQLQuery.SQL.Add('Insert into Aluno (NOMEALUNO,CPFALUNO) values (:Pnome,:PCPF)');
        AlunosForm.AlunoSQLQuery.ParamByName('Pnome').AsString := NomeEdit.Text;
        AlunosForm.AlunoSQLQuery.ParamByName('PCPF').AsString := CPFEdit.Text;
        AlunosForm.AlunoSQLQuery.ExecSQL;
        LimpaCampos;
      end;
      NomeEdit.SetFocus;
    end
    else
    begin
      if Application.MessageBox('Confirma a Alteração deste Aluno?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        AlunosForm.AlunoSQLQuery.Close;
        AlunosForm.AlunoSQLQuery.SQL.Clear;
        AlunosForm.AlunoSQLQuery.SQL.Add('Update Aluno set NOMEALUNO=:Pnome, CPFALUNO=:PCPF where alunoID=:PalunoID');
        AlunosForm.AlunoSQLQuery.ParamByName('PalunoID').AsInteger := DataModuleBanco.AlunoClientDataSetALUNOID.AsInteger;
        AlunosForm.AlunoSQLQuery.ParamByName('Pnome').AsString     := NomeEdit.Text;
        AlunosForm.AlunoSQLQuery.ParamByName('PCPF').AsString      := CPFEdit.Text;
        AlunosForm.AlunoSQLQuery.ExecSQL;
        Close;
      end
      else NomeEdit.SetFocus;
    end;
  end;
end;

procedure TAlunoIncAltForm.CancelarButtonClick(Sender: TObject);
begin
  LimpaCampos;
end;

procedure TAlunoIncAltForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TAlunoIncAltForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModuleBanco.AlunoClientDataSet.Refresh;
end;

end.
