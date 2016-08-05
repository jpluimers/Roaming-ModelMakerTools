unit ReferenceCount;

//DEFINEMACRO:AddReference=Add reference procedure
//DEFINEMACRO:RemoveReference=Remove reference procedure
//DEFINEMACRO:FReferenceCnt=Reference count field
//DEFINEMACRO:SetReferenced=Reference change procedure
//DEFINEMACRO:Referenced=Funtion returning reference state

  TCodeTemplate = class (TObject)
  private
    <!FReferenceCnt!>: Integer;
  protected
    function <!Referenced!>: Boolean;
    procedure <!SetReferenced!>(IsReferenced: Boolean);
  public
    procedure <!AddReference!>;
    procedure <!RemoveReference!>;
  end;

{
************************************* TCodeTemplate **************************************
}
procedure TCodeTemplate.<!AddReference!>;
begin
  Inc(<!FReferenceCnt!>);
  if <!FReferenceCnt!> = 1 then <!SetReferenced!>(True);
end;

function TCodeTemplate.<!Referenced!>: Boolean;
begin
  Result := (<!FReferenceCnt!> <> 0);
end;

procedure TCodeTemplate.<!RemoveReference!>;
begin
  Dec(<!FReferenceCnt!>);
  if <!FReferenceCnt!> = 0 then <!SetReferenced!>(False);
end;

procedure TCodeTemplate.<!SetReferenced!>(IsReferenced: Boolean);
begin
  if not <!Referenced!> then Free;
end;


