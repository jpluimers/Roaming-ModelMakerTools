//MMWIN:MEMBERSCOPY;Language=C#

public class Template
{
private int updateCount;

public void BeginUpdate() {
	updateCount++;
}
public void EndUpdate() {
	updateCount--;
	if (updateCount == 0) {
		// TODO: insert end update code here
	}
}
protected bool IsUpdating {
	get { return updateCount > 0; }
}
}
