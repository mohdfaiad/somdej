unit ClientUtils;

interface

uses //IWTMSEdit,
StrUtils, SysUtils, Types;

{****************************** Added by: Montri ******************************}
function IsNationalThaiID(ID: String): Boolean; overload;
function IsNationalThaiID(ID: Int64): Boolean; overload;
function CmpDateLessThan(BeginDate, EndDate: TDate; IsEqual: Boolean): Boolean;
{******************************************************************************}

{****************************** Added by: Thanet ******************************}
function IsBookAccountNo(AccountNo: String): Boolean; overload;
function IsBookAccountNo(AccountNo: Int64): Boolean; overload;
{******************************************************************************}

function SetUpMenuOrder(Ordername: string): string;
{function beginDateLessThanEndDate(startDate, endDate: TTIWAdvDateEdit;
  statusEqual: Boolean): Boolean;}
function GetCode(Str, P: String): String;
function GetDesc(Str, P: String): String;
function GetMassage(Mode: String): String;
function C_date(Str : String) : String;
function SetNumber(DecimalPoint : Char;Text : String) : String;
function YearsMonthDaysBetween(DateFrom, DateTo : TDate) : String ;

var
  ORDER_NAME: string;
  ORDER_TYPE: string;
  Space: string;
  ChkWeight :array[0..8] of Integer = (5,4,3,8,7,6,5,4,3);

implementation

function IsNationalThaiID(ID: String): Boolean;
var
  i, Sum: Integer;
begin
  Result := (Length(ID) = 13);
  if (Result) then
  try
    Sum := 0;
    for i := 0 to 11 do
      Sum := Sum + (StrToInt(ID[i + 1]) * (13 - i));
    Result := (((11 - (Sum mod 11)) mod 10) = StrToInt(ID[13]));
  except
    Result := False;
  end;
end;

function IsNationalThaiID(ID: Int64): Boolean;
begin
  Result := IsNationalThaiID(IntToStr(ID));
end;
{****************************************************************************}
function IsBookAccountNo(AccountNo: String): Boolean;
var
  i, Sum , ChkDigit: Integer;

begin
  Result := (Length(AccountNo) = 10);
  if (Result) then
  try
    Sum := 0;
    for i := 0 to 8 do
      Sum := Sum + (StrToInt(AccountNo[i + 1]) * ChkWeight[i]);

    if ( (Sum mod 10) = 0) Then ChkDigit := 0
      Else ChkDigit := 10 - (Sum mod 10) ;

    Result :=  (ChkDigit = StrToInt(AccountNo[10]));
  except
    Result := False;
  end;
end;

function IsBookAccountNo(AccountNo: Int64): Boolean;
begin
  Result := IsBookAccountNo(IntToStr(AccountNo));
end;

function CmpDateLessThan(BeginDate, EndDate: TDate; IsEqual: Boolean): Boolean;
begin
  Result := ((BeginDate < EndDate) or (IsEqual and (BeginDate = EndDate)));
end;

{******************************************************************************}

function C_date(Str : String) : String;
var
    DD : TDateTime;
    S : String;
begin
  S := Copy(Str,4,2) +   '/' +
       Copy(Str,1,2) + '/' +IntToStr(StrToInt(Copy(Str,7,4)) - 543);
  try
    DD :=  StrToDate(S);
    Result := IntToStr(StrToInt(Copy(Str,7,4)) - 543) + '/' +
                Copy(Str,4,2) + '/' +Copy(Str,1,2);
  Except
    Result := 'ERROR';
  end;
end;


function GetMassage(Mode: String): String;
begin
  if (Mode = 'insert') then
  begin

  end;
end;

function GetDesc(Str, P: String): String;
begin
  Result := Trim(MidStr(Str, Pos(P, Str) + 1, Length(Str) - Pos(P, Str)));
end;

function GetCode(Str, P: String): String;
begin
  Result := Trim(MidStr(Str, 1, Pos(P, Str) - 1));
end;

