object MatriculaIncAltForm: TMatriculaIncAltForm
  Left = 355
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'MatriculaIncAltForm'
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
    object AlunoLabel: TLabel
      Left = 10
      Top = 10
      Width = 37
      Height = 13
      Caption = 'Aluno:'
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
    object AlunoEdit: TEdit
      Left = 10
      Top = 23
      Width = 500
      Height = 21
      Hint = 'Nome do Aluno. Campo Obrigat'#243'rio.'
      CharCase = ecUpperCase
      MaxLength = 50
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = AlunoEditChange
      OnEnter = AlunoEditEnter
      OnExit = AlunoEditExit
      OnKeyPress = AlunoEditKeyPress
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
    object AtribuicaoDBGrid: TDBGrid
      Left = 10
      Top = 83
      Width = 500
      Height = 100
      DataSource = AtribuicaoDataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = AtribuicaoDBGridDblClick
      OnExit = AtribuicaoDBGridExit
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMEDISCIPLINA'
          Title.Caption = 'Disciplina'
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPROFESSOR'
          Title.Caption = 'Professor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 233
          Visible = True
        end>
    end
    object AlunoDBGrid: TDBGrid
      Left = 10
      Top = 44
      Width = 500
      Height = 100
      DataSource = AlunoDataSource
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
      OnDblClick = AlunoDBGridDblClick
      OnExit = AlunoDBGridExit
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMEALUNO'
          Title.Caption = 'Aluno'
          Width = 345
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFALUNO'
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
      Hint = 'Grava os dados digitados da tela de Matriculas.'
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
      Hint = 'Limpa os dados digitados da tela de Matriculas.'
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
      Hint = 'Fecha a tela de Matriculas.'
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
  object AlunoDataSource: TDataSource
    DataSet = DataModuleBanco.AlunoClientDataSet
    Left = 8
    Top = 195
  end
  object AtribuicaoDataSource: TDataSource
    DataSet = DataModuleBanco.DiscProfClientDataSet
    Left = 41
    Top = 195
  end
end
