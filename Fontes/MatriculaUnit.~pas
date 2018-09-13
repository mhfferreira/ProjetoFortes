unit MatriculaUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, FMTBcd, SqlExpr;

type
  TMatriculasForm = class(TForm)
    MenuPanel: TPanel;
    IncluirButton: TButton;
    AlterarButton: TButton;
    ExcluirButton: TButton;
    FecharButton: TButton;
    DadosPanel: TPanel;
    PesquisarGroupBox: TGroupBox;
    AlunoRadioButton: TRadioButton;
    DisciplinaRadioButton: TRadioButton;
    ProfessorRadioButton: TRadioButton;
    PesquisarEdit: TEdit;
    MatriculaDBGrid: TDBGrid;
    AlunoDiscProfDataSource: TDataSource;
    AlunoDiscProfSQLQuery: TSQLQuery;
    procedure FormActivate(Sender: TObject);
    procedure AlunoRadioButtonClick(Sender: TObject);
    procedure PesquisarEditChange(Sender: TObject);
    procedure IncluirButtonClick(Sender: TObject);
    procedure AlterarButtonClick(Sender: TObject);
    procedure ExcluirButtonClick(Sender: TObject);
    procedure FecharButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatriculasForm: TMatriculasForm;

implementation

{$R *.dfm}

uses DataModuleunit, MatriculaIncAltUnit;

procedure TMatriculasForm.FormActivate(Sender: TObject);
begin
  DataModuleBanco.AlunoDiscProfClientDataSet.IndexFieldNames := 'NOMEALUNO';
  AlunoRadioButton.Checked      := true;
  DisciplinaRadioButton.Checked := false;
  ProfessorRadioButton.Checked  := false;
  PesquisarEdit.SetFocus;
end;

procedure TMatriculasForm.AlunoRadioButtonClick(Sender: TObject);
begin
  if AlunoRadioButton.Checked then
  begin
    DataModuleBanco.AlunoDiscProfClientDataSet.IndexFieldNames := 'NOMEALUNO';
    PesquisarEdit.Hint := 'Digite o Nome do Aluno que deseja pesquisar.';
  end
  else if DisciplinaRadioButton.Checked then
  begin
    DataModuleBanco.AlunoDiscProfClientDataSet.IndexFieldNames := 'NOMEDISCIPLINA';
    PesquisarEdit.Hint := 'Digite o Nome da Disciplina que deseja pesquisar.';
  end
  else
  begin
    DataModuleBanco.AlunoDiscProfClientDataSet.IndexFieldNames := 'NOMEPROFESSOR';
    PesquisarEdit.Hint := 'Digite o Nome do Professor que deseja pesquisar.';
  end;
  PesquisarEdit.SetFocus;
end;

procedure TMatriculasForm.PesquisarEditChange(Sender: TObject);
begin
  if trim(PesquisarEdit.Text) <> '' then
  begin
    if AlunoRadioButton.Checked then
       DataModuleBanco.AlunoDiscProfClientDataSet.Locate('NOMEALUNO',trim(PesquisarEdit.Text),[loPartialKey])
    else if DisciplinaRadioButton.Checked then
            DataModuleBanco.DiscProfClientDataSet.Locate('NOMEDISCIPLINA',trim(PesquisarEdit.Text),[loPartialKey])
    else
       DataModuleBanco.DiscProfClientDataSet.Locate('NOMEPROFESSOR',trim(PesquisarEdit.Text),[loPartialKey])
  end;
end;

procedure TMatriculasForm.IncluirButtonClick(Sender: TObject);
begin
  Application.CreateForm(TMatriculaIncAltForm, MatriculaIncAltForm);
  MatriculaIncAltForm.varAcao := 'Incluir';
  MatriculaIncAltForm.ShowModal;
  MatriculaIncAltForm.Release;
end;

procedure TMatriculasForm.AlterarButtonClick(Sender: TObject);
begin
  Application.CreateForm(TMatriculaIncAltForm, MatriculaIncAltForm);
  MatriculaIncAltForm.varAcao := 'Alterar';
  MatriculaIncAltForm.ShowModal;
  MatriculaIncAltForm.Release;
end;

procedure TMatriculasForm.ExcluirButtonClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir essa Matricula?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
  begin
    AlunoDiscProfSQLQuery.Close;
    AlunoDiscProfSQLQuery.SQL.Clear;
    AlunoDiscProfSQLQuery.SQL.Add('Delete from AlunoDisciplinaProfessor where alunodisciplinaprofessorID=:PalunodisciplinaprofessorID');
    AlunoDiscProfSQLQuery.ParamByName('PalunodisciplinaprofessorID').AsInteger := DataModuleBanco.AlunoDiscProfClientDataSetALUNODISCIPLINAPROFESSORID.AsInteger;
    AlunoDiscProfSQLQuery.ExecSQL;
    DataModuleBanco.AlunoDiscProfClientDataSet.Refresh;
  end;
end;

procedure TMatriculasForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

end.
