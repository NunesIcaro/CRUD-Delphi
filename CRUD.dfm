object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 527
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 527
    Align = alClient
    TabOrder = 0
    object lbl_Nome: TLabel
      Left = 240
      Top = 37
      Width = 208
      Height = 29
      Caption = 'Nome do Estudante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
    end
    object lbl_CPF: TLabel
      Left = 240
      Top = 114
      Width = 187
      Height = 29
      Caption = 'CPF do Estudante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
    end
    object lbl_ID: TLabel
      Left = 240
      Top = 262
      Width = 167
      Height = 29
      Caption = 'ID do Estudante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
    end
    object lbl_Turma: TLabel
      Left = 240
      Top = 188
      Width = 212
      Height = 29
      Caption = 'Turma do Estudante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
    end
    object edNome: TEdit
      Left = 240
      Top = 72
      Width = 217
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edCPF: TEdit
      Left = 240
      Top = 149
      Width = 217
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edID: TEdit
      Left = 240
      Top = 297
      Width = 217
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edTurma: TEdit
      Left = 240
      Top = 223
      Width = 217
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button1: TButton
      Left = 262
      Top = 344
      Width = 165
      Height = 33
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
  end
end
