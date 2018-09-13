object RelProfessorForm: TRelProfessorForm
  Left = 358
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Professores'
  ClientHeight = 208
  ClientWidth = 319
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
  object MenuPanel: TPanel
    Left = 0
    Top = 0
    Width = 120
    Height = 208
    Align = alLeft
    TabOrder = 0
    object FecharButton: TButton
      Left = 10
      Top = 55
      Width = 100
      Height = 30
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = FecharButtonClick
    end
    object RelatorioButton: TButton
      Left = 10
      Top = 20
      Width = 100
      Height = 30
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RelatorioButtonClick
    end
  end
  object DadosPanel: TPanel
    Left = 120
    Top = 0
    Width = 199
    Height = 208
    Align = alClient
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 1
  end
end
