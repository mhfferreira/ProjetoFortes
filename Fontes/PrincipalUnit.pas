unit PrincipalUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TPrincipalForm = class(TForm)
    PrincipalPanel: TPanel;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Alunos1: TMenuItem;
    Disciplinas1: TMenuItem;
    Professores1: TMenuItem;
    AtribuicaodeDisciplinas1: TMenuItem;
    Matriculas1: TMenuItem;
    Relatorios1: TMenuItem;
    Notas1: TMenuItem;
    Alunos2: TMenuItem;
    Professores2: TMenuItem;
    RelProfessorSQLDataSet: TSQLDataSet;
    RelProfessorSQLDataSetALUNODISCIPLINAPROFESSORID: TIntegerField;
    RelProfessorSQLDataSetALUNOID: TIntegerField;
    RelProfessorSQLDataSetDISCIPLINAPROFESSORID: TIntegerField;
    RelProfessorSQLDataSetNOTA1: TIntegerField;
    RelProfessorSQLDataSetNOTA2: TIntegerField;
    RelProfessorSQLDataSetNOTATRABALHO: TIntegerField;
    RelProfessorSQLDataSetALUNOID_1: TIntegerField;
    RelProfessorSQLDataSetNOMEALUNO: TStringField;
    RelProfessorSQLDataSetCPFALUNO: TStringField;
    RelProfessorSQLDataSetDISCIPLINAPROFESSORID_1: TIntegerField;
    RelProfessorSQLDataSetDISCIPLINAID: TIntegerField;
    RelProfessorSQLDataSetPROFESSORID: TIntegerField;
    RelProfessorSQLDataSetDISCIPLINAID_1: TIntegerField;
    RelProfessorSQLDataSetNOMEDISCIPLINA: TStringField;
    RelProfessorSQLDataSetPROFESSORID_1: TIntegerField;
    RelProfessorSQLDataSetNOMEPROFESSOR: TStringField;
    RelProfessorSQLDataSetCPFPROFESSOR: TStringField;
    RelProfessorDataSetProvider: TDataSetProvider;
    RelProfessorClientDataSet: TClientDataSet;
    RelProfessorClientDataSetALUNODISCIPLINAPROFESSORID: TIntegerField;
    RelProfessorClientDataSetALUNOID: TIntegerField;
    RelProfessorClientDataSetDISCIPLINAPROFESSORID: TIntegerField;
    RelProfessorClientDataSetNOTA1: TIntegerField;
    RelProfessorClientDataSetNOTA2: TIntegerField;
    RelProfessorClientDataSetNOTATRABALHO: TIntegerField;
    RelProfessorClientDataSetALUNOID_1: TIntegerField;
    RelProfessorClientDataSetNOMEALUNO: TStringField;
    RelProfessorClientDataSetCPFALUNO: TStringField;
    RelProfessorClientDataSetDISCIPLINAPROFESSORID_1: TIntegerField;
    RelProfessorClientDataSetDISCIPLINAID: TIntegerField;
    RelProfessorClientDataSetPROFESSORID: TIntegerField;
    RelProfessorClientDataSetDISCIPLINAID_1: TIntegerField;
    RelProfessorClientDataSetNOMEDISCIPLINA: TStringField;
    RelProfessorClientDataSetPROFESSORID_1: TIntegerField;
    RelProfessorClientDataSetNOMEPROFESSOR: TStringField;
    RelProfessorClientDataSetCPFPROFESSOR: TStringField;
    RelProfessorDataSource: TDataSource;
    procedure Alunos1Click(Sender: TObject);
    procedure Disciplinas1Click(Sender: TObject);
    procedure Professores1Click(Sender: TObject);
    procedure AtribuicaodeDisciplinas1Click(Sender: TObject);
    procedure Matriculas1Click(Sender: TObject);
    procedure Notas1Click(Sender: TObject);
    procedure Alunos2Click(Sender: TObject);
    procedure Professores2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalForm: TPrincipalForm;

implementation

uses DataModuleUnit, AlunoUnit, DisciplinaUnit, ProfessorUnit, AtribuicaoDisciplinaUnit,
     MatriculaUnit, NotasUnit, RelAlunoUnit, RelProfessorUnit, RelProfessorImpressaoUnit;

{$R *.dfm}

procedure TPrincipalForm.Alunos1Click(Sender: TObject);
begin
  Application.CreateForm(TAlunosForm, AlunosForm);
  AlunosForm.ShowModal;
  AlunosForm.Release;
end;

procedure TPrincipalForm.Disciplinas1Click(Sender: TObject);
begin
  Application.CreateForm(TDisciplinasForm, DisciplinasForm);
  DisciplinasForm.ShowModal;
  DisciplinasForm.Release;
end;

procedure TPrincipalForm.Professores1Click(Sender: TObject);
begin
  Application.CreateForm(TProfessoresForm, ProfessoresForm);
  ProfessoresForm.ShowModal;
  ProfessoresForm.Release;
end;

procedure TPrincipalForm.AtribuicaodeDisciplinas1Click(Sender: TObject);
begin
  Application.CreateForm(TAtribuicaoDisciplinasForm, AtribuicaoDisciplinasForm);
  AtribuicaoDisciplinasForm.ShowModal;
  AtribuicaoDisciplinasForm.Release;
end;

procedure TPrincipalForm.Matriculas1Click(Sender: TObject);
begin
  Application.CreateForm(TMatriculasForm, MatriculasForm);
  MatriculasForm.ShowModal;
  MatriculasForm.Release;
end;

procedure TPrincipalForm.Notas1Click(Sender: TObject);
begin
  Application.CreateForm(TNotasForm, NotasForm);
  NotasForm.ShowModal;
  NotasForm.Release;
end;

procedure TPrincipalForm.Alunos2Click(Sender: TObject);
begin
  Application.CreateForm(TRelAlunoForm, RelAlunoForm);
  RelAlunoForm.ShowModal;
  RelAlunoForm.Release;
end;

procedure TPrincipalForm.Professores2Click(Sender: TObject);
begin
  Application.CreateForm(TRelProfessorImpressaoForm, RelProfessorImpressaoForm);
  RelProfessorImpressaoForm.RLReport1.Title := 'Relatório de Professores';
  RelProfessorImpressaoForm.RLReport1.Preview();
end;

end.
