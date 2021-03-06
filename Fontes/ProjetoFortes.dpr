program ProjetoFortes;

uses
  Forms,
  PrincipalUnit in 'PrincipalUnit.pas' {PrincipalForm},
  DataModuleUnit in 'DataModuleUnit.pas' {DataModuleBanco: TDataModule},
  LibUnit in 'LibUnit.pas',
  AlunoUnit in 'AlunoUnit.pas' {AlunosForm},
  AlunoIncAltUnit in 'AlunoIncAltUnit.pas' {AlunoIncAltForm},
  DisciplinaUnit in 'DisciplinaUnit.pas' {DisciplinasForm},
  DisciplinaIncAltUnit in 'DisciplinaIncAltUnit.pas' {DisciplinaIncAltForm},
  ProfessorUnit in 'ProfessorUnit.pas' {ProfessoresForm},
  ProfessorIncAltUnit in 'ProfessorIncAltUnit.pas' {ProfessorIncAltForm},
  AtribuicaoDisciplinaUnit in 'AtribuicaoDisciplinaUnit.pas' {AtribuicaoDisciplinasForm},
  AtribuicaoDisciplinaIncAltUnit in 'AtribuicaoDisciplinaIncAltUnit.pas' {AtribuicaoDisciplinasIncAltForm},
  NotasUnit in 'NotasUnit.pas' {NotasForm},
  MatriculaIncAltUnit in 'MatriculaIncAltUnit.pas' {MatriculaIncAltForm},
  RelAlunoUnit in 'RelAlunoUnit.pas' {RelAlunoForm},
  RelAlunoImpressaoUnit in 'RelAlunoImpressaoUnit.pas' {RelAlunoImpressaoForm},
  RelProfessorImpressaoUnit in 'RelProfessorImpressaoUnit.pas' {RelProfessorImpressaoForm},
  MatriculaUnit in 'MatriculaUnit.pas' {MatriculasForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModuleBanco, DataModuleBanco);
  Application.CreateForm(TPrincipalForm, PrincipalForm);
  Application.CreateForm(TRelProfessorImpressaoForm, RelProfessorImpressaoForm);
  Application.CreateForm(TMatriculasForm, MatriculasForm);
  Application.Run;
end.
