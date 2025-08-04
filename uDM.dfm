object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Users\'#205'caro Nunes\Desktop\CRUD-Delphi\lib\libpq.dll'
    Left = 80
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
    Left = 80
    Top = 152
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 304
    Top = 224
  end
end
