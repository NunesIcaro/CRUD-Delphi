object DM: TDM
  Height = 455
  Width = 651
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
      'Database=postgres'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 110
    Top = 268
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      ''
      '')
    Left = 240
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 242
    Top = 260
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM vw_geral;'
      '')
    Left = 312
    Top = 118
  end
end
