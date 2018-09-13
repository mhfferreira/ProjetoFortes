unit DisciplinaUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, FMTBcd, SqlExpr;

type
  TDisciplinasForm = class(TForm)
    MenuPanel: TPanel;
    IncluirButton: TButton;
    AlterarButton: TButton;
    ExcluirButton: TButton;
    FecharButton: TButton;
    DadosPanel: TPanel;
    PesquisarGroupBox: TGroupBox;
    NomeRadioButton: TRadioButton;
    PesquisarEdit: TEdit;
    DisciplinaDBGrid: TDBGrid;
    DisciplinaDataSource: TDataSource;
    DisciplinaSQLQuery: TSQLQuery;
    procedure FormActivate(Sender: TObject);
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
  DisciplinasForm: TDisciplinasForm;

implementation

{$R *.dfm}

uses DataModuleunit, DisciplinaIncAltUnit;

procedure TDisciplinasForm.FormActivate(Sender: TObject);
begin
  DataModuleBanco.DisciplinaClientDataSet.IndexFieldNames := 'NOMEDISCIPLINA';
  NomeRadioButton.Checked := true;
  PesquisarEdit.SetFocus;
end;

procedure TDisciplinasForm.PesquisarEditChange(Sender: TObject);
begin
  if trim(PesquisarEdit.Text) <> '' then
  begin
    DataModuleBanco.DisciplinaClientDataSet.Locate('NOMEDISCIPLINA',trim(PesquisarEdit.Text),[loPartialKey])
  end;
end;

procedure TDisciplinasForm.IncluirButtonClick(Sender: TObject);
begin
  Application.CreateForm(TDisciplinaIncAltForm, DisciplinaIncAltForm);
  DisciplinaIncAltForm.varAcao := 'Incluir';
  DisciplinaIncAltForm.ShowModal;
  DisciplinaIncAltForm.Release;
end;

procedure TDisciplinasForm.AlterarButtonClick(Sender: TObject);
begin
  Application.CreateForm(TDisciplinaIncAltForm, DisciplinaIncAltForm);
  DisciplinaIncAltForm.varAcao := 'Alterar';
  DisciplinaIncAltForm.ShowModal;
  DisciplinaIncAltForm.Release;
end;

procedure TDisciplinasForm.ExcluirButtonClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir esse Disciplina?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
  begin
    DisciplinaSQLQuery.Close;
    DisciplinaSQLQuery.SQL.Clear;
    DisciplinaSQLQuery.SQL.Add('Delete from Disciplina where disciplinaID=:PdisciplinaID');
    DisciplinaSQLQuery.ParamByName('PdisciplinaID').AsInteger := DataModuleBanco.DisciplinaClientDataSetDISCIPLINAID.AsInteger;
    DisciplinaSQLQuery.ExecSQL;
    DataModuleBanco.DisciplinaClientDataSet.Refresh;
  end;
end;

procedure TDisciplinasForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

end.
