object NotasForm: TNotasForm
  Left = 259
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Matriculas'
  ClientHeight = 464
  ClientWidth = 1032
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
    Height = 464
    Align = alLeft
    TabOrder = 0
    object FecharButton: TButton
      Left = 10
      Top = 20
      Width = 100
      Height = 30
      Hint = 'Fecha a tela de  Notas.'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = FecharButtonClick
    end
  end
  object DadosPanel: TPanel
    Left = 120
    Top = 0
    Width = 912
    Height = 464
    Align = alClient
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 1
    object Label1: TLabel
      Left = 590
      Top = 25
      Width = 289
      Height = 13
      Caption = 'Para incluir ou alterar a nota do aluno, basta clicar no campo '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 590
      Top = 43
      Width = 232
      Height = 13
      Caption = 'da Tabela abaixo e confirmar com a tecla "enter"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PesquisarGroupBox: TGroupBox
      Left = 10
      Top = 10
      Width = 550
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
        Left = 100
        Top = 20
        Width = 80
        Height = 17
        Hint = 'Filtrar por Nome de Disciplina.'
        Caption = 'Disciplina'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = AlunoRadioButtonClick
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
        TabOrder = 3
        OnChange = PesquisarEditChange
      end
      object ProfessorRadioButton: TRadioButton
        Left = 210
        Top = 20
        Width = 80
        Height = 17
        Hint = 'Filtrar por Nome de Professor.'
        Caption = 'Professor'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = AlunoRadioButtonClick
      end
      object AlunoRadioButton: TRadioButton
        Left = 10
        Top = 20
        Width = 80
        Height = 17
        Hint = 'Filtrar por Nome de Aluno.'
        Caption = 'Aluno'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        OnClick = AlunoRadioButtonClick
      end
    end
    object MatriculaDBGrid: TDBGrid
      Left = 10
      Top = 110
      Width = 887
      Height = 270
      DataSource = AlunoDiscProfDataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMEALUNO'
          ReadOnly = True
          Title.Caption = 'Aluno'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEDISCIPLINA'
          ReadOnly = True
          Title.Caption = 'Disciplina'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPROFESSOR'
          ReadOnly = True
          Title.Caption = 'Professor'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOTA1'
          Title.Alignment = taCenter
          Title.Caption = 'Nota 1'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOTA2'
          Title.Alignment = taCenter
          Title.Caption = 'Nota 2'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOTATRABALHO'
          Title.Alignment = taCenter
          Title.Caption = 'Trabalho'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MEDIA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'M'#233'dia'
          Visible = True
        end>
    end
  end
  object AlunoDiscProfDataSource: TDataSource
    DataSet = DataModuleBanco.AlunoDiscProfClientDataSet
    Left = 24
    Top = 88
  end
end
