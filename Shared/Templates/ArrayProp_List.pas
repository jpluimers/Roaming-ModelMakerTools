unit ArrayProp_List;

//DEFINEMACRO:Items=name of array property
//DEFINEMACRO:TObject=type of array property
//DEFINEMACRO:ItemCount=Method returning # items
//DEFINEMACRO:FItems=TList Field storing items

  TCodeTemplate = class (TObject)
  private
    <!FItems!>: TList;
  protected
    function Get<!ItemCount!>: Integer;
    function Get<!Items!>(Index: Integer): <!TObject!>;
  public
    property <!ItemCount!>: Integer read Get<!ItemCount!>;
    property <!Items!>[Index: Integer]: <!TObject!> read Get<!Items!>;
  end;

{
************************************* TCodeTemplate **************************************
}
function TCodeTemplate.Get<!ItemCount!>: Integer;
begin
  Result := <!FItems!>.Count;
end;

function TCodeTemplate.Get<!Items!>(Index: Integer): <!TObject!>;
begin
  Result := <!TObject!>(<!FItems!>[Index]);
end;


