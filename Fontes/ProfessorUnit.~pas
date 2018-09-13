unit ProfessorUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, FMTBcd, SqlExpr;

type
  TProfessoresForm = class(TForm)
    MenuPanel: TPanel;
    IncluirButton: TButton;
    AlterarButton: TButton;
    ExcluirButton: TButton;
    FecharButton: TButton;
    DadosPanel: TPanel;
    PesquisarGroupBox: TGroupBox;
    NomeRadioButton: TRadioButton;
    CPFRadioButton: TRadioButton;
    PesquisarEdit: TEdit;
    ProfessorDBGrid: TDBGrid;
    ProfessorDataSource: TDataSource;
    ProfessorSQLQuery: TSQLQuery;
    procedure FormActivate(Sender: TObject);
    procedure NomeRadioButtonClick(Sender: TObject);
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
  ProfessoresForm: TProfessoresForm;

implementation

{$R *.dfm}

uses DataModuleunit, ProfessorIncAltUnit;

procedure TProfessoresForm.FormActivate(Sender: TObject);
begin
  DataModuleBanco.ProfessorClientDataSet.IndexFieldNames := 'NOMEPROFESSOR';
  NomeRadioButton.Checked := true;
  CPFRadioButton.Checked  := false;
  PesquisarEdit.SetFocus;
end;

procedure TProfessoresForm.NomeRadioButtonClick(Sender: TObject);
begin
  if NomeRadioButton.Checked then
  begin
    DataModuleBanco.ProfessorClientDataSet.IndexFieldNames := 'NOMEPROFESSOR';
    PesquisarEdit.Hint := 'Digite o Nome do Professor que deseja pesquisar.';
    PesquisarEdit.MaxLength := 50;
  end
  else
  begin
    DataModuleBanco.ProfessorClientDataSet.IndexFieldNames := 'CPFPROFESSOR';
    PesquisarEdit.Hint := 'Digite o CPF do Professor que deseja pesquisar.';
    PesquisarEdit.MaxLength := 11;
  end;
  PesquisarEdit.SetFocus;
end;

procedure TProfessoresForm.PesquisarEditChange(Sender: TObject);
begin
  if trim(PesquisarEdit.Text) <> '' then
  begin
    if NomeRadioButton.Checked then
       DataModuleBanco.ProfessorClientDataSet.Locate('NOMEPROFESSOR',trim(PesquisarEdit.Text),[loPartialKey])
    else
       DataModuleBanco.ProfessorClientDataSet.Locate('CPFPROFESSOR',trim(PesquisarEdit.Text),[loPartialKey])
  end;
end;

procedure TProfessoresForm.IncluirButtonClick(Sender: TObject);
begin
  Application.CreateForm(TProfessorIncAltForm, ProfessorIncAltForm);
  ProfessorIncAltForm.varAcao := 'Incluir';
  ProfessorIncAltForm.ShowModal;
  ProfessorIncAltForm.Release;
end;

procedure TProfessoresForm.AlterarButtonClick(Sender: TObject);
begin
  Application.CreateForm(TProfessorIncAltForm, ProfessorIncAltForm);
  ProfessorIncAltForm.varAcao := 'Alterar';
  ProfessorIncAltForm.ShowModal;
  ProfessorIncAltForm.Release;
end;

procedure TProfessoresForm.ExcluirButtonClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir esse Professor?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
  begin
    ProfessorSQLQuery.Close;
    ProfessorSQLQuery.SQL.Clear;
    ProfessorSQLQuery.SQL.Add('Delete from Professor where professorID=:PprofessorID');
    ProfessorSQLQuery.ParamByName('PprofessorID').AsInteger := DataModuleBanco.ProfessorClientDataSetPROFESSORID.AsInteger;
    ProfessorSQLQuery.ExecSQL;
    DataModuleBanco.ProfessorClientDataSet.Refresh;
  end;
end;

procedure TProfessoresForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

end.

