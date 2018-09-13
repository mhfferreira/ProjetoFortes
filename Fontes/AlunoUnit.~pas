unit AlunoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, FMTBcd, SqlExpr;

type
  TAlunosForm = class(TForm)
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
    AlunoDBGrid: TDBGrid;
    AlunoDataSource: TDataSource;
    AlunoSQLQuery: TSQLQuery;
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
  AlunosForm: TAlunosForm;

implementation

{$R *.dfm}

uses DataModuleunit, AlunoIncAltUnit;

procedure TAlunosForm.FormActivate(Sender: TObject);
begin
  DataModuleBanco.AlunoClientDataSet.IndexFieldNames := 'NOMEALUNO';
  NomeRadioButton.Checked := true;
  CPFRadioButton.Checked  := false;
  PesquisarEdit.SetFocus;
end;

procedure TAlunosForm.NomeRadioButtonClick(Sender: TObject);
begin
  if NomeRadioButton.Checked then
  begin
    DataModuleBanco.AlunoClientDataSet.IndexFieldNames := 'NOMEALUNO';
    PesquisarEdit.Hint := 'Digite o Nome do Aluno que deseja pesquisar.';
    PesquisarEdit.MaxLength := 50;
  end
  else
  begin
    DataModuleBanco.AlunoClientDataSet.IndexFieldNames := 'CPFALUNO';
    PesquisarEdit.Hint := 'Digite o CPF do Aluno que deseja pesquisar.';
    PesquisarEdit.MaxLength := 11;
  end;
  PesquisarEdit.SetFocus;
end;

procedure TAlunosForm.PesquisarEditChange(Sender: TObject);
begin
  if trim(PesquisarEdit.Text) <> '' then
  begin
    if NomeRadioButton.Checked then
       DataModuleBanco.AlunoClientDataSet.Locate('NOMEALUNO',trim(PesquisarEdit.Text),[loPartialKey])
    else
       DataModuleBanco.AlunoClientDataSet.Locate('CPFALUNO',trim(PesquisarEdit.Text),[loPartialKey])
  end;
end;

procedure TAlunosForm.IncluirButtonClick(Sender: TObject);
begin
  Application.CreateForm(TAlunoIncAltForm, AlunoIncAltForm);
  AlunoIncAltForm.varAcao := 'Incluir';
  AlunoIncAltForm.ShowModal;
  AlunoIncAltForm.Release;
end;

procedure TAlunosForm.AlterarButtonClick(Sender: TObject);
begin
  Application.CreateForm(TAlunoIncAltForm, AlunoIncAltForm);
  AlunoIncAltForm.varAcao := 'Alterar';
  AlunoIncAltForm.ShowModal;
  AlunoIncAltForm.Release;
end;

procedure TAlunosForm.ExcluirButtonClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir esse Aluno?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
  begin
    AlunoSQLQuery.Close;
    AlunoSQLQuery.SQL.Clear;
    AlunoSQLQuery.SQL.Add('Delete from Aluno where alunoID=:PalunoID');
    AlunoSQLQuery.ParamByName('PalunoID').AsInteger := DataModuleBanco.AlunoClientDataSetALUNOID.AsInteger;
    AlunoSQLQuery.ExecSQL;
    DataModuleBanco.AlunoClientDataSet.Refresh;
  end;
end;

procedure TAlunosForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

end.
