object AlunosForm: TAlunosForm
  Left = 365
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Alunos'
  ClientHeight = 396
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object MenuPanel: TPanel
    Left = 0
    Top = 0
    Width = 120
    Height = 396
    Align = alLeft
    TabOrder = 0
    object IncluirButton: TButton
      Left = 10
      Top = 20
      Width = 100
      Height = 30
      Hint = 'Abre a tela para Incluir um Aluno.'
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = IncluirButtonClick
    end
    object AlterarButton: TButton
      Left = 10
      Top = 55
      Width = 100
      Height = 30
      Hint = 'Abre a tela para Alterar o Aluno Selecionado.'
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = AlterarButtonClick
    end
    object ExcluirButton: TButton
      Left = 10
      Top = 90
      Width = 100
      Height = 30
      Hint = 'Exclui o Aluno selecionado.'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = ExcluirButtonClick
    end
    object FecharButton: TButton
      Left = 10
      Top = 125
      Width = 100
      Height = 30
      Hint = 'Fecha a tela de Alunos.'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = FecharButtonClick
    end
  end
  object DadosPanel: TPanel
    Left = 120
    Top = 0
    Width = 520
    Height = 396
    Align = alClient
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 1
    object PesquisarGroupBox: TGroupBox
      Left = 10
      Top = 10
      Width = 490
      Height = 90
      Caption = ' Pesquisar por '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object NomeRadioButton: TRadioButton
        Left = 10
        Top = 20
        Width = 70
        Height = 17
        Hint = 'Filtrar por Nome.'
        Caption = 'Nome'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        OnClick = NomeRadioButtonClick
      end
      object CPFRadioButton: TRadioButton
        Left = 90
        Top = 20
        Width = 70
        Height = 17
        Hint = 'Filtrar por CPF.'
        Caption = 'CPF'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = NomeRadioButtonClick
      end
      object PesquisarEdit: TEdit
        Left = 10
        Top = 50
        Width = 450
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnChange = PesquisarEditChange
      end
    end
    object AlunoDBGrid: TDBGrid
      Left = 10
      Top = 110
      Width = 490
      Height = 270
      DataSource = AlunoDataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = AlterarButtonClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMEALUNO'
          Title.Caption = 'Nome'
          Width = 359
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFALUNO'
          Title.Caption = 'CPF'
          Width = 94
          Visible = True
        end>
    end
  end
  object AlunoDataSource: TDataSource
    DataSet = DataModuleBanco.AlunoClientDataSet
    Left = 48
    Top = 176
  end
  object AlunoSQLQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataModuleBanco.ConexaoBanco
    Left = 48
    Top = 216
  end
end
