object AtribuicaoDisciplinasForm: TAtribuicaoDisciplinasForm
  Left = 365
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Atribui'#231#227'o de Disciplinas'
  ClientHeight = 396
  ClientWidth = 787
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
      Hint = 
        'Abre a tela para Incluir uma Atribui'#231#227'o de Disciplina com o Prof' +
        'essor.'
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
      Hint = 
        'Abre a tela para Alterar a Atribui'#231#227'o de Disciplina com o Profes' +
        'sor Selecionada.'
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
      Hint = 'Exclui a Atribui'#231#227'o de Disciplina com Professor selecionada.'
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
      Hint = 'Fecha a tela de Atribui'#231#227'o de Aulas.'
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
    Width = 667
    Height = 396
    Align = alClient
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 1
    object PesquisarGroupBox: TGroupBox
      Left = 10
      Top = 10
      Width = 640
      Height = 90
      Caption = ' Pesquisar por '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DisciplinaRadioButton: TRadioButton
        Left = 10
        Top = 20
        Width = 80
        Height = 17
        Hint = 'Filtrar por Nome de Disciplina.'
        Caption = 'Disciplina'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        OnClick = DisciplinaRadioButtonClick
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
      object ProfessorRadioButton: TRadioButton
        Left = 115
        Top = 20
        Width = 80
        Height = 17
        Hint = 'Filtrar por Nome de Professor.'
        Caption = 'Professor'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = DisciplinaRadioButtonClick
      end
    end
    object AtribuicaoDisciplinaDBGrid: TDBGrid
      Left = 10
      Top = 110
      Width = 640
      Height = 270
      DataSource = DiscProfDataSource
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
          FieldName = 'NOMEDISCIPLINA'
          Title.Caption = 'Disciplina'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPROFESSOR'
          Title.Caption = 'Professor'
          Width = 300
          Visible = True
        end>
    end
  end
  object DiscProfDataSource: TDataSource
    DataSet = DataModuleBanco.DiscProfClientDataSet
    Left = 48
    Top = 176
  end
  object DiscProfSQLQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataModuleBanco.ConexaoBanco
    Left = 48
    Top = 216
  end
end
