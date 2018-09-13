object DataModuleBanco: TDataModuleBanco
  OldCreateOrder = False
  Left = 845
  Top = 116
  Height = 516
  Width = 476
  object ConexaoBanco: TSQLConnection
    ConnectionName = 'ConnectionFireBird'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=c:\ProjetoFortes\BancodeDados\BANCOF.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Connected = True
    Left = 56
    Top = 11
  end
  object AlunoSQLDataSet: TSQLDataSet
    CommandText = 'select * from ALUNO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoBanco
    Left = 56
    Top = 72
    object AlunoSQLDataSetALUNOID: TIntegerField
      FieldName = 'ALUNOID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object AlunoSQLDataSetNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object AlunoSQLDataSetCPFALUNO: TStringField
      FieldName = 'CPFALUNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
  end
  object ProfessorSQLDataSet: TSQLDataSet
    CommandText = 'select * from PROFESSOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoBanco
    Left = 56
    Top = 124
    object ProfessorSQLDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object ProfessorSQLDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object ProfessorSQLDataSetCPFPROFESSOR: TStringField
      FieldName = 'CPFPROFESSOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
  end
  object DisciplinaSQLDataSet: TSQLDataSet
    CommandText = 'select * from DISCIPLINA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoBanco
    Left = 56
    Top = 175
    object DisciplinaSQLDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object DisciplinaSQLDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object DiscProfSQLDataSet: TSQLDataSet
    CommandText = 
      'select * from DISCIPLINAPROFESSOR'#13#10'inner join DISCIPLINA on DISC' +
      'IPLINA.disciplinaID=DISCIPLINAPROFESSOR.disciplinaID'#13#10'inner join' +
      ' PROFESSOR on PROFESSOR.professorID=DISCIPLINAPROFESSOR.professo' +
      'rID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoBanco
    Left = 56
    Top = 227
    object DiscProfSQLDataSetDISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object DiscProfSQLDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object DiscProfSQLDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object DiscProfSQLDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object DiscProfSQLDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object AlunoDiscProfSQLDataSet: TSQLDataSet
    CommandText = 
      'select * from ALUNODISCIPLINAPROFESSOR '#13#10'inner join ALUNO on ALU' +
      'NO.alunoID=ALUNODISCIPLINAPROFESSOR.alunoID '#13#10'inner join DISCIPL' +
      'INAPROFESSOR on DISCIPLINAPROFESSOR.disciplinaprofessorID=ALUNOD' +
      'ISCIPLINAPROFESSOR.disciplinaprofessorID '#13#10'inner join DISCIPLINA' +
      ' on DISCIPLINA.disciplinaID=DISCIPLINAPROFESSOR.disciplinaID '#13#10'i' +
      'nner join PROFESSOR on PROFESSOR.professorID=DISCIPLINAPROFESSOR' +
      '.professorID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoBanco
    Left = 56
    Top = 279
    object AlunoDiscProfSQLDataSetALUNODISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'ALUNODISCIPLINAPROFESSORID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object AlunoDiscProfSQLDataSetALUNOID: TIntegerField
      FieldName = 'ALUNOID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object AlunoDiscProfSQLDataSetDISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object AlunoDiscProfSQLDataSetNOTA1: TIntegerField
      FieldName = 'NOTA1'
      ProviderFlags = [pfInUpdate]
    end
    object AlunoDiscProfSQLDataSetNOTA2: TIntegerField
      FieldName = 'NOTA2'
      ProviderFlags = [pfInUpdate]
    end
    object AlunoDiscProfSQLDataSetNOTATRABALHO: TIntegerField
      FieldName = 'NOTATRABALHO'
      ProviderFlags = [pfInUpdate]
    end
    object AlunoDiscProfSQLDataSetNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object AlunoDiscProfSQLDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object AlunoDiscProfSQLDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object AlunoDiscProfSQLDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object AlunoDiscProfSQLDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object AlunoDataSetProvider: TDataSetProvider
    DataSet = AlunoSQLDataSet
    UpdateMode = upWhereKeyOnly
    Left = 199
    Top = 72
  end
  object ProfessorDataSetProvider: TDataSetProvider
    DataSet = ProfessorSQLDataSet
    UpdateMode = upWhereKeyOnly
    Left = 199
    Top = 124
  end
  object DisciplinaDataSetProvider: TDataSetProvider
    DataSet = DisciplinaSQLDataSet
    UpdateMode = upWhereKeyOnly
    Left = 199
    Top = 175
  end
  object DiscProfDataSetProvider4: TDataSetProvider
    DataSet = DiscProfSQLDataSet
    UpdateMode = upWhereKeyOnly
    Left = 199
    Top = 227
  end
  object AlunoDiscProfDataSetProvider: TDataSetProvider
    DataSet = AlunoDiscProfSQLDataSet
    UpdateMode = upWhereKeyOnly
    Left = 199
    Top = 279
  end
  object AlunoClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AlunoDataSetProvider'
    Left = 343
    Top = 72
    object AlunoClientDataSetALUNOID: TIntegerField
      FieldName = 'ALUNOID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object AlunoClientDataSetNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object AlunoClientDataSetCPFALUNO: TStringField
      FieldName = 'CPFALUNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
  end
  object ProfessorClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'ProfessorDataSetProvider'
    Left = 343
    Top = 124
    object ProfessorClientDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object ProfessorClientDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object ProfessorClientDataSetCPFPROFESSOR: TStringField
      FieldName = 'CPFPROFESSOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
  end
  object DisciplinaClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DisciplinaDataSetProvider'
    Left = 343
    Top = 175
    object DisciplinaClientDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object DisciplinaClientDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object DiscProfClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DiscProfDataSetProvider4'
    Left = 343
    Top = 227
    object DiscProfClientDataSetDISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object DiscProfClientDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object DiscProfClientDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object DiscProfClientDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object DiscProfClientDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object AlunoDiscProfClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AlunoDiscProfDataSetProvider'
    AfterPost = AlunoDiscProfClientDataSetAfterPost
    OnCalcFields = AlunoDiscProfClientDataSetCalcFields
    Left = 343
    Top = 279
    object AlunoDiscProfClientDataSetALUNODISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'ALUNODISCIPLINAPROFESSORID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object AlunoDiscProfClientDataSetALUNOID: TIntegerField
      FieldName = 'ALUNOID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object AlunoDiscProfClientDataSetDISCIPLINAPROFESSORID: TIntegerField
      FieldName = 'DISCIPLINAPROFESSORID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object AlunoDiscProfClientDataSetNOTA1: TIntegerField
      FieldName = 'NOTA1'
      ProviderFlags = [pfInUpdate]
    end
    object AlunoDiscProfClientDataSetNOTA2: TIntegerField
      FieldName = 'NOTA2'
      ProviderFlags = [pfInUpdate]
    end
    object AlunoDiscProfClientDataSetNOTATRABALHO: TIntegerField
      FieldName = 'NOTATRABALHO'
      ProviderFlags = [pfInUpdate]
    end
    object AlunoDiscProfClientDataSetNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object AlunoDiscProfClientDataSetDISCIPLINAID: TIntegerField
      FieldName = 'DISCIPLINAID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object AlunoDiscProfClientDataSetPROFESSORID: TIntegerField
      FieldName = 'PROFESSORID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object AlunoDiscProfClientDataSetNOMEDISCIPLINA: TStringField
      FieldName = 'NOMEDISCIPLINA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object AlunoDiscProfClientDataSetNOMEPROFESSOR: TStringField
      FieldName = 'NOMEPROFESSOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object AlunoDiscProfClientDataSetMEDIA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MEDIA'
      ProviderFlags = [pfHidden]
      Calculated = True
    end
  end
end
