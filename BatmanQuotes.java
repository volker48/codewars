import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class BatmanQuotes{
  
  public static String getQuote(String[] quotes, String hero){
    Pattern pattern = Pattern.compile("(\\d)");
    Matcher matcher = pattern.matcher(hero);
    matcher.find();
    int index = Integer.parseInt(matcher.group(1));
    String returnString = "";
    if (hero.startsWith("B")) {
      returnString += "Batman: ";
    } else if (hero.startsWith("R")) {
      returnString += "Robin: ";
    } else {
      returnString += "J:";
    }
    returnString += quotes[index];
    System.out.println("Fucking balls");
    return returnString;
  }

  public static void main(String[] args) {
        String[] quotes = { "Quote Hidden in example test",
                            "Holy haberdashery, Batman!",
                            "Quote Hidden in example test"
                           };
        System.out.println(BatmanQuotes.getQuote(quotes, "Rob1n"));

  }

}
