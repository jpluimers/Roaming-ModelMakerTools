unit Singleton;

interface

type
  TCodeTemplate = class (TObject)
  protected
    constructor CreateInstance;
    class function AccessInstance(Request: Integer): <!ClassName!>;
  public
    constructor Create;
    destructor Destroy; override;
    class function Instance: <!ClassName!>;
    class procedure ReleaseInstance;
  end;


implementation

{
******************************** TCodeTemplate *********************************
}
constructor TCodeTemplate.Create;
begin
  inherited Create;
  raise Exception.CreateFmt('Access class %s through Instance only', [ClassName]);
end;

constructor TCodeTemplate.CreateInstance;
begin
  inherited Create;
end;

destructor TCodeTemplate.Destroy;
begin
  if AccessInstance(0) = Self then AccessInstance(2);
  inherited Destroy;
end;

class function TCodeTemplate.AccessInstance(Request: Integer): <!ClassName!>;
{$J+}
  const FInstance: <!ClassName!> = nil;
{$J-}
begin
  case Request of
    0 : ;
    1 : if not Assigned(FInstance) then FInstance := CreateInstance;
    2 : FInstance := nil;
  else
    raise Exception.CreateFmt('Illegal request %d in AccessInstance', [Request]);
  end;
  Result := FInstance;
end;

class function TCodeTemplate.Instance: <!ClassName!>;
begin
  Result := AccessInstance(1);
end;

class procedure TCodeTemplate.ReleaseInstance;
begin
  AccessInstance(0).Free;
end;


end.
