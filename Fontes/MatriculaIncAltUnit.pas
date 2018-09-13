unit MatriculaIncAltUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FMTBcd, DB, SqlExpr, DBCtrls, Grids, DBGrids;

type
  TMatriculaIncAltForm = class(TForm)
    DadosPanel: TPanel;
    BotaoPanel: TPanel;
    AlunoLabel: TLabel;
    AlunoEdit: TEdit;
    OkButton: TButton;
    CancelarButton: TButton;
    FecharButton: TButton;
    PesquisaSQLQuery: TSQLQuery;
    AlunoDBGrid: TDBGrid;
    DisciplinaLabel: TLabel;
    DisciplinaEdit: TEdit;
    AtribuicaoDBGrid: TDBGrid;
    AlunoDataSource: TDataSource;
    AtribuicaoDataSource: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure AlunoEditChange(Sender: TObject);
    procedure AlunoEditEnter(Sender: TObject);
    procedure AlunoEditKeyPress(Sender: TObject; var Key: Char);
    procedure AlunoEditExit(Sender: TObject);
    procedure AlunoDBGridDblClick(Sender: TObject);
    procedure AlunoDBGridExit(Sender: TObject);
    procedure DisciplinaEditChange(Sender: TObject);
    procedure DisciplinaEditEnter(Sender: TObject);
    procedure DisciplinaEditKeyPress(Sender: TObject; var Key: Char);
    procedure DisciplinaEditExit(Sender: TObject);
    procedure AtribuicaoDBGridDblClick(Sender: TObject);
    procedure AtribuicaoDBGridExit(Sender: TObject);
    procedure OkButtonClick(Sender: TObject);
    procedure CancelarButtonClick(Sender: TObject);
    procedure FecharButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LimpaCampos;
    function TestaDadosMatricula(): boolean;
  public
    { Public declarations }
    varAcao: string;
  end;

var
  MatriculaIncAltForm: TMatriculaIncAltForm;

implementation

{$R *.dfm}

uses DataModuleUnit, LibUnit, MatriculaUnit;

procedure TMatriculaIncAltForm.FormActivate(Sender: TObject);
begin
  if varAcao = 'Incluir' then MatriculaIncAltForm.Caption := 'Incluir Matriculas de Alunos'
  else MatriculaIncAltForm.Caption := 'Alterar a Matricula do Aluno';
  LimpaCampos;
  AlunoEdit.SetFocus;
end;

procedure TMatriculaIncAltForm.LimpaCampos;
begin
  AlunoLabel.Caption         := 'Aluno:';
  AlunoLabel.Font.Color      := clWindowText;
  DisciplinaLabel.Caption    := 'Disciplina:';
  DisciplinaLabel.Font.Color := clWindowText;
  if varAcao = 'Incluir' then
  begin
    AlunoEdit.Text      := '';
    DisciplinaEdit.Text := '';
  end
  else
  begin
    AlunoEdit.Text := DataModuleBanco.AlunoDiscProfClientDataSetNOMEALUNO.AsString;
    DataModuleBanco.AlunoClientDataSet.Locate('ALUNOID',DataModuleBanco.DiscProfClientDataSetPROFESSORID.AsString,[loCaseInsensitive]);
    DisciplinaEdit.Text := DataModuleBanco.AlunoDiscProfClientDataSetNOMEDISCIPLINA.AsString;
    DataModuleBanco.DiscProfClientDataSet.Locate('DISCIPLINAPROFESSORID',DataModuleBanco.AlunoDiscProfClientDataSetALUNODISCIPLINAPROFESSORID.AsString,[loCaseInsensitive]);
  end;
  AlunoDBGrid.Visible      := false;
  AtribuicaoDBGrid.Visible := false;
end;

function TMatriculaIncAltForm.TestaDadosMatricula(): boolean;
var
  varResult:boolean;
begin
  varResult    := true;
  if trim(AlunoEdit.Text) = '' then
  begin
    AlunoLabel.Caption    := 'Aluno:  (** CAMPO OBRIGATÓRIO **)';
    AlunoLabel.Font.Color := clRed;
    varResult             := false;
  end;
  if trim(DisciplinaEdit.Text) = '' then
  begin
    DisciplinaLabel.Caption    := 'Disciplina:  (** CAMPO OBRIGATÓRIO **)';
    DisciplinaLabel.Font.Color := clRed;
    varResult                  := false;
  end;
  result := varResult;
end;

procedure TMatriculaIncAltForm.AlunoEditChange(
  Sender: TObject);
begin
  AlunoDBGrid.Visible := true;
  DataModuleBanco.AlunoClientDataSet.Locate('NOMEALUNO',trim(AlunoEdit.Text),[loPartialKey])
end;

procedure TMatriculaIncAltForm.AlunoEditEnter(
  Sender: TObject);
begin
  AlunoDBGrid.Visible := true;
end;

procedure TMatriculaIncAltForm.AlunoEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    AlunoEditExit(Sender);
    DisciplinaEdit.SetFocus;
  end;
end;

procedure TMatriculaIncAltForm.AlunoEditExit(
  Sender: TObject);
