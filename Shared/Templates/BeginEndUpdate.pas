unit BeginEndUpdate;

//DEFINEMACRO:BeginUpdate=Update incrementing method
//DEFINEMACRO:EndUpdate=Update decrementing method
//DEFINEMACRO:IsUpdating=Updating test test method
//DEFINEMACRO:SetUpdating=Change handling method
//DEFINEMACRO:FUpdateCnt=State field

interface

type
  TCodeTemplate = class (TObject)
  private
    <!FUpdateCnt!>: Integer;
  protected
    procedure <!SetUpdating!>(Updating: Boolean);
    function <!IsUpdating!>: Boolean;
  public
    procedure <!BeginUpdate!>;
    procedure <!EndUpdate!>;
  end;


implementation

{
************************************* TCodeTemplate **************************************
}
procedure TCodeTemplate.<!BeginUpdate!>;
begin
  Inc(<!FUpdateCnt!>);
  if <!FUpdateCnt!> = 1 then <!SetUpdating!>(True);
end;

function TCodeTemplate.<!IsUpdating!>: Boolean;
begin
  Result := <!FUpdateCnt!> > 0;
end;

procedure TCodeTemplate.<!SetUpdating!>(Updating: Boolean);
begin
end;

procedure TCodeTemplate.<!EndUpdate!>;
begin
  Dec(<!FUpdateCnt!>);
  if <!FUpdateCnt!> = 0 then <!SetUpdating!>(False);
end;


end.
