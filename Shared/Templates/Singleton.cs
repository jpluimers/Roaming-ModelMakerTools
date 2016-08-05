//MMWIN:MEMBERSCOPY;Language=C#

public class Template: System.object
{

private static Template instance;

public static Template Instance {
	get {
		if (instance == null) instance = new Template();
		return instance;
	}
}

}
