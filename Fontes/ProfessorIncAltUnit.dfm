object ProfessorIncAltForm: TProfessorIncAltForm
  Left = 347
  Top = 203
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'ProfessorIncAltForm'
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
    object CPFLabel: TLabel
      Left = 10
      Top = 49
      Width = 129
      Height = 13
      Caption = 'CPF: (Sem Pontua'#231#227'o)'
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
      Hint = 'Nome do Professor. Campo Obrigat'#243'rio.'
      CharCase = ecUpperCase
      MaxLength = 50
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = NomeEditKeyPress
    end
    object CPFEdit: TEdit
      Left = 10
      Top = 62
      Width = 200
      Height = 21
      Hint = 'CPF do Professor. Campo Obrigat'#243'rio'
      MaxLength = 11
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyPress = CPFEditKeyPress
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
      Hint = 'Grava os dados digitados da tela de Professores.'
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
      Hint = 'Limpa os dados digitados da tela de Professores.'
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
      Hint = 'Fecha a tela de Professores.'
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
