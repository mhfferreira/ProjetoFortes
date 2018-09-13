unit AtribuicaoDisciplinaUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, FMTBcd, SqlExpr;

type
  TAtribuicaoDisciplinasForm = class(TForm)
    MenuPanel: TPanel;
    IncluirButton: TButton;
    AlterarButton: TButton;
    ExcluirButton: TButton;
    FecharButton: TButton;
    DadosPanel: TPanel;
    PesquisarGroupBox: TGroupBox;
    DisciplinaRadioButton: TRadioButton;
    ProfessorRadioButton: TRadioButton;
    PesquisarEdit: TEdit;
    AtribuicaoDisciplinaDBGrid: TDBGrid;
    DiscProfDataSource: TDataSource;
    DiscProfSQLQuery: TSQLQuery;
    procedure FormActivate(Sender: TObject);
    procedure DisciplinaRadioButtonClick(Sender: TObject);
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
  AtribuicaoDisciplinasForm: TAtribuicaoDisciplinasForm;

implementation

{$R *.dfm}

uses DataModuleunit, AtribuicaoDisciplinaIncAltUnit;

procedure TAtribuicaoDisciplinasForm.FormActivate(Sender: TObject);
begin
  DataModuleBanco.DiscProfClientDataSet.IndexFieldNames := 'NOMEDISCIPLINA';
  DisciplinaRadioButton.Checked := true;
  ProfessorRadioButton.Checked  := false;
  PesquisarEdit.SetFocus;
end;

procedure TAtribuicaoDisciplinasForm.DisciplinaRadioButtonClick(
  Sender: TObject);
begin
  if DisciplinaRadioButton.Checked then
  begin
    DataModuleBanco.DiscProfClientDataSet.IndexFieldNames := 'NOMEDISCIPLINA';
    PesquisarEdit.Hint := 'Digite o Nome de Disciplina que deseja pesquisar.';
  end
  else
  begin
    DataModuleBanco.DiscProfClientDataSet.IndexFieldNames := 'NOMEPROFESSOR';
    PesquisarEdit.Hint := 'Digite o Nome de Professor que deseja pesquisar.';
  end;
  PesquisarEdit.SetFocus;
end;

procedure TAtribuicaoDisciplinasForm.PesquisarEditChange(Sender: TObject);
begin
  if trim(PesquisarEdit.Text) <> '' then
  begin
    if DisciplinaRadioButton.Checked then
       DataModuleBanco.DiscProfClientDataSet.Locate('NOMEDISCIPLINA',trim(PesquisarEdit.Text),[loPartialKey])
    else
       DataModuleBanco.DiscProfClientDataSet.Locate('NOMEPROFESSOR',trim(PesquisarEdit.Text),[loPartialKey])
  end;
end;

procedure TAtribuicaoDisciplinasForm.IncluirButtonClick(Sender: TObject);
begin
  Application.CreateForm(TAtribuicaoDisciplinaIncAltForm, AtribuicaoDisciplinaIncAltForm);
  AtribuicaoDisciplinaIncAltForm.varAcao := 'Incluir';
  AtribuicaoDisciplinaIncAltForm.ShowModal;
  AtribuicaoDisciplinaIncAltForm.Release;
end;

procedure TAtribuicaoDisciplinasForm.AlterarButtonClick(Sender: TObject);
begin
  Application.CreateForm(TAtribuicaoDisciplinaIncAltForm, AtribuicaoDisciplinaIncAltForm);
  AtribuicaoDisciplinaIncAltForm.varAcao := 'Alterar';
  AtribuicaoDisciplinaIncAltForm.ShowModal;
  AtribuicaoDisciplinaIncAltForm.Release;
end;

procedure TAtribuicaoDisciplinasForm.ExcluirButtonClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir essa Atribuição de Disciplina?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
  begin
    DiscProfSQLQuery.Close;
    DiscProfSQLQuery.SQL.Clear;
    DiscProfSQLQuery.SQL.Add('Delete from DisciplinaProfessor where disciplinaprofessorID=:PdisciplinaprofessorID');
    DiscProfSQLQuery.ParamByName('PdisciplinaprofessorID').AsInteger := DataModuleBanco.DiscProfClientDataSetDISCIPLINAPROFESSORID.AsInteger;
    DiscProfSQLQuery.ExecSQL;
    DataModuleBanco.DiscProfClientDataSet.Refresh;
  end;
end;

procedure TAtribuicaoDisciplinasForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

end.
