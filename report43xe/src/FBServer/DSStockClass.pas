unit DSStockClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DSMainClass, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.Provider,DSServerConstant;


type
  TDSSTOCK = class(TDSMain)
    dsStockGet: TSQLQuery;
    dspStockGet: TDataSetProvider;
  private
    { Private declarations }

  public
    { Public declarations }
    function StockGet(CRITERIA, ORDERFIELD: String ;IYARIM2:integer;ICMPIM2,IBRNIM2,IDCDIM2:string ): Boolean;
  end;

var
  DSSTOCK: TDSSTOCK;

implementation

{$R *.dfm}

{ TDSSTOCK }

function TDSSTOCK.StockGet(CRITERIA, ORDERFIELD: String; IYARIM2: integer;
  ICMPIM2, IBRNIM2, IDCDIM2: string): Boolean;
begin
 WriteLog('IDCDIM2' + IDCDIM2);
//  VerifyLoggedIn();
  LastErrorCode := _NO_ERROR_;
  try
   with dsStockGet do
   begin
    ParamByName('CRITERIA').AsString := CRITERIA;
    ParamByName('ORDERFIELD').AsString := ORDERFIELD;
    ParamByName('IYARIM2').AsInteger := IYARIM2;
    ParamByName('ICMPIM2').AsString := ICMPIM2;
    ParamByName('IBRNIM2').AsString := IBRNIM2;
    ParamByName('IDCDIM2').AsString := IDCDIM2;

   end;
  except
    on E: Exception do
    begin
//      LastErrorCode := _ERROR_UNDEFINED_;
//      LastErrorMsg := E.Message;
//      WriteLog(LastErrorMsg);
    end;
  end;
  Result := (LastErrorCode = _NO_ERROR_);
end;

end.
