object DisciplinaIncAltForm: TDisciplinaIncAltForm
  Left = 347
  Top = 203
  Hint = 'Fecha a tela de Disciplinas.'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'DisciplinaIncAltForm'
  ClientHeight = 141
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DadosPanel: TPanel
    Left = 0
    Top = 0
    Width = 532
    Height = 100
    Align = alClient
    TabOrder = 0
    object NomeLabel: TLabel
      Left = 10
      Top = 10
      Width = 37
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NomeEdit: TEdit
      Left = 10
      Top = 23
      Width = 500
      Height = 21
      Hint = 'Nome da Disciplina. Campo Obrigat'#243'rio.'
      CharCase = ecUpperCase
      MaxLength = 50
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = NomeEditKeyPress
    end
  end
  object BotaoPanel: TPanel
    Left = 0
    Top = 100
    Width = 532
    Height = 41
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 1
    object OkButton: TButton
      Left = 150
      Top = 5
      Width = 75
      Height = 26
      Hint = 'Grava os dados digitados da tela de Disciplinas.'
      Caption = '&OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = OkButtonClick
    end
    object CancelarButton: TButton
      Left = 228
      Top = 5
      Width = 75
      Height = 26
      Hint = 'Limpa os dados digitados da tela de Disciplinas.'
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = CancelarButtonClick
    end
    object FecharButton: TButton
      Left = 306
      Top = 5
      Width = 75
      Height = 26
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = FecharButtonClick
    end
  end
  object PesquisaSQLQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataModuleBanco.ConexaoBanco
    Left = 472
    Top = 64
  end
end
