//MMWIN:MEMBERSCOPY;Language=C#
//MMWIN:DEFINEMACRO:ItemClass=Indexer type name
//MMWIN:DEFINEMACRO:ItemCount=Count Property name
//MMWIN:DEFINEMACRO:items=Array field name


public class Template
{
private ArrayList <!items!> = new ArrayList();
public int <!ItemCount!> {
	get { return <!items!>.Count; }
}
public <!ItemClass!> this[int Index] {
	get { return <!items!>[Index] as <!ItemClass!>; }
}
}
