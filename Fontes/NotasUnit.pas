unit NotasUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, FMTBcd, SqlExpr;

type
  TNotasForm = class(TForm)
    MenuPanel: TPanel;
    FecharButton: TButton;
    DadosPanel: TPanel;
    PesquisarGroupBox: TGroupBox;
    AlunoRadioButton: TRadioButton;
    DisciplinaRadioButton: TRadioButton;
    ProfessorRadioButton: TRadioButton;
    PesquisarEdit: TEdit;
    MatriculaDBGrid: TDBGrid;
    AlunoDiscProfDataSource: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure AlunoRadioButtonClick(Sender: TObject);
    procedure PesquisarEditChange(Sender: TObject);
    procedure FecharButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotasForm: TNotasForm;

implementation

{$R *.dfm}

uses DataModuleunit;

procedure TNotasForm.FormActivate(Sender: TObject);
begin
  DataModuleBanco.AlunoDiscProfClientDataSet.IndexFieldNames := 'NOMEALUNO';
  AlunoRadioButton.Checked      := true;
  DisciplinaRadioButton.Checked := false;
  ProfessorRadioButton.Checked  := false;
  PesquisarEdit.SetFocus;
end;

procedure TNotasForm.AlunoRadioButtonClick(Sender: TObject);
begin
  if AlunoRadioButton.Checked then
  begin
    DataModuleBanco.AlunoDiscProfClientDataSet.IndexFieldNames := 'NOMEALUNO';
    PesquisarEdit.Hint := 'Digite o Nome de Aluno que deseja pesquisar.';
  end
  else if DisciplinaRadioButton.Checked then
  begin
    DataModuleBanco.AlunoDiscProfClientDataSet.IndexFieldNames := 'NOMEDISCIPLINA';
    PesquisarEdit.Hint := 'Digite o Nome de Disciplina que deseja pesquisar.';
  end
  else
  begin
    DataModuleBanco.AlunoDiscProfClientDataSet.IndexFieldNames := 'NOMEPROFESSOR';
    PesquisarEdit.Hint := 'Digite o Nome de Professor que deseja pesquisar.';
  end;
  PesquisarEdit.SetFocus;
end;

procedure TNotasForm.PesquisarEditChange(Sender: TObject);
begin
  if trim(PesquisarEdit.Text) <> '' then
  begin
    if AlunoRadioButton.Checked then
       DataModuleBanco.AlunoDiscProfClientDataSet.Locate('NOMEALUNO',trim(PesquisarEdit.Text),[loPartialKey])
    else if DisciplinaRadioButton.Checked then
            DataModuleBanco.AlunoDiscProfClientDataSet.Locate('NOMEDISCIPLINA',trim(PesquisarEdit.Text),[loPartialKey])
    else
       DataModuleBanco.AlunoDiscProfClientDataSet.Locate('NOMEPROFESSOR',trim(PesquisarEdit.Text),[loPartialKey])
  end;
end;

procedure TNotasForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

end.
