unit Diplom;

interface

uses
Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, OoMisc, AdPort, ExtCtrls, Math, Menus, TeeProcs,
  TeEngine, Chart, AxCtrls, OleCtrls, VCF1, Series, OleServer, ExcelXP,
  CheckLst, AdWnPort, AdStMach, ToolWin, ActnMan, ActnCtrls, ComCtrls, Registry,
  DbChart, Grids, ValEdit;

type
  TMainForm = class(TForm)
    TopMenu: TMainMenu;
    fileSelect: TMenuItem;
    selectPort: TMenuItem;
    com1: TMenuItem;
    com2: TMenuItem;
    com3: TMenuItem;
    com4: TMenuItem;
    About: TMenuItem;
    TZapros: TTimer;
    buttonStart: TButton;
    changeCOM: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    buttonWrite: TButton;
    comDataPort: TApdComPort;
    CheckListBox1: TCheckListBox;
    Label4: TLabel;
    ScrollBox1: TScrollBox;
    SpeedChart: TChart;
    Series1: TLineSeries;
    RPMChart: TChart;
    LineSeries1: TLineSeries;
    TemperatureChart: TChart;
    LineSeries2: TLineSeries;
    VoltageChart: TChart;
    LineSeries3: TLineSeries;
    N1: TMenuItem;
    timerConnection: TTimer;
    valueParam: TValueListEditor;
    checkWrite: TCheckBox;
    tableParam: TStringGrid;
    saveDialog: TSaveDialog;
    procedure buttonStartClick(Sender: TObject);
    procedure TZaprosTimer(Sender: TObject);
    procedure comDataPortTrigger(CP: TObject; Msg, TriggerHandle, Data: Word);
    procedure FormCreate(Sender: TObject);
    procedure CheckListBox1Click(Sender: TObject);
    procedure timerConnectionTimer(Sender: TObject);
    procedure changeCOMChange(Sender: TObject);
    procedure buttonWriteClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  BlockIn: array [0..100] of char;
  comList    : array [0..15] of String;
  sost:integer;   ///��������� ����\���
  ListCount : integer = -1;
  countParam : Integer = 0;
  tempEngine : real;
  RPM : integer;
  speed : real;
  voltDD : real;
  toplivo : real;
  nagruzkaEngine : real;
  stepGraph : Integer = 0;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var reg  : TRegistry;
    l    : TStringList;
    i    : integer;

begin
      valueParam.InsertRow('��������',' ��/�',True);
      valueParam.InsertRow('������ �������',' �/���',True);
      valueParam.InsertRow('������� ���������',' ��/���',True);
      valueParam.InsertRow('���������� �������� ����',' �',True);
      valueParam.InsertRow('������ ��',' �',True);
      valueParam.InsertRow('�������� �� ���������',' %',True);
      valueParam.InsertRow('����������� ���.���.',' C',True);

      tableParam.Cells[1, 0]:='��������(��/���)';
      tableParam.Cells[2, 0]:='������ �������(�/���)';
      tableParam.Cells[3, 0]:='������� ����.(��/���)';
      tableParam.Cells[4, 0]:='����. ����. ����(�)';
      tableParam.Cells[5, 0]:='������ ��(�)';
      tableParam.Cells[6, 0]:='����. �� ����.(%)';
      tableParam.Cells[7, 0]:='����������� ���.���.(�)';

      l := TStringList.Create;
      reg:=TRegistry.Create;
        try
          reg.RootKey := HKEY_LOCAL_MACHINE;
          reg.OpenKey('HARDWARE\DEVICEMAP\SERIALCOMM', false);
          reg.GetValueNames(l);
            for i:=0 to l.Count-1 do
              begin
                changeCOM.Items.add(reg.ReadString(l[i]));
                comList[i]:= reg.ReadString(l[i]);
              end;
        finally
      reg.Free;
      l.Free;
  end;
end;

///////////////////////////////////////////////////////////
procedure TMainForm.buttonStartClick(Sender: TObject);
begin
if sost=0 then   ///     ��������� ��������� ����������
  begin
    sost:=1;       /// ������ �������� ���������
    buttonStart.Caption:='���������� ������������'; /// ������ ������� ������
    comDataPort.Open:=true;
    sleep(200);
    timerConnection.Enabled:=true;
  end
else  /// ��������� ����������
  begin
    sost:=0;
    buttonStart.Caption:='������ ������������'; /// ������ ������� ������
    timerConnection.Enabled:=false;     /// �������� ������ �������
    TZapros.Enabled:=false;
    sleep(400);
    comDataPort.PutString(chr($81)+chr($10)+chr($f1)+chr($82)+chr($04));
    comDataPort.Open:=false;  /// ��������� ����
  end

end;

//////////////////////////////

procedure TMainForm.timerConnectionTimer(Sender: TObject);
begin
  comDataPort.SetBreak(true);
  sleep(25);
  comDataPort.SetBreak(false);
  sleep(25);
  comDataPort.PutString(chr($81)+chr($10)+chr($f1)+chr($81)+chr($03));

comDataPort.FlushInBuffer;
end;

////////////////////////////////

procedure TMainForm.TZaprosTimer(Sender: TObject); /// ������ ��������
begin
comDataPort.FlushInBuffer;
comDataPort.PutString(chr($82)+chr($10)+chr($f1)+chr($21)+chr($01)+chr($a5)); /// ������ �� ��� ��� ������ ������ �����������
end;

