object AtribuicaoDisciplinaIncAltForm: TAtribuicaoDisciplinaIncAltForm
  Left = 208
  Top = 282
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'AtribuicaoDisciplinaIncAltForm'
  ClientHeight = 230
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
    Height = 189
    Align = alClient
    TabOrder = 0
    object ProfessorLabel: TLabel
      Left = 10
      Top = 10
      Width = 58
      Height = 13
      Caption = 'Professor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DisciplinaLabel: TLabel
      Left = 10
      Top = 49
      Width = 60
      Height = 13
      Caption = 'Disciplina:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ProfessorEdit: TEdit
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
      OnChange = ProfessorEditChange
      OnEnter = ProfessorEditEnter
      OnExit = ProfessorEditExit
      OnKeyPress = ProfessorEditKeyPress
    end
    object DisciplinaEdit: TEdit
      Left = 10
      Top = 62
      Width = 500
      Height = 21
      Hint = 'Nome da Disciplina. Campo Obrigat'#243'rio.'
      CharCase = ecUpperCase
      MaxLength = 50
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnChange = DisciplinaEditChange
      OnEnter = DisciplinaEditEnter
      OnExit = DisciplinaEditExit
      OnKeyPress = DisciplinaEditKeyPress
    end
    object DisciplinaDBGrid: TDBGrid
      Left = 10
      Top = 83
      Width = 500
      Height = 100
      DataSource = DisciplinaDataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DisciplinaDBGridDblClick
      OnExit = DisciplinaDBGridExit
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMEDISCIPLINA'
          Title.Caption = 'Disciplina'
          Width = 465
          Visible = True
        end>
    end
    object ProfessorDBGrid: TDBGrid
      Left = 10
      Top = 44
      Width = 500
      Height = 100
      DataSource = ProfessorDataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = ProfessorDBGridDblClick
      OnExit = ProfessorDBGridExit
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMEPROFESSOR'
          Title.Caption = 'Professor'
          Width = 345
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFPROFESSOR'
          Title.Caption = 'CPF'
          Width = 120
          Visible = True
        end>
    end
  end
  object BotaoPanel: TPanel
    Left = 0
    Top = 189
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
      Hint = 
        'Grava os dados digitados da tela de Atribui'#231#227'o de Disciplinas co' +
        'm Professores.'
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
      Hint = 
        'Limpa os dados digitados da tela de Atribui'#231#227'o de Disciplinas co' +
        'm Professores.'
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
      Hint = 'Fecha a tela de Atribui'#231#227'o de Disciplinas com Professores.'
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
  object ProfessorDataSource: TDataSource
    DataSet = DataModuleBanco.ProfessorClientDataSet
    Left = 8
    Top = 195
  end
  object DisciplinaDataSource: TDataSource
    DataSet = DataModuleBanco.DisciplinaClientDataSet
    Left = 41
    Top = 195
  end
end
