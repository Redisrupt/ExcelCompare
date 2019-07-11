package com.ka.spreadsheet.diff;

import java.util.regex.Pattern;

public class PropertySetupColCellValueTransformer implements ICellValueTransformer {
  private static final String patternString = "(\\*)|\\(.*\\)";
  private static final Pattern pattern = Pattern.compile(patternString);
	  
  public String transform(final Object value) {
    if (!(value instanceof String)) {
      return value.toString();
    }
	
    return pattern.matcher(String.valueOf(value)).replaceAll("").trim();
  }
}
