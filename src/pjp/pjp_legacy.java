import java.util.Enumeration;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public class pjp_legacy {
	public static void main (String[] args) {
		final List names = new ArrayList();
		if(args.length == 0){
			final Enumeration e = System.getProperties().propertyNames();
			while(e.hasMoreElements()) {
				names.add(e.nextElement().toString());
			}
			Collections.sort(names);
		} else {		
			for (int i = 0; i < args.length; i++) {
				names.add(args[i]);
			}
		}
		final Iterator iter = names.iterator();
		while (iter.hasNext()) {
			printProperty(iter.next().toString());
		}
	}
	
	private static void printProperty(final String name) {
		final String prop = System.getProperty(name);
		String output = name;
		if (prop != null) {
			output += "=" + prop;
		}
		System.out.println(output);
	}
}