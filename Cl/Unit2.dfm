object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 703
  Top = 176
  Height = 205
  Width = 215
  object IBDatabase1: TIBDatabase
    DatabaseName = '127.0.0.1:D:\Work\Soft Develop\HELP_DESK\DB\users.fdb'
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
    BeforeConnect = IBDatabase1BeforeConnect
    Left = 8
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = False
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 80
    Top = 16
  end
end