////////////////////////////////

procedure TMainForm.comDataPortTrigger(CP: TObject; Msg, TriggerHandle,
  Data: Word);     /// ��������� ����������� ����� �������� ������
begin
if (comDataPort.InBuffUsed = 12) then
                               begin
                               comDataPort.PeekBlock(BlockIn,12);
                                 if   ord(BlockIn[8])=$C1 then
                                 begin
                                 timerConnection.Enabled:=false;
                                 TZapros.Enabled:=true;
                                 end;
                                end;
 if (comDataPort.InBuffUsed = 10) then
                               begin
                                comDataPort.PeekBlock(BlockIn,10);
                                 if   ord(BlockIn[8])=$C2 then
                                 begin
                                 buttonStart.Caption:='������ ������������';
                                 comDataPort.FlushInBuffer;
                                 comDataPort.Open:=false;
                                  end;
                               end;
 if (comDataPort.InBuffUsed = 78) then
    begin
      comDataPort.peekBlock(BlockIn,comDataPort.InBuffUsed);  /// �������� ������ � ������ ���-�����
      tempEngine:=0.75*ord(BlockIn[14])-48; /// ����������� ���.��������
      RPM:=ord(BlockIn[19])*40;   ///  �������
      speed:=1.25*ord(BlockIn[17]);    ///  ��������
      //naprLab.Caption:=FloatToStr(5.2+HexToInt(BlockIn[17])*0.05); ///   ���������� �������� ����
      voltDD:=0.25+(ord(BlockIn[43])-13)*0.02; /// ������ �� (�)
      toplivo:=ord(BlockIn[62])*ord(BlockIn[63])/465;  ///  ������ ������� �/���
      nagruzkaEngine:=ord(BlockIn[24])*ord(BlockIn[25])/42.67; /// �������� �� ���������

      valueParam.Values['��������']:= FloatToStr(speed) + ' ��/�';
      valueParam.Values['������ �������']:= FloatToStr(toplivo) + ' �/�';
      valueParam.Values['������� ���������']:= IntToStr(RPM) + ' ��/���';
      valueParam.Values['���������� �������� ����']:= ' �';
      valueParam.Values['������ ��']:= FloatToStr(voltDD) + ' �';
      valueParam.Values['�������� �� ���������']:= FloatToStr(nagruzkaEngine) + ' %';
      valueParam.Values['����������� ���.���.']:= FloatToStr(tempEngine) + ' C';

      if checkWrite.Checked then
        begin
           tableParam.Cells[1, tableParam.RowCount]:=FloatToStr(speed);
           tableParam.Cells[2, tableParam.RowCount]:=FloatToStr(toplivo);
           tableParam.Cells[3, tableParam.RowCount]:=IntToStr(RPM) ;
           tableParam.Cells[4, tableParam.RowCount]:='����. ����. ����(�)';
           tableParam.Cells[5, tableParam.RowCount]:=FloatToStr(voltDD);
           tableParam.Cells[6, tableParam.RowCount]:=FloatToStr(nagruzkaEngine);
           tableParam.Cells[7, tableParam.RowCount]:=FloatToStr(tempEngine);
           tableParam.RowCount:=tableParam.RowCount+1;
        end;
      SpeedChart.Series[0].AddXY(stepGraph,speed,'',clRed);
      RPMChart.Series[0].AddXY(stepGraph,RPM,'',clRed);
      inc(stepGraph);
    end;
end;

//////////////////////////




procedure TMainForm.CheckListBox1Click(Sender: TObject);
var i:integer;
begin  /// ��������

for i:= 0 to CheckListBox1.Items.Count-1 do
  begin
    if  CheckListBox1.selected[i] then
    begin
      case i of
        0:begin
            ListCount:=ListCount+1;
            SpeedChart.Visible := true;
            SpeedChart.Top := 180 * ListCount;
          end;
        2:begin
            ListCount:=ListCount+1;
            RPMChart.Visible := true;
            RPMChart.Top := 180 * ListCount;
          end;
       end;
    end
    else
    begin
        case i of
        0:begin
            SpeedChart.Visible := false;
            ListCount:=ListCount-1;
          end;
        2:begin
            RPMChart.Visible := false;
            ListCount:=ListCount-1;
           end;
       end;
     end;
end;

end;




procedure TMainForm.changeCOMChange(Sender: TObject);
var i,LenCom: Integer;
s:string;
begin
    for i:=0 to 15 do
      begin
        if changeCOM.ItemIndex = i then
        s:=comList[i];
          comDataPort.ComNumber := StrToInt(s[4]);
      end;

end;

procedure TMainForm.buttonWriteClick(Sender: TObject);
Var f: TextFile;
i, k: Integer;
s1:string;
begin
  if saveDialog.Execute
    then begin
      AssignFile(f,saveDialog.FileName);
        Rewrite(f);
        Append(f);
          for i:=0 to tableParam.RowCount-1 do
          begin
            for k:=1 to tableParam.ColCount-1 do
            begin
              s1:= s1  + tableParam.Cells[k,i]+ #$9;
            end;
          Writeln(f,s1);
          s1:='';
          end;
  CloseFile(f);
end;
end;

end.
