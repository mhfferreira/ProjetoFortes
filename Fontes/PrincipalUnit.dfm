object PrincipalForm: TPrincipalForm
  Left = 137
  Top = 57
  Width = 1189
  Height = 687
  BorderIcons = [biSystemMenu]
  Caption = 'Projeto Fortes - Avalia'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PrincipalPanel: TPanel
    Left = 0
    Top = 0
    Width = 1173
    Height = 629
    Align = alClient
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 336
    Top = 40
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object Alunos1: TMenuItem
        Caption = '&Alunos'
        OnClick = Alunos1Click
      end
      object Disciplinas1: TMenuItem
        Caption = '&Disciplinas'
        OnClick = Disciplinas1Click
      end
      object Professores1: TMenuItem
        Caption = '&Professores'
        OnClick = Professores1Click
      end
      object AtribuicaodeDisciplinas1: TMenuItem
        Caption = 'A&tribuicao de Disciplinas'
        OnClick = AtribuicaodeDisciplinas1Click
      end
      object Matriculas1: TMenuItem
        Caption = '&Matriculas'
        OnClick = Matriculas1Click
      end
    end
    object Notas1: TMenuItem
      Caption = '&Notas'
      OnClick = Notas1Click
    end
    object Relatorios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object Alunos2: TMenuItem
        Caption = '&Alunos'
        OnClick = Alunos2Click
      end
      object Professores2: TMenuItem
        Caption = '&Professores'
        OnClick = Professores2Click
      end
    end
  end
  object RelProfessorSQLDataSet: TSQLDataSet
    CommandText = 
      'select *  from ALUNODISCIPLINAPROFESSOR '#13#10'inner join ALUNO on AL' +
      'UNO.alunoID=ALUNODISCIPLINAPROFESSOR.alunoID '#13#10'inner join DISCIP' +
      'LINAPROFESSOR on DISCIPLINAPROFESSOR.disciplinaprofessorID=ALUNO' +
      'DISCIPLINAPROFESSOR.disciplinaprofessorID '#13#10'inner join DISCIPLIN' +
      'A on DISCIPLINA.disciplinaID=DISCIPLINAPROFESSOR.disciplinaID '#13#10 +
      'inner join PROFESSOR on PROFESSOR.professorID=DISCIPLINAPROFESSO' +
      'R.professorID'#13#10'ORDER BY NOMEPROFESSOR'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataModuleBanco.ConexaoBanco
    Left = 64
    Top = 200
    object RelProfessorSQLDataSetALUNODISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'ALUNODISCIPLINAPROFESSORID'
      Required = True
    end
    object RelProfessorSQLDataSetALUNOID: TIntegerField
      FieldName = 'ALUNOID'
      Required = True
    end
    object RelProfessorSQLDataSetDISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID'
      Required = True
    end
    object RelProfessorSQLDataSetNOTA1: TIntegerField
      FieldName = 'NOTA1'
    end
    object RelProfessorSQLDataSetNOTA2: TIntegerField
      FieldName = 'NOTA2'
    end
    object RelProfessorSQLDataSetNOTATRABALHO: TIntegerField
      FieldName = 'NOTATRABALHO'
    end
    object RelProfessorSQLDataSetALUNOID_1: TIntegerField
      FieldName = 'ALUNOID_1'
      Required = True
    end
    object RelProfessorSQLDataSetNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Required = True
      Size = 50
    end
    object RelProfessorSQLDataSetCPFALUNO: TStringField
      FieldName = 'CPFALUNO'
      Required = True
      Size = 11
    end
    object RelProfessorSQLDataSetDISCIPLINAPROFESSORID_1: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID_1'
      Required = True
    end
    object RelProfessorSQLDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      Required = True
    end
    object RelProfessorSQLDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      Required = True
    end
    object RelProfessorSQLDataSetDISCIPLINAID_1: TIntegerField
      FieldName = 'DISCIPLINAID_1'
      Required = True
    end
    object RelProfessorSQLDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      Required = True
      Size = 50
    end
    object RelProfessorSQLDataSetPROFESSORID_1: TIntegerField
      FieldName = 'PROFESSORID_1'
      Required = True
    end
    object RelProfessorSQLDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      Required = True
      Size = 50
    end
    object RelProfessorSQLDataSetCPFPROFESSOR: TStringField
      FieldName = 'CPFPROFESSOR'
      Required = True
      Size = 11
    end
  end
  object RelProfessorDataSetProvider: TDataSetProvider
    DataSet = RelProfessorSQLDataSet
    Left = 104
    Top = 200
  end
  object RelProfessorClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RelProfessorDataSetProvider'
    Left = 136
    Top = 200
    object RelProfessorClientDataSetALUNODISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'ALUNODISCIPLINAPROFESSORID'
      Required = True
    end
    object RelProfessorClientDataSetALUNOID: TIntegerField
      FieldName = 'ALUNOID'
      Required = True
    end
    object RelProfessorClientDataSetDISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID'
      Required = True
    end
    object RelProfessorClientDataSetNOTA1: TIntegerField
      FieldName = 'NOTA1'
    end
    object RelProfessorClientDataSetNOTA2: TIntegerField
      FieldName = 'NOTA2'
    end
    object RelProfessorClientDataSetNOTATRABALHO: TIntegerField
      FieldName = 'NOTATRABALHO'
    end
    object RelProfessorClientDataSetALUNOID_1: TIntegerField
      FieldName = 'ALUNOID_1'
      Required = True
    end
    object RelProfessorClientDataSetNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Required = True
      Size = 50
    end
    object RelProfessorClientDataSetCPFALUNO: TStringField
      FieldName = 'CPFALUNO'
      Required = True
      Size = 11
    end
    object RelProfessorClientDataSetDISCIPLINAPROFESSORID_1: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID_1'
      Required = True
    end
    object RelProfessorClientDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      Required = True
    end
    object RelProfessorClientDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      Required = True
    end
    object RelProfessorClientDataSetDISCIPLINAID_1: TIntegerField
      FieldName = 'DISCIPLINAID_1'
      Required = True
    end
    object RelProfessorClientDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      Required = True
      Size = 50
    end
    object RelProfessorClientDataSetPROFESSORID_1: TIntegerField
      FieldName = 'PROFESSORID_1'
      Required = True
    end
    object RelProfessorClientDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      Required = True
      Size = 50
    end
    object RelProfessorClientDataSetCPFPROFESSOR: TStringField
      FieldName = 'CPFPROFESSOR'
      Required = True
      Size = 11
    end
  end
  object RelProfessorDataSource: TDataSource
    DataSet = RelProfessorClientDataSet
    Left = 168
    Top = 200
  end
end
