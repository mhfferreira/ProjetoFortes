unit RelAlunoImpressaoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TRelAlunoImpressaoForm = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelAlunoImpressaoForm: TRelAlunoImpressaoForm;

implementation

{$R *.dfm}

uses RelAlunoUnit, DB;

procedure TRelAlunoImpressaoForm.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if RelAlunoForm.ReprovadosRadioButton.Checked then
  begin
    RelAlunoForm.RelAlunoClientDataSet.Filtered := true;
    RelAlunoForm.RelAlunoClientDataSet.Filter   := 'MEDIA<7';
  end
  else if RelAlunoForm.AprovadosRadioButton.Checked then
  begin
    RelAlunoForm.RelAlunoClientDataSet.Filtered := true;
    RelAlunoForm.RelAlunoClientDataSet.Filter   := 'MEDIA>=7';
  end
  else
  begin
    RelAlunoForm.RelAlunoClientDataSet.Filter   :='';
    RelAlunoForm.RelAlunoClientDataSet.Filtered := false;
  end;
  RelAlunoForm.RelAlunoSQLDataSet.Active    := true;
  RelAlunoForm.RelAlunoClientDataSet.Active := true;
end;

end.
