unit AtribuicaoDisciplinaIncAltUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FMTBcd, DB, SqlExpr, DBCtrls, Grids, DBGrids;

type
  TAtribuicaoDisciplinaIncAltForm = class(TForm)
    DadosPanel: TPanel;
    BotaoPanel: TPanel;
    ProfessorLabel: TLabel;
    ProfessorEdit: TEdit;
    OkButton: TButton;
    CancelarButton: TButton;
    FecharButton: TButton;
    PesquisaSQLQuery: TSQLQuery;
    ProfessorDBGrid: TDBGrid;
    DisciplinaLabel: TLabel;
    DisciplinaEdit: TEdit;
    DisciplinaDBGrid: TDBGrid;
    ProfessorDataSource: TDataSource;
    DisciplinaDataSource: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure ProfessorEditChange(Sender: TObject);
    procedure ProfessorEditEnter(Sender: TObject);
    procedure ProfessorEditKeyPress(Sender: TObject; var Key: Char);
    procedure ProfessorEditExit(Sender: TObject);
    procedure ProfessorDBGridDblClick(Sender: TObject);
    procedure ProfessorDBGridExit(Sender: TObject);
    procedure DisciplinaEditChange(Sender: TObject);
    procedure DisciplinaEditEnter(Sender: TObject);
    procedure DisciplinaEditKeyPress(Sender: TObject; var Key: Char);
    procedure DisciplinaEditExit(Sender: TObject);
    procedure DisciplinaDBGridDblClick(Sender: TObject);
    procedure DisciplinaDBGridExit(Sender: TObject);
    procedure OkButtonClick(Sender: TObject);
    procedure CancelarButtonClick(Sender: TObject);
    procedure FecharButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LimpaCampos;
    function TestaDadosAtribuicaoDisciplina(): boolean;
  public
    { Public declarations }
    varAcao: string;
  end;

var
  AtribuicaoDisciplinaIncAltForm: TAtribuicaoDisciplinaIncAltForm;

implementation

{$R *.dfm}

uses DataModuleUnit, LibUnit, AtribuicaoDisciplinaUnit;

procedure TAtribuicaoDisciplinaIncAltForm.FormActivate(Sender: TObject);
begin
  if varAcao = 'Incluir' then AtribuicaoDisciplinaIncAltForm.Caption := 'Incluir Atribuição de Disciplinas'
  else AtribuicaoDisciplinaIncAltForm.Caption := 'Alterar Atribuição de Disciplina';
  LimpaCampos;
  ProfessorEdit.SetFocus;
end;

procedure TAtribuicaoDisciplinaIncAltForm.LimpaCampos;
begin
  ProfessorLabel.Caption     := 'Professor:';
  ProfessorLabel.Font.Color  := clWindowText;
  DisciplinaLabel.Caption    := 'Disciplina:';
  DisciplinaLabel.Font.Color := clWindowText;
  if varAcao = 'Incluir' then
  begin
    ProfessorEdit.Text  := '';
    DisciplinaEdit.Text := '';
  end
  else
  begin
    ProfessorEdit.Text  := DataModuleBanco.DiscProfClientDataSetNOMEPROFESSOR.AsString;
    DataModuleBanco.ProfessorClientDataSet.Locate('PROFESSORID',DataModuleBanco.DiscProfClientDataSetPROFESSORID.AsString,[loCaseInsensitive]);
    DisciplinaEdit.Text := DataModuleBanco.DiscProfClientDataSetNOMEDISCIPLINA.AsString;
    DataModuleBanco.DisciplinaClientDataSet.Locate('DISCIPLINAID',DataModuleBanco.DiscProfClientDataSetDISCIPLINAID.AsString,[loCaseInsensitive]);
  end;
  ProfessorDBGrid.Visible    := false;
  DisciplinaDBGrid.Visible   := false;
end;

function TAtribuicaoDisciplinaIncAltForm.TestaDadosAtribuicaoDisciplina(): boolean;
var
  varResult:boolean;
begin
  varResult    := true;
  if trim(ProfessorEdit.Text) = '' then
  begin
    ProfessorLabel.Caption    := 'Professor:  (** CAMPO OBRIGATÓRIO **)';
    ProfessorLabel.Font.Color := clRed;
    varResult                 := false;
  end;
  if trim(ProfessorEdit.Text) = '' then
  begin
    DisciplinaLabel.Caption    := 'Disciplina:  (** CAMPO OBRIGATÓRIO **)';
    DisciplinaLabel.Font.Color := clRed;
    varResult                  := false;
  end;
  result := varResult;
end;

procedure TAtribuicaoDisciplinaIncAltForm.ProfessorEditChange(
  Sender: TObject);
begin
  ProfessorDBGrid.Visible := true;
  DataModuleBanco.ProfessorClientDataSet.Locate('NOMEPROFESSOR',trim(ProfessorEdit.Text),[loPartialKey])
end;

procedure TAtribuicaoDisciplinaIncAltForm.ProfessorEditEnter(
  Sender: TObject);
begin
  ProfessorDBGrid.Visible := true;
end;

