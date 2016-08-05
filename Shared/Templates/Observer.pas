unit Observers;

//DEFINEMACRO:TObserver=Observer class
//DEFINEMACRO:FObservers=Observer list

interface

type
TCodeTemplate = class(TObject)
  private
    <!FObservers!>: TList;
  protected
    procedure IterateObservers;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Register(Instance: <!TObserver!>);
    procedure Unregister(Instance: <!TObserver!>);
  end;


implementation

constructor TCodeTemplate.Create;
begin
  inherited Create; // TODO : check duplicate
  <!FObservers!> := TList.Create;
end;

destructor TCodeTemplate.Destroy;
begin
  <!FObservers!>.Free;
  <!FObservers!> := nil;
  inherited Destroy; // TODO : check duplicate
end;

procedure TCodeTemplate.IterateObservers;
var
  I: Integer;
  Obs: <!TObserver!>;
begin
  for I := 0 to <!FObservers!>.Count - 1 do
  begin
    Obs := <!FObservers!>[I];
    // TODO : if Obs.Enabled then Obs.SomeAction;
  end;
end;

procedure TCodeTemplate.Register(Instance: <!TObserver!>);
begin
  if <!FObservers!>.IndexOf(Instance) = -1 then
    <!FObservers!>.Add(Instance);
end;

procedure TCodeTemplate.Unregister(Instance: <!TObserver!>);
begin
  <!FObservers!>.Remove(Instance);
end;

end.
