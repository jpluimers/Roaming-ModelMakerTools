unit IUnknown;

  TCodeTemplate = class (TObject)
  public
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
  end;

{
************************************* TCodeTemplate **************************************
}
function TCodeTemplate.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if GetInterface(IID, Obj) then Result := S_OK else Result := E_NOINTERFACE;
end;

function TCodeTemplate._AddRef: Integer;
begin
  Result := -1;
  // non-refcounted memorymanagement
end;

function TCodeTemplate._Release: Integer;
begin
  Result := -1;
  // non-refcounted memorymanagement
end;


