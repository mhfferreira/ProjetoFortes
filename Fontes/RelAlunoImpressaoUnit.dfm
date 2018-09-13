object RelAlunoImpressaoForm: TRelAlunoImpressaoForm
  Left = 296
  Top = 194
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 442
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    AdjustableMargins = True
    DataSource = RelAlunoForm.RelAlunoDataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Title = 'Relat'#243'rio de Notas'
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 38
      Width = 734
      Height = 40
      BandType = btHeader
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 137
        Height = 22
        Align = faLeftTop
        Caption = 'Projeto Fortes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 347
        Top = 12
        Width = 40
        Height = 16
        Align = faCenter
        Info = itTitle
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 602
        Top = 0
        Width = 132
        Height = 16
        Align = faRightTop
        Info = itPageNumber
        Text = 'P'#225'g.: '
      end
    end
    object RLBand2: TRLBand
      Left = 30
      Top = 78
      Width = 734
      Height = 30
      BandType = btHeader
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 41
        Height = 16
        Align = faTopOnly
        Caption = 'Aluno'
      end
      object RLLabel3: TRLLabel
        Left = 200
        Top = 0
        Width = 66
        Height = 16
        Align = faTopOnly
        Caption = 'Disciplina'
      end
      object RLLabel4: TRLLabel
        Left = 390
        Top = 0
        Width = 50
        Height = 16
        Align = faTopOnly
        Alignment = taCenter
        Caption = 'Nota 1'
      end
      object RLLabel5: TRLLabel
        Left = 450
        Top = 0
        Width = 50
        Height = 16
        Align = faTopOnly
        Alignment = taCenter
        Caption = 'Nota 2'
      end
      object RLLabel6: TRLLabel
        Left = 510
        Top = 0
        Width = 60
        Height = 16
        Align = faTopOnly
        Alignment = taCenter
        Caption = 'Trabalho'
      end
      object RLLabel7: TRLLabel
        Left = 577
        Top = 0
        Width = 50
        Height = 16
        Align = faTopOnly
        Alignment = taCenter
        Caption = 'M'#233'dia'
      end
      object RLLabel8: TRLLabel
        Left = 635
        Top = 0
        Width = 70
        Height = 16
        Align = faTopOnly
        Caption = 'Situa'#231#227'o'
      end
    end
    object RLBand3: TRLBand
      Left = 30
      Top = 108
      Width = 734
      Height = 30
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 190
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'NOMEALUNO'
        DataSource = RelAlunoForm.RelAlunoDataSource
      end
      object RLDBText2: TRLDBText
        Left = 200
        Top = 0
        Width = 180
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'NOMEDISCIPLINA'
        DataSource = RelAlunoForm.RelAlunoDataSource
      end
      object RLDBText3: TRLDBText
        Left = 390
        Top = 0
        Width = 50
        Height = 16
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'NOTA1'
        DataSource = RelAlunoForm.RelAlunoDataSource
      end
      object RLDBText4: TRLDBText
        Left = 450
        Top = 0
        Width = 50
        Height = 16
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'NOTA2'
        DataSource = RelAlunoForm.RelAlunoDataSource
      end
      object RLDBText5: TRLDBText
        Left = 510
        Top = 0
        Width = 60
        Height = 16
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'NOTATRABALHO'
        DataSource = RelAlunoForm.RelAlunoDataSource
      end
      object RLDBText6: TRLDBText
        Left = 577
        Top = 0
        Width = 50
        Height = 16
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'MEDIA'
        DataSource = RelAlunoForm.RelAlunoDataSource
      end
      object RLDBText7: TRLDBText
        Left = 635
        Top = 0
        Width = 92
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'SITUACAO'
        DataSource = RelAlunoForm.RelAlunoDataSource
      end
    end
    object RLBand4: TRLBand
      Left = 30
      Top = 138
      Width = 734
      Height = 25
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 695
        Top = 0
        Width = 39
        Height = 16
        Align = faRightTop
      end
    end
  end
end
