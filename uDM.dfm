object DM: TDM
  Height = 480
  Width = 640
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Users\'#205'caro Nunes\Desktop\CRUD-Delphi\lib\libpq.dll'
    Left = 88
    Top = 96
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=CRUD_db'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 208
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from estudantes'
      '')
    Left = 192
    Top = 96
  end
end