begin
  AlunoEdit.Text      := DataModuleBanco.AlunoClientDataSetNOMEALUNO.AsString;
  AlunoDBGrid.Visible := false;
end;

procedure TMatriculaIncAltForm.AlunoDBGridDblClick(
  Sender: TObject);
begin
  AlunoEdit.Text      := DataModuleBanco.AlunoClientDataSetNOMEALUNO.AsString;
  AlunoDBGrid.Visible := false;
  DisciplinaEdit.SetFocus;
end;

procedure TMatriculaIncAltForm.AlunoDBGridExit(
  Sender: TObject);
begin
  AlunoDBGrid.Visible := false;
end;

procedure TMatriculaIncAltForm.DisciplinaEditChange(
  Sender: TObject);
begin
  AtribuicaoDBGrid.Visible := true;
  DataModuleBanco.DiscProfClientDataSet.Locate('NOMEDISCIPLINA',trim(DisciplinaEdit.Text),[loPartialKey])
end;

procedure TMatriculaIncAltForm.DisciplinaEditEnter(
  Sender: TObject);
begin
  AtribuicaoDBGrid.Visible := true;
end;

procedure TMatriculaIncAltForm.DisciplinaEditKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    DisciplinaEditExit(Sender);
    OkButton.SetFocus;
  end;
end;

procedure TMatriculaIncAltForm.DisciplinaEditExit(
  Sender: TObject);
begin
  AtribuicaoDBGrid.Visible := false;
  DisciplinaEdit.Text      := DataModuleBanco.DiscProfClientDataSetNOMEDISCIPLINA.AsString;
end;

procedure TMatriculaIncAltForm.AtribuicaoDBGridDblClick(
  Sender: TObject);
begin
  DisciplinaEdit.Text      := DataModuleBanco.DiscProfClientDataSetNOMEDISCIPLINA.AsString;
  AtribuicaoDBGrid.Visible := false;
  OkButton.SetFocus;
end;

procedure TMatriculaIncAltForm.AtribuicaoDBGridExit(
  Sender: TObject);
begin
  AtribuicaoDBGrid.Visible := false;
end;

procedure TMatriculaIncAltForm.OkButtonClick(Sender: TObject);
begin
  AlunoDBGrid.Visible      := false;
  AtribuicaoDBGrid.Visible := false;
  if TestaDadosMatricula() then
  begin
    if varAcao = 'Incluir' then
    begin
      if Application.MessageBox('Confirma a Inclusão desta Matricula?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        MatriculasForm.AlunoDiscProfSQLQuery.Close;
        MatriculasForm.AlunoDiscProfSQLQuery.SQL.Clear;
        MatriculasForm.AlunoDiscProfSQLQuery.SQL.Add('Insert into AlunoDisciplinaProfessor (DISCIPLINAPROFESSORID,ALUNOID) values (:PdisciplinaprofessorID,:PalunoID)');
        MatriculasForm.AlunoDiscProfSQLQuery.ParamByName('PdisciplinaprofessorID').AsInteger := DataModuleBanco.DiscProfClientDataSetDISCIPLINAPROFESSORID.AsInteger;
        MatriculasForm.AlunoDiscProfSQLQuery.ParamByName('PalunoID').AsInteger               := DataModuleBanco.AlunoClientDataSetALUNOID.AsInteger;
        MatriculasForm.AlunoDiscProfSQLQuery.ExecSQL;
        LimpaCampos;
      end;
      AlunoEdit.SetFocus;
    end
    else
    begin
      if Application.MessageBox('Confirma a Alteração desta Atribuição de Disciplina?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        MatriculasForm.AlunoDiscProfSQLQuery.Close;
        MatriculasForm.AlunoDiscProfSQLQuery.SQL.Clear;
        MatriculasForm.AlunoDiscProfSQLQuery.SQL.Add('Update AlunoDisciplinaProfessor set DISCIPLINAPROFESSORID=:PdisciplinaprofessorID, ALUNOID=:PalunoID where alunodisciplinaprofessorID=:PalunodisciplinaprofessorID');
        MatriculasForm.AlunoDiscProfSQLQuery.ParamByName('PalunodisciplinaProfessorID').AsInteger := DataModuleBanco.AlunoDiscProfClientDataSetALUNODISCIPLINAPROFESSORID.AsInteger;
        MatriculasForm.AlunoDiscProfSQLQuery.ParamByName('PdisciplinaprofessorID').AsInteger      := DataModuleBanco.DiscProfClientDataSetDISCIPLINAPROFESSORID.AsInteger;
        MatriculasForm.AlunoDiscProfSQLQuery.ParamByName('PalunoID').AsInteger                    := DataModuleBanco.AlunoClientDataSetALUNOID.AsInteger;
        MatriculasForm.AlunoDiscProfSQLQuery.ExecSQL;
        Close;
      end
      else AlunoEdit.SetFocus;
    end;
  end;
end;

procedure TMatriculaIncAltForm.CancelarButtonClick(Sender: TObject);
begin
  LimpaCampos;
end;

procedure TMatriculaIncAltForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TMatriculaIncAltForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModuleBanco.AlunoDiscProfClientDataSet.Refresh;
end;

end.
