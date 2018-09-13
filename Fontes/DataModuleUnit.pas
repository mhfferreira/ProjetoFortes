unit DataModuleUnit;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider;

type
  TDataModuleBanco = class(TDataModule)
    ConexaoBanco: TSQLConnection;
    AlunoSQLDataSet: TSQLDataSet;
    AlunoSQLDataSetALUNOID: TIntegerField;
    AlunoSQLDataSetNOMEALUNO: TStringField;
    AlunoSQLDataSetCPFALUNO: TStringField;
    AlunoDataSetProvider: TDataSetProvider;
    AlunoClientDataSet: TClientDataSet;
    AlunoClientDataSetALUNOID: TIntegerField;
    AlunoClientDataSetNOMEALUNO: TStringField;
    AlunoClientDataSetCPFALUNO: TStringField;
    ProfessorSQLDataSet: TSQLDataSet;
    ProfessorSQLDataSetPROFESSORID: TIntegerField;
    ProfessorSQLDataSetNOMEPROFESSOR: TStringField;
    ProfessorSQLDataSetCPFPROFESSOR: TStringField;
    ProfessorDataSetProvider: TDataSetProvider;
    ProfessorClientDataSet: TClientDataSet;
    ProfessorClientDataSetPROFESSORID: TIntegerField;
    ProfessorClientDataSetNOMEPROFESSOR: TStringField;
    ProfessorClientDataSetCPFPROFESSOR: TStringField;
    DisciplinaSQLDataSet: TSQLDataSet;
    DisciplinaSQLDataSetDISCIPLINAID: TIntegerField;
    DisciplinaSQLDataSetNOMEDISCIPLINA: TStringField;
    DisciplinaDataSetProvider: TDataSetProvider;
    DisciplinaClientDataSet: TClientDataSet;
    DisciplinaClientDataSetDISCIPLINAID: TIntegerField;
    DisciplinaClientDataSetNOMEDISCIPLINA: TStringField;
    DiscProfSQLDataSet: TSQLDataSet;
    DiscProfSQLDataSetDISCIPLINAPROFESSORID: TIntegerField;
    DiscProfSQLDataSetDISCIPLINAID: TIntegerField;
    DiscProfSQLDataSetPROFESSORID: TIntegerField;
    DiscProfSQLDataSetNOMEDISCIPLINA: TStringField;
    DiscProfSQLDataSetNOMEPROFESSOR: TStringField;
    DiscProfDataSetProvider4: TDataSetProvider;
    DiscProfClientDataSet: TClientDataSet;
    DiscProfClientDataSetDISCIPLINAPROFESSORID: TIntegerField;
    DiscProfClientDataSetDISCIPLINAID: TIntegerField;
    DiscProfClientDataSetPROFESSORID: TIntegerField;
    DiscProfClientDataSetNOMEDISCIPLINA: TStringField;
    DiscProfClientDataSetNOMEPROFESSOR: TStringField;
    AlunoDiscProfSQLDataSet: TSQLDataSet;
    AlunoDiscProfSQLDataSetALUNOID: TIntegerField;
    AlunoDiscProfSQLDataSetDISCIPLINAPROFESSORID: TIntegerField;
    AlunoDiscProfSQLDataSetNOTA1: TIntegerField;
    AlunoDiscProfSQLDataSetNOTA2: TIntegerField;
    AlunoDiscProfSQLDataSetNOTATRABALHO: TIntegerField;
    AlunoDiscProfSQLDataSetNOMEALUNO: TStringField;
    AlunoDiscProfSQLDataSetDISCIPLINAID: TIntegerField;
    AlunoDiscProfSQLDataSetPROFESSORID: TIntegerField;
    AlunoDiscProfSQLDataSetNOMEDISCIPLINA: TStringField;
    AlunoDiscProfSQLDataSetNOMEPROFESSOR: TStringField;
    AlunoDiscProfDataSetProvider: TDataSetProvider;
    AlunoDiscProfClientDataSet: TClientDataSet;
    AlunoDiscProfSQLDataSetALUNODISCIPLINAPROFESSORID: TIntegerField;
    AlunoDiscProfClientDataSetALUNODISCIPLINAPROFESSORID: TIntegerField;
    AlunoDiscProfClientDataSetALUNOID: TIntegerField;
    AlunoDiscProfClientDataSetDISCIPLINAPROFESSORID: TIntegerField;
    AlunoDiscProfClientDataSetNOTA1: TIntegerField;
    AlunoDiscProfClientDataSetNOTA2: TIntegerField;
    AlunoDiscProfClientDataSetNOTATRABALHO: TIntegerField;
    AlunoDiscProfClientDataSetNOMEALUNO: TStringField;
    AlunoDiscProfClientDataSetDISCIPLINAID: TIntegerField;
    AlunoDiscProfClientDataSetPROFESSORID: TIntegerField;
    AlunoDiscProfClientDataSetNOMEDISCIPLINA: TStringField;
    AlunoDiscProfClientDataSetNOMEPROFESSOR: TStringField;
    AlunoDiscProfClientDataSetMEDIA: TIntegerField;
    procedure AlunoDiscProfClientDataSetCalcFields(DataSet: TDataSet);
    procedure AlunoDiscProfClientDataSetAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleBanco: TDataModuleBanco;

implementation

{$R *.dfm}

procedure TDataModuleBanco.AlunoDiscProfClientDataSetCalcFields(
  DataSet: TDataSet);
begin
  AlunoDiscProfClientDataSetMEDIA.AsInteger := trunc((AlunoDiscProfClientDataSetNOTA1.AsInteger +
                                                    AlunoDiscProfClientDataSetNOTA2.AsInteger +
                                                    AlunoDiscProfClientDataSetNOTATRABALHO.Value) / 3);
end;

procedure TDataModuleBanco.AlunoDiscProfClientDataSetAfterPost(
  DataSet: TDataSet);
begin
  AlunoDiscProfClientDataSet.ApplyUpdates(0);
end;

end.
