//MM#:type=indexer-implementation
//MM#:description=Simple TList implementation with Count
//MM#:getter=begin\N	Result := <!PropertyType!>(F<!PropertyName!>[<!PropIndexCallParams!>]);\Nend;
//MM#://setter=begin\N	F<!PropertyName!>[<!PropIndexCallParams!>] := <!WriteParam!>;\Nend;
//MM#:ctor=F<!PropertyName!> := TList.Create;
//MM#:dtor=FreeAndNil(F<!PropertyName!>);


{
getter and setter code should include the full method implementation.
Start new lines with \N
Indent code using a TAB char for each block. Tabs are expanded where requried.

An additional setter method can be defined for example like this:
//MM#:setter=begin\N	F<!PropertyName!>[<!PropIndexCallParams!>] := <!WriteParam!>;\Nend;
}

{
In the getter, setter constructor and destructor code and the
template implementation use any of these indexer context macro names:
ClassName
PropertyName
PropertyType
GetterName
SetterName
WriteParam
PropIndexCallParams
PropIndexType
}

{
additional macros that are used inside the template code can be defined
as with normal code templates
}



unit Unit1;

interface

type
  TCodeTemplate = class
  private
    F<!PropertyName!>: TList;
    function GetCount: Integer;
  public
    property Count: Integer read GetCount;
  end;

implementation

function TCodeTemplate.GetCount: Integer;
begin
  Result := F<!PropertyName!>.Count;
end;

end.
 
