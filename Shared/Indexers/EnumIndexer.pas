//MM#:type=indexer-implementation
//MM#:description=Enumerate array implementation
//MM#:getter=begin\N	Result := F<!PropertyName!>[<!PropIndexCallParams!>];\Nend;

unit Unit1;

interface

type
  TCodeTemplate = class
  private
    F<!PropertyName!>: array[<!PropIndexType!>] of <!PropertyType!>;
  end;

implementation

end.
                                    