procedure TAtribuicaoDisciplinaIncAltForm.ProfessorEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    ProfessorEditExit(Sender);
    DisciplinaEdit.SetFocus;
  end;
end;

procedure TAtribuicaoDisciplinaIncAltForm.ProfessorEditExit(
  Sender: TObject);
begin
  ProfessorEdit.Text      := DataModuleBanco.ProfessorClientDataSetNOMEPROFESSOR.AsString;
  ProfessorDBGrid.Visible := false;
end;

procedure TAtribuicaoDisciplinaIncAltForm.ProfessorDBGridDblClick(
  Sender: TObject);
begin
  ProfessorEdit.Text      := DataModuleBanco.ProfessorClientDataSetNOMEPROFESSOR.AsString;
  ProfessorDBGrid.Visible := false;
  DisciplinaEdit.SetFocus;
end;

procedure TAtribuicaoDisciplinaIncAltForm.ProfessorDBGridExit(
  Sender: TObject);
begin
  ProfessorDBGrid.Visible := false;
end;

procedure TAtribuicaoDisciplinaIncAltForm.DisciplinaEditChange(
  Sender: TObject);
begin
  DisciplinaDBGrid.Visible := true;
  DataModuleBanco.DisciplinaClientDataSet.Locate('NOMEDISCIPLINA',trim(DisciplinaEdit.Text),[loPartialKey])
end;

procedure TAtribuicaoDisciplinaIncAltForm.DisciplinaEditEnter(
  Sender: TObject);
begin
  DisciplinaDBGrid.Visible := true;
end;

procedure TAtribuicaoDisciplinaIncAltForm.DisciplinaEditKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    DisciplinaEditExit(Sender);
    OkButton.SetFocus;
  end;
end;

procedure TAtribuicaoDisciplinaIncAltForm.DisciplinaEditExit(
  Sender: TObject);
begin
  DisciplinaDBGrid.Visible := false;
  DisciplinaEdit.Text      := DataModuleBanco.DisciplinaClientDataSetNOMEDISCIPLINA.AsString;
end;

procedure TAtribuicaoDisciplinaIncAltForm.DisciplinaDBGridDblClick(
  Sender: TObject);
begin
  DisciplinaEdit.Text      := DataModuleBanco.DisciplinaClientDataSetNOMEDISCIPLINA.AsString;
  DisciplinaDBGrid.Visible := false;
  OkButton.SetFocus;
end;

procedure TAtribuicaoDisciplinaIncAltForm.DisciplinaDBGridExit(
  Sender: TObject);
begin
  DisciplinaDBGrid.Visible := false;
end;

procedure TAtribuicaoDisciplinaIncAltForm.OkButtonClick(Sender: TObject);
begin
  ProfessorDBGrid.Visible  := false;
  DisciplinaDBGrid.Visible := false;
  if TestaDadosAtribuicaoDisciplina() then
  begin
    if varAcao = 'Incluir' then
    begin
      if Application.MessageBox('Confirma a Inclusão desta Atribuição de Disciplina?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.Close;
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.SQL.Clear;
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.SQL.Add('Insert into DisciplinaProfessor (DISCIPLINAID,PROFESSORID) values (:Pdisciplinaid,:Pprofessorid)');
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.ParamByName('PdisciplinaID').AsInteger := DataModuleBanco.DisciplinaClientDataSetDISCIPLINAID.AsInteger;
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.ParamByName('PprofessorID').AsInteger  := DataModuleBanco.ProfessorClientDataSetPROFESSORID.AsInteger;
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.ExecSQL;
        LimpaCampos;
      end;
      ProfessorEdit.SetFocus;
    end
    else
    begin
      if Application.MessageBox('Confirma a Alteração desta Atribuição de Disciplina?','Confirmação',Mb_YesNo + Mb_IconInformation + Mb_DefButton2) = 6 then
      begin
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.Close;
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.SQL.Clear;
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.SQL.Add('Update DisciplinaProfessor set DISCIPLINAID=:PdisciplinaID, PROFESSORID=:PprofessorID where disciplinaprofessorID=:PdisciplinaprofessorID');
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.ParamByName('PdisciplinaProfessorID').AsInteger := DataModuleBanco.DiscProfClientDataSetDISCIPLINAPROFESSORID.AsInteger;
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.ParamByName('PdisciplinaID').AsInteger          := DataModuleBanco.DisciplinaClientDataSetDISCIPLINAID.AsInteger;
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.ParamByName('PprofessorID').AsInteger           := DataModuleBanco.ProfessorClientDataSetPROFESSORID.AsInteger;
        AtribuicaoDisciplinasForm.DiscProfSQLQuery.ExecSQL;
        Close;
      end
      else ProfessorEdit.SetFocus;
    end;
  end;
end;

procedure TAtribuicaoDisciplinaIncAltForm.CancelarButtonClick(Sender: TObject);
begin
  LimpaCampos;
end;

procedure TAtribuicaoDisciplinaIncAltForm.FecharButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TAtribuicaoDisciplinaIncAltForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModuleBanco.DiscProfClientDataSet.Refresh;
end;

end.
