unit ProfessorIncAltUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FMTBcd, DB, SqlExpr;

type
  TProfessorIncAltForm = class(TForm)
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
    function TestaDadosProfessor(): boolean;
  public
    { Public declarations }
    varAcao: string;
  end;

var
  ProfessorIncAltForm: TProfessorIncAltForm;

implementation

{$R *.dfm}

uses DataModuleUnit, LibUnit, ProfessorUnit;

procedure TProfessorIncAltForm.FormActivate(Sender: TObject);
begin
  if varAcao = 'Incluir' then ProfessorIncAltForm.Caption := 'Incluir Professores'
  else ProfessorIncAltForm.Caption := 'Alterar Professor';
  LimpaCampos;
  NomeEdit.SetFocus;
end;

procedure TProfessorIncAltForm.LimpaCampos;
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
    NomeEdit.Text := DataModuleBanco.ProfessorClientDataSetNOMEPROFESSOR.AsString;
    CPFEdit.Text  := DataModuleBanco.ProfessorClientDataSetCPFPROFESSOR.AsString;
  end;
end;

function TProfessorIncAltForm.TestaDadosProfessor(): boolean;
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
    PesquisaSQLQuery.SQL.Add('select ProfessorID from Professor where cpfprofessor=:Pcpf');
    PesquisaSQLQuery.ParamByName('Pcpf').AsString := CPFEdit.Text;
    PesquisaSQLQuery.ExecSQL();
    if PesquisaSQLQuery.RecNo <> 0 then
    begin
      if ((varAcao = 'Alterar') and (PesquisaSQLQuery.FieldByName('professorID').AsInteger <> DataModuleBanco.ProfessorClientDataSetPROFESSORID.AsInteger))
         or (varAcao = 'Incluir') then
      begin
        ShowMessage('Já existe um Professor cadastrado com este CPF.');
        varResult := false;
      end;
    end;
  end;
}  result := varResult;
end;

procedure TProfessorIncAltForm.NomeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then CPFEdit.SetFocus;
end;

procedure TProfessorIncAltForm.CPFEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then OkButton.SetFocus;
end;

procedure TProfessorIncAltForm.OkButtonClick(Sender: TObject);
begin
  if TestaDadosProfessor() then
  begin
    if varAcao = 'Incluir' then
    begin
      if Application.MessageBox('Confirma a Inclusão deste Professor?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        ProfessoresForm.ProfessorSQLQuery.Close;
        ProfessoresForm.ProfessorSQLQuery.SQL.Clear;
        ProfessoresForm.ProfessorSQLQuery.SQL.Add('Insert into Professor (NOMEPROFESSOR,CPFPROFESSOR) values (:Pnome,:PCPF)');
        ProfessoresForm.ProfessorSQLQuery.ParamByName('Pnome').AsString := NomeEdit.Text;
        ProfessoresForm.ProfessorSQLQuery.ParamByName('PCPF').AsString := CPFEdit.Text;
        ProfessoresForm.ProfessorSQLQuery.ExecSQL;
        LimpaCampos;
      end;
      NomeEdit.SetFocus;
    end
    else
    begin
      if Application.MessageBox('Confirma a Alteração deste Professor?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        ProfessoresForm.ProfessorSQLQuery.Close;
        ProfessoresForm.ProfessorSQLQuery.SQL.Clear;
        ProfessoresForm.ProfessorSQLQuery.SQL.Add('Update Professor set NOMEPROFESSOR=:Pnome, CPFPROFESSOR=:PCPF where professorID=:PprofessorID');
        ProfessoresForm.ProfessorSQLQuery.ParamByName('PprofessorID').AsInteger := DataModuleBanco.ProfessorClientDataSetPROFESSORID.AsInteger;
        ProfessoresForm.ProfessorSQLQuery.ParamByName('Pnome').AsString     := NomeEdit.Text;
        ProfessoresForm.ProfessorSQLQuery.ParamByName('PCPF').AsString      := CPFEdit.Text;
        ProfessoresForm.ProfessorSQLQuery.ExecSQL;
        Close;
      end
      else NomeEdit.SetFocus;
    end;
  end;
end;

procedure TProfessorIncAltForm.CancelarButtonClick(Sender: TObject);
begin
  LimpaCampos;
end;

procedure TProfessorIncAltForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TProfessorIncAltForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModuleBanco.ProfessorClientDataSet.Refresh;
end;

end.
