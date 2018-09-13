unit RelProfessorUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, ExtCtrls;

type
  TRelProfessorForm = class(TForm)
    MenuPanel: TPanel;
    FecharButton: TButton;
    RelatorioButton: TButton;
    DadosPanel: TPanel;
    procedure RelatorioButtonClick(Sender: TObject);
    procedure FecharButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelProfessorForm: TRelProfessorForm;

implementation

{$R *.dfm}

uses DataModuleUnit, RelProfessorImpressaoUnit;

procedure TRelProfessorForm.RelatorioButtonClick(Sender: TObject);
begin
  Application.CreateForm(TRelProfessorImpressaoForm, RelProfessorImpressaoForm);
  RelProfessorImpressaoForm.RLReport1.Title := 'Relatório de Professores';
  RelProfessorImpressaoForm.RLReport1.Preview();
end;

procedure TRelProfessorForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

end.