function SetUpMenuOrder(Ordername: string): string;
begin
  /// ///////////////////////////////////////////////////////////////////////////////
  if (ORDER_NAME = Ordername) then
  begin
    if (ORDER_TYPE = 'ASC') then
    begin
      ORDER_TYPE := 'DESC';
    end
    else
    begin
      ORDER_TYPE := 'ASC';
    end;
  end
  else
  begin
    ORDER_NAME := Ordername;
    ORDER_TYPE := 'ASC';
  end;
  /// ///////////////////////////////////////////////////////////////////////////////
  Space := ' ';
  Result := Ordername + Space + ORDER_TYPE;
end;

function SetNumber(DecimalPoint : Char;Text : String) : String;
var S : String;
  i : integer;
begin
   //DecimalPoint  ส่งค่ามาเผื่อมีการแก้ไขเพิ่มเติม
   S := '';

   for i := 1 to Length(Text)  do
     if (Text[i] <> ',') then
       S := S + Text[i];
   Result := S;
end;

function YearsMonthDaysBetween(DateFrom, DateTo : TDate) : String ;
    //      var YearsGap, MonthGap, DaysGap : Word);
var
  DaysNumber, DaysCounter, DaysInAMonthCounter : Word;
  YearsCount, MonthsCount, DaysCount, DaysInCurrentMonth : Word;
  TempDate : TDate;
  YearsGap, MonthGap, DaysGap : Word ;

    function SpanOfNowAndThen(const ANow, AThen: TDateTime): TDateTime;
    begin
      if Trunc(ANow) < Trunc(AThen) then
        Result := Trunc(AThen) - Trunc(ANow)
      else
        Result := 1;
    end;

    function DaySpan(const ANow, AThen: TDateTime): Double;
    begin
      Result := SpanOfNowAndThen(ANow, AThen);
    end;

    function DaysBetween(const ANow, AThen: TDateTime): Integer;
    begin
      Result := Trunc(DaySpan(ANow, AThen));
    end;


    function DaysInAMonth(const AYear, AMonth: Word): Word;
    begin
     Result := MonthDays[(AMonth = 2) and IsLeapYear(AYear), AMonth];
    end;

    function DaysInMonth(const AValue: TDateTime): Word;
    var
      LYear, LMonth, LDay: Word;
    begin
      DecodeDate(AValue, LYear, LMonth, LDay);
      Result := DaysInAMonth(LYear, LMonth);
    end;

Begin
  if Trunc(DateTo) <  Trunc(DateFrom) then
  begin
    YearsGap:=0;
    MonthGap:=0;
    DaysGap:=0;
    result :=inttostr(YearsGap)+ ' ปี '+inttostr(MonthGap)+' เดือน '+inttostr(DaysGap)+'  วัน';
    exit;
  end;
  YearsCount:=0; MonthsCount:=0; DaysCount:=0;
  DaysCounter:=0;
  DaysNumber:=DaysBetween(DateFrom, DateTo);
  DaysInCurrentMonth:=0; DaysInAMonthCounter:=0;
  TempDate:=DateFrom;
  DaysInCurrentMonth:=DaysInMonth(TempDate);

  While DaysCounter < DaysNumber Do
  Begin
    Inc(DaysCounter);
    Inc(DaysInAMonthCounter);

    // If you reach the end of a month, based on the number
    // of days of the current month then
    If (DaysInAMonthCounter=DaysInCurrentMonth) Then
    Begin
      Inc(MonthsCount);
      If MonthsCount=12 Then
      Begin
        Inc(YearsCount); MonthsCount:=0;
      End;

      // Add a month, based on the month's number of days, to DateFrom
      TempDate:=TempDate+DaysInCurrentMonth;

      // Calculate the number of days of the next month
      DaysInCurrentMonth:=DaysInMonth(TempDate);

      // Start coung Month's days all over again.
      DaysInAMonthCounter:=0;
    End; // If
  End; // While

  // Turn spare days left from Month days countings, into Days number.
  DaysCount:=DaysInAMonthCounter;

  // Return values
  YearsGap:=YearsCount;
  MonthGap:=MonthsCount;
  DaysGap:=DaysCount;
  result :=inttostr(YearsGap)+ ' ปี '+inttostr(MonthGap)+' เดือน '+inttostr(DaysGap)+'  วัน';
End; // Procedure


end.
