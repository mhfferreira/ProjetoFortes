object RelProfessorImpressaoForm: TRelProfessorImpressaoForm
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
    DataSource = PrincipalForm.RelProfessorDataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Notas'
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
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
        Left = 339
        Top = 12
        Width = 40
        Height = 16
        Align = faCenter
        Info = itTitle
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 586
        Top = 0
        Width = 132
        Height = 16
        Align = faRightTop
        Info = itPageNumber
        Text = 'P'#225'g.: '
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 78
      Width = 718
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
        Width = 63
        Height = 16
        Align = faTopOnly
        Caption = 'Professor'
      end
      object RLLabel3: TRLLabel
        Left = 225
        Top = 0
        Width = 66
        Height = 16
        Align = faTopOnly
        Caption = 'Disciplina'
      end
      object RLLabel4: TRLLabel
        Left = 450
        Top = 0
        Width = 41
        Height = 16
        Align = faTopOnly
        Caption = 'Aluno'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 108
      Width = 718
      Height = 30
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 220
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'NOMEPROFESSOR'
        DataSource = PrincipalForm.RelProfessorDataSource
      end
      object RLDBText2: TRLDBText
        Left = 225
        Top = 0
        Width = 220
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'NOMEDISCIPLINA'
        DataSource = PrincipalForm.RelProfessorDataSource
      end
      object RLDBText3: TRLDBText
        Left = 450
        Top = 0
        Width = 220
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'NOMEALUNO'
        DataSource = PrincipalForm.RelProfessorDataSource
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 138
      Width = 718
      Height = 25
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 679
        Top = 0
        Width = 39
        Height = 16
        Align = faRightTop
      end
    end
  end
end
