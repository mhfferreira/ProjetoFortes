unit RelAlunoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, ExtCtrls;

type
  TRelAlunoForm = class(TForm)
    MenuPanel: TPanel;
    FecharButton: TButton;
    RelatorioButton: TButton;
    DadosPanel: TPanel;
    GroupBox1: TGroupBox;
    ReprovadosRadioButton: TRadioButton;
    AprovadosRadioButton: TRadioButton;
    TodosRadioButton: TRadioButton;
    RelAlunoSQLDataSet: TSQLDataSet;
    RelAlunoSQLDataSetMEDIA: TFMTBCDField;
    RelAlunoSQLDataSetALUNODISCIPLINAPROFESSORID: TIntegerField;
    RelAlunoSQLDataSetALUNOID: TIntegerField;
    RelAlunoSQLDataSetDISCIPLINAPROFESSORID: TIntegerField;
    RelAlunoSQLDataSetNOTA1: TIntegerField;
    RelAlunoSQLDataSetNOTA2: TIntegerField;
    RelAlunoSQLDataSetNOTATRABALHO: TIntegerField;
    RelAlunoSQLDataSetALUNOID_1: TIntegerField;
    RelAlunoSQLDataSetNOMEALUNO: TStringField;
    RelAlunoSQLDataSetCPFALUNO: TStringField;
    RelAlunoSQLDataSetDISCIPLINAPROFESSORID_1: TIntegerField;
    RelAlunoSQLDataSetDISCIPLINAID: TIntegerField;
    RelAlunoSQLDataSetPROFESSORID: TIntegerField;
    RelAlunoSQLDataSetDISCIPLINAID_1: TIntegerField;
    RelAlunoSQLDataSetNOMEDISCIPLINA: TStringField;
    RelAlunoSQLDataSetPROFESSORID_1: TIntegerField;
    RelAlunoSQLDataSetNOMEPROFESSOR: TStringField;
    RelAlunoSQLDataSetCPFPROFESSOR: TStringField;
    RelAlunoDataSetProvider: TDataSetProvider;
    RelAlunoClientDataSet: TClientDataSet;
    RelAlunoClientDataSetSITUACAO: TStringField;
    RelAlunoClientDataSetMEDIA: TFMTBCDField;
    RelAlunoClientDataSetALUNODISCIPLINAPROFESSORID: TIntegerField;
    RelAlunoClientDataSetALUNOID: TIntegerField;
    RelAlunoClientDataSetDISCIPLINAPROFESSORID: TIntegerField;
    RelAlunoClientDataSetNOTA1: TIntegerField;
    RelAlunoClientDataSetNOTA2: TIntegerField;
    RelAlunoClientDataSetNOTATRABALHO: TIntegerField;
    RelAlunoClientDataSetALUNOID_1: TIntegerField;
    RelAlunoClientDataSetNOMEALUNO: TStringField;
    RelAlunoClientDataSetCPFALUNO: TStringField;
    RelAlunoClientDataSetDISCIPLINAPROFESSORID_1: TIntegerField;
    RelAlunoClientDataSetDISCIPLINAID: TIntegerField;
    RelAlunoClientDataSetPROFESSORID: TIntegerField;
    RelAlunoClientDataSetDISCIPLINAID_1: TIntegerField;
    RelAlunoClientDataSetNOMEDISCIPLINA: TStringField;
    RelAlunoClientDataSetPROFESSORID_1: TIntegerField;
    RelAlunoClientDataSetNOMEPROFESSOR: TStringField;
    RelAlunoClientDataSetCPFPROFESSOR: TStringField;
    RelAlunoDataSource: TDataSource;
    procedure RelAlunoClientDataSetCalcFields(DataSet: TDataSet);
    procedure RelatorioButtonClick(Sender: TObject);
    procedure FecharButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelAlunoForm: TRelAlunoForm;

implementation

{$R *.dfm}

uses DataModuleUnit, RelAlunoImpressaoUnit;

procedure TRelAlunoForm.RelAlunoClientDataSetCalcFields(DataSet: TDataSet);
begin
  if RelAlunoClientDataSetMEDIA.AsInteger >= 7 then
     RelAlunoClientDataSetSITUACAO.AsString := 'APROVADO'
  else
     RelAlunoClientDataSetSITUACAO.AsString := 'REPROVADO';
end;

procedure TRelAlunoForm.RelatorioButtonClick(Sender: TObject);
begin
  Application.CreateForm(TRelAlunoImpressaoForm, RelAlunoImpressaoForm);
  RelAlunoImpressaoForm.RLReport1.Title := 'Relatório de Notas';
  RelAlunoImpressaoForm.RLReport1.Preview();
end;

procedure TRelAlunoForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

end.
