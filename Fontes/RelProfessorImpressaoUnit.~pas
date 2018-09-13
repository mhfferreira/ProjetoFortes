unit RelProfessorImpressaoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TRelProfessorImpressaoForm = class(TForm)
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
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelProfessorImpressaoForm: TRelProfessorImpressaoForm;

implementation

{$R *.dfm}

uses PrincipalUnit;

procedure TRelProfessorImpressaoForm.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrincipalForm.RelProfessorClientDataSet.Open;
end;

end.
