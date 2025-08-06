object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 532
  ClientWidth = 1112
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
    Width = 1112
    Height = 532
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 730
    ExplicitHeight = 527
    object lblNome_E: TLabel
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
    object lblCPF_E: TLabel
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
    object lbl_ID_E: TLabel
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
    object lblTurma_E: TLabel
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
    object lblNome_P: TLabel
      Left = 664
      Top = 53
      Width = 205
      Height = 29
      Caption = 'Nome do Professor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
    end
    object lblCPF_P: TLabel
      Left = 664
      Top = 130
      Width = 184
      Height = 29
      Caption = 'CPF do Professor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
    end
    object lbl_ID_P: TLabel
      Left = 664
      Top = 204
      Width = 164
      Height = 29
      Caption = 'ID do Professor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
    end
    object edNome_E: TEdit
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
    object edCPF_E: TEdit
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
    object edID_E: TEdit
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
    object edTurma_E: TEdit
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
    object btn_Salvar1: TButton
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
      OnClick = btn_Salvar1Click
    end
    object edNome_P: TEdit
      Left = 664
      Top = 88
      Width = 217
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edCPF_P: TEdit
      Left = 664
      Top = 165
      Width = 217
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edID_P: TEdit
      Left = 664
      Top = 239
      Width = 217
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object btn_Salvar2: TButton
      Left = 677
      Top = 348
      Width = 171
      Height = 30
      Caption = 'SALVAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btn_Salvar2Click
    end
  end
end
