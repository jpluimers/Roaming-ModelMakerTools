//MMWIN:MEMBERSCOPY;Language=C#

//MM#:type=indexer-implementation
//MM#:description=Simple ArrayList implementation with Count
//MM#:getter=return <!PropertyType!>(items[<!PropIndexCallParams!>]);
//MM#:ctor=items = new ArrayList();

{
getter and setter code should include the full method implementation.
Start new lines with \N
Indent code using a TAB char for each block. Tabs are expanded where requried.

An additional setter method can be defined for example like this:
//MM#:setter=items[<!PropIndexCallParams!>] = value;
}

{ 
In the getter, setter constructor and destructor code and the 
template implementation use any of these indexer context macro names:
ClassName
PropertyName
FieldName
PropertyType
GetterName
SetterName
PropWriteParam
PropIndexCallParams
PropIndexType
}

public class TCodeTemplate 
{
	public int Count 
	{
		get
		{
			return items.Count;
		}
	}
}