object DM: TDM
  Height = 364
  Width = 521
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\'#205'caro Nunes\Desktop\CRUD-Delphi\Win32\Debug\lib\libpq.d' +
      'll'
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
    Top = 214
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      ''
      '')
    Left = 192
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 194
    Top = 208
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM vw_geral;')
    Left = 250
    Top = 94
  end
end
