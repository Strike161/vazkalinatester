object MainForm: TMainForm
  Left = 205
  Top = 64
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'VazTester v 0.0.1b'
  ClientHeight = 610
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = TopMenu
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 879
    Height = 610
    ActivePage = TabSheet2
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1054#1073#1097#1080#1077' '#1076#1072#1085#1085#1099#1077
      ParentShowHint = False
      ShowHint = False
      object buttonStart: TButton
        Left = 552
        Top = 212
        Width = 297
        Height = 25
        Caption = #1053#1072#1095#1072#1090#1100' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
        TabOrder = 0
        OnClick = buttonStartClick
      end
      object changeCOM: TComboBox
        Left = 696
        Top = 8
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Text = #1042#1099#1073#1077#1088#1080#1090#1077' COM '#1087#1086#1088#1090
        OnChange = changeCOMChange
      end
      object buttonWrite: TButton
        Left = 472
        Top = 8
        Width = 145
        Height = 33
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1072#1081#1083
        TabOrder = 2
        OnClick = buttonWriteClick
      end
      object valueParam: TValueListEditor
        Left = 0
        Top = 6
        Width = 257
        Height = 203
        DisplayOptions = [doColumnTitles, doAutoColResize]
        FixedColor = clMenu
        Options = [goFixedVertLine, goVertLine, goHorzLine, goColSizing, goAlwaysShowEditor, goThumbTracking]
        TabOrder = 3
        TitleCaptions.Strings = (
          #1055#1072#1088#1072#1084#1077#1090#1088
          #1047#1085#1072#1095#1077#1085#1080#1077
          #1045#1076#1077#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103)
        ColWidths = (
          125
          126)
      end
      object checkWrite: TCheckBox
        Left = 696
        Top = 40
        Width = 145
        Height = 17
        Caption = #1042#1077#1089#1090#1080' '#1079#1072#1087#1080#1089#1100' '#1079#1085#1072#1095#1077#1085#1080#1081
        TabOrder = 4
      end
      object tableParam: TStringGrid
        Left = 0
        Top = 264
        Width = 865
        Height = 313
        ColCount = 8
        RowCount = 2
        TabOrder = 5
        ColWidths = (
          64
          102
          122
          128
          111
          85
          90
          146)
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1043#1088#1072#1092#1080#1082#1080
      ImageIndex = 1
      object Label4: TLabel
        Left = 696
        Top = 8
        Width = 113
        Height = 13
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099':'
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 690
        Height = 585
        HorzScrollBar.Visible = False
        BorderStyle = bsNone
        TabOrder = 0
        object SpeedChart: TChart
          Left = 0
          Top = 0
          Width = 670
          Height = 180
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          LeftWall.Brush.Color = clWhite
          MarginBottom = 0
          MarginLeft = 0
          MarginRight = 1
          MarginTop = 0
          Title.Text.Strings = (
            #1057#1082#1086#1088#1086#1089#1090#1100)
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.ExactDateTime = False
          LeftAxis.Increment = 1.000000000000000000
          LeftAxis.Maximum = 150.000000000000000000
          LeftAxis.Minimum = 4.000000000000000000
          LeftAxis.MinorGrid.Style = psDashDot
          Legend.Visible = False
          MaxPointsPerPage = 16
          ScaleLastPage = False
          View3D = False
          TabOrder = 0
          object Series1: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clRed
            Title = 'SpeedSeries'
            Dark3D = False
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
          end
        end
        object RPMChart: TChart
          Left = 0
          Top = 180
          Width = 670
          Height = 180
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          LeftWall.Brush.Color = clWhite
          MarginBottom = 0
          MarginLeft = 0
          MarginRight = 1
          MarginTop = 0
          Title.Text.Strings = (
            #1054#1073#1086#1088#1086#1090#1099' '#1076#1074#1080#1075#1072#1090#1077#1083#1103)
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.Maximum = 5000.000000000000000000
          Legend.Visible = False
          ScaleLastPage = False
          View3D = False
          TabOrder = 1
          object LineSeries1: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clRed
            Title = 'RPMSeries'
            Dark3D = False
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
          end
        end
        object TemperatureChart: TChart
          Left = 0
          Top = 360
          Width = 670
          Height = 180
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          LeftWall.Brush.Color = clWhite
          MarginBottom = 0
          MarginLeft = 0
          MarginRight = 1
          MarginTop = 0
          Title.Text.Strings = (
            #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1086#1093#1083#1072#1078#1076#1072#1102#1097#1077#1081' '#1078#1080#1076#1082#1086#1089#1090#1080)
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.Maximum = 140.000000000000000000
          Legend.Visible = False
          View3D = False
          TabOrder = 2
          Visible = False
          object LineSeries2: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clRed
            Title = 'Temperature'
            Dark3D = False
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
          end
        end
        object VoltageChart: TChart
          Left = 0
          Top = 540
          Width = 670
          Height = 180
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          LeftWall.Brush.Color = clWhite
          MarginBottom = 0
          MarginLeft = 0
          MarginRight = 1
          MarginTop = 0
          Title.Text.Strings = (
            #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077' '#1073#1086#1088#1090#1086#1074#1086#1081' '#1089#1077#1090#1080)
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.Maximum = 20.000000000000000000
          Legend.Visible = False
          View3D = False
          TabOrder = 3
          Visible = False
          object LineSeries3: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clRed
            Title = 'Voltage'
            Dark3D = False
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
          end
        end
      end
      object CheckListBox1: TCheckListBox
        Left = 696
        Top = 30
        Width = 153
        Height = 117
        ItemHeight = 13
        Items.Strings = (
          #1057#1082#1086#1088#1086#1089#1090#1100
          #1056#1072#1089#1093#1086#1076' '#1074#1086#1079#1076#1091#1093#1072
          #1056#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072
          #1054#1073#1086#1088#1086#1090#1099' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
          #1053#1072#1087#1088'. '#1073#1086#1088#1090#1086#1074#1086#1081' '#1089#1077#1090#1080
          #1057#1080#1075#1085#1072#1083' '#1044#1044
          #1053#1072#1075#1088#1091#1079#1082#1072' '#1085#1072' '#1076#1074#1080#1075#1072#1090#1077#1083#1100
          #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1086#1093#1083'. '#1078#1080#1076'.')
        TabOrder = 1
        OnClick = CheckListBox1Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1089' '#1086#1089#1094#1080#1083#1086#1075#1088#1072#1092#1072
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = #1054#1096#1080#1073#1082#1080' '#1069#1041#1059
      ImageIndex = 3
    end
  end
  object TopMenu: TMainMenu
    Top = 544
    object fileSelect: TMenuItem
      Caption = #1060#1072#1081#1083
    end
    object selectPort: TMenuItem
      Caption = #1042#1099#1073#1086#1088' '#1087#1086#1088#1090#1072
      object com1: TMenuItem
        Caption = 'COM1'
      end
      object com2: TMenuItem
        Caption = 'COM2'
      end
      object com3: TMenuItem
        Caption = 'COM3'
      end
      object com4: TMenuItem
        Caption = 'COM4'
      end
      object N1: TMenuItem
        Caption = #1040#1074#1090#1086#1074#1099#1073#1086#1088
      end
    end
    object About: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    end
  end
  object TZapros: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TZaprosTimer
    Left = 32
    Top = 544
  end
  object comDataPort: TApdComPort
    Baud = 10400
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    OnTrigger = comDataPortTrigger
    Left = 68
    Top = 544
  end
  object timerConnection: TTimer
    Enabled = False
    Interval = 800
    OnTimer = timerConnectionTimer
    Left = 100
    Top = 544
  end
  object saveDialog: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text file|*.txt|Word file|*.doc|Excel file|*.xls'
    Left = 132
    Top = 544
  end
end
