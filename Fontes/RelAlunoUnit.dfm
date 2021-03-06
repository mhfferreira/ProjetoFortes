object RelAlunoForm: TRelAlunoForm
  Left = 358
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Notas de Alunos'
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
      Hint = 'Fecha a Tela de Relat'#243'rio de Notas de Alunos.'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = FecharButtonClick
    end
    object RelatorioButton: TButton
      Left = 10
      Top = 20
      Width = 100
      Height = 30
      Hint = 'Imprime o Relat'#243'rio de Notas de Alunos.'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
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
    object GroupBox1: TGroupBox
      Left = 10
      Top = 20
      Width = 145
      Height = 109
      Caption = ' Filtrar por '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ReprovadosRadioButton: TRadioButton
        Left = 10
        Top = 74
        Width = 95
        Height = 17
        Hint = 'Filtra somente os reprovados.'
        Caption = 'Reprovados'
        TabOrder = 2
      end
      object AprovadosRadioButton: TRadioButton
        Left = 10
        Top = 47
        Width = 95
        Height = 17
        Hint = 'Filtra somente os Aprovados'
        Caption = 'Aprovados'
        TabOrder = 1
      end
      object TodosRadioButton: TRadioButton
        Left = 10
        Top = 20
        Width = 95
        Height = 17
        Hint = 'Lista todos.'
        Caption = 'Todos'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
    end
  end
  object RelAlunoSQLDataSet: TSQLDataSet
    CommandText = 
      'select (coalesce(ADP.nota1,0)+coalesce(ADP.nota2,0)+coalesce(ADP' +
      '.notatrabalho,0))/3 as MEDIA, ADP.ALUNODISCIPLINAPROFESSORID, AD' +
      'P.ALUNOID, ADP.DISCIPLINAPROFESSORID, coalesce(ADP.NOTA1,0) as N' +
      'OTA1, coalesce(ADP.NOTA2,0) as NOTA2, coalesce(ADP.NOTATRABALHO,' +
      '0) as NOTATRABALHO, A.ALUNOID, A.NOMEALUNO, A.CPFALUNO,'#13#10'DP.DISC' +
      'IPLINAPROFESSORID, DP.DISCIPLINAID, DP.PROFESSORID, D.DISCIPLINA' +
      'ID, D.NOMEDISCIPLINA, P.PROFESSORID, P.NOMEPROFESSOR, P.CPFPROFE' +
      'SSOR '#13#10'from ALUNODISCIPLINAPROFESSOR as ADP '#13#10'inner join ALUNO a' +
      's A on A.alunoID=ADP.alunoID '#13#10'inner join DISCIPLINAPROFESSOR as' +
      ' DP on DP.disciplinaprofessorID=ADP.disciplinaprofessorID '#13#10'inne' +
      'r join DISCIPLINA as D on D.disciplinaID=DP.disciplinaID '#13#10'inner' +
      ' join PROFESSOR as P on P.professorID=DP.professorID '#13#10'order by ' +
      'A.NOMEALUNO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataModuleBanco.ConexaoBanco
    Left = 16
    Top = 120
    object RelAlunoSQLDataSetMEDIA: TFMTBCDField
      FieldName = 'MEDIA'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object RelAlunoSQLDataSetALUNODISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'ALUNODISCIPLINAPROFESSORID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoSQLDataSetALUNOID: TIntegerField
      FieldName = 'ALUNOID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoSQLDataSetDISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoSQLDataSetNOTA1: TIntegerField
      FieldName = 'NOTA1'
      ReadOnly = True
    end
    object RelAlunoSQLDataSetNOTA2: TIntegerField
      FieldName = 'NOTA2'
      ReadOnly = True
    end
    object RelAlunoSQLDataSetNOTATRABALHO: TIntegerField
      FieldName = 'NOTATRABALHO'
      ReadOnly = True
    end
    object RelAlunoSQLDataSetALUNOID_1: TIntegerField
      FieldName = 'ALUNOID_1'
      ReadOnly = True
      Required = True
    end
    object RelAlunoSQLDataSetNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object RelAlunoSQLDataSetCPFALUNO: TStringField
      FieldName = 'CPFALUNO'
      ReadOnly = True
      Required = True
      Size = 11
    end
    object RelAlunoSQLDataSetDISCIPLINAPROFESSORID_1: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID_1'
      ReadOnly = True
      Required = True
    end
    object RelAlunoSQLDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoSQLDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoSQLDataSetDISCIPLINAID_1: TIntegerField
      FieldName = 'DISCIPLINAID_1'
      ReadOnly = True
      Required = True
    end
    object RelAlunoSQLDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object RelAlunoSQLDataSetPROFESSORID_1: TIntegerField
      FieldName = 'PROFESSORID_1'
      ReadOnly = True
      Required = True
    end
    object RelAlunoSQLDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object RelAlunoSQLDataSetCPFPROFESSOR: TStringField
      FieldName = 'CPFPROFESSOR'
      ReadOnly = True
      Required = True
      Size = 11
    end
  end
  object RelAlunoDataSetProvider: TDataSetProvider
    DataSet = RelAlunoSQLDataSet
    Left = 48
    Top = 120
  end
  object RelAlunoClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'RelAlunoDataSetProvider'
    OnCalcFields = RelAlunoClientDataSetCalcFields
    Left = 80
    Top = 120
    object RelAlunoClientDataSetSITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'SITUACAO'
      Calculated = True
    end
    object RelAlunoClientDataSetMEDIA: TFMTBCDField
      FieldName = 'MEDIA'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object RelAlunoClientDataSetALUNODISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'ALUNODISCIPLINAPROFESSORID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoClientDataSetALUNOID: TIntegerField
      FieldName = 'ALUNOID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoClientDataSetDISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoClientDataSetNOTA1: TIntegerField
      FieldName = 'NOTA1'
      ReadOnly = True
    end
    object RelAlunoClientDataSetNOTA2: TIntegerField
      FieldName = 'NOTA2'
      ReadOnly = True
    end
    object RelAlunoClientDataSetNOTATRABALHO: TIntegerField
      FieldName = 'NOTATRABALHO'
      ReadOnly = True
    end
    object RelAlunoClientDataSetALUNOID_1: TIntegerField
      FieldName = 'ALUNOID_1'
      ReadOnly = True
      Required = True
    end
    object RelAlunoClientDataSetNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object RelAlunoClientDataSetCPFALUNO: TStringField
      FieldName = 'CPFALUNO'
      ReadOnly = True
      Required = True
      Size = 11
    end
    object RelAlunoClientDataSetDISCIPLINAPROFESSORID_1: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID_1'
      ReadOnly = True
      Required = True
    end
    object RelAlunoClientDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoClientDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      ReadOnly = True
      Required = True
    end
    object RelAlunoClientDataSetDISCIPLINAID_1: TIntegerField
      FieldName = 'DISCIPLINAID_1'
      ReadOnly = True
      Required = True
    end
    object RelAlunoClientDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object RelAlunoClientDataSetPROFESSORID_1: TIntegerField
      FieldName = 'PROFESSORID_1'
      ReadOnly = True
      Required = True
    end
    object RelAlunoClientDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object RelAlunoClientDataSetCPFPROFESSOR: TStringField
      FieldName = 'CPFPROFESSOR'
      ReadOnly = True
      Required = True
      Size = 11
    end
  end
  object RelAlunoDataSource: TDataSource
    DataSet = RelAlunoClientDataSet
    Left = 32
    Top = 160
  end
end
