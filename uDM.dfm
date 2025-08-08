object DM: TDM
  Height = 600
  Width = 800
  PixelsPerInch = 120
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\icaro\Desktop\CRUD-DELPHI\CRUD-Delphi\Win32\Debug\lib\l' +
      'ibpq.dll'
    Left = 110
    Top = 120
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=CRUD_db'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 110
    Top = 260
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from estudantes'
      '')
    Left = 240
    Top = 120
  end
end
