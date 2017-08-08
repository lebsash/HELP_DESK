object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 826
  Top = 181
  Height = 205
  Width = 215
  object IBDatabase1: TIBDatabase
    DatabaseName = '127.0.0.1:D:\work\Soft Develop\HELP_DESK\DB\users.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    AfterConnect = IBDatabase1AfterConnect
    AfterDisconnect = IBDatabase1AfterDisconnect
    Left = 8
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 80
    Top = 16
  end
  object IBDatabase2: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction2
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    AfterConnect = IBDatabase2AfterConnect
    Left = 16
    Top = 88
  end
  object IBTransaction2: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase2
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 96
    Top = 88
  end
  object IBQuery4: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT IPPC FROM ZAPROZ')
    Left = 152
    Top = 24
  end
  object IBQuery5: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    Left = 152
    Top = 72
  end
end
