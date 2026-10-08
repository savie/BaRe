package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.BufferedReader;
import java.io.IOException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.StringTokenizer;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qi8 extends pr1 {
    public static final Pattern e = Pattern.compile("(.*?);([0-9]{1,20})\\s{0,80}.{0,80}");

    @Override // defpackage.h23
    public final g23 b(String str) {
        if (!h(str)) {
            return null;
        }
        g23 g23Var = new g23();
        g23Var.c = str;
        String strG = g(1);
        String strG2 = g(2);
        String str2 = g(3) + TokenAuthenticationScheme.SCHEME_DELIMITER + g(4);
        String strG3 = g(5);
        String[] strArr = {g(9), g(10), g(11)};
        try {
            g23Var.e = this.d.d(str2);
        } catch (ParseException unused) {
        }
        StringTokenizer stringTokenizer = new StringTokenizer(strG3, ",");
        int iCountTokens = stringTokenizer.countTokens();
        if (iCountTokens == 1) {
            stringTokenizer.nextToken();
        } else if (iCountTokens == 2) {
            stringTokenizer.nextToken();
            stringTokenizer.nextToken();
        }
        if (strG.lastIndexOf(".DIR") != -1) {
            g23Var.a = 1;
        } else {
            g23Var.a = 0;
        }
        g23Var.d = strG;
        g23Var.b = Long.parseLong(strG2) * 512;
        for (int i = 0; i < 3; i++) {
            String str3 = strArr[i];
            g23Var.a(i, 0, str3.indexOf(82) >= 0);
            g23Var.a(i, 1, str3.indexOf(87) >= 0);
            g23Var.a(i, 2, str3.indexOf(69) >= 0);
        }
        return g23Var;
    }

    @Override // defpackage.h23
    public final void c(LinkedList linkedList) {
        Pattern pattern;
        HashMap map = new HashMap();
        ListIterator listIterator = linkedList.listIterator();
        while (true) {
            boolean zHasNext = listIterator.hasNext();
            pattern = e;
            if (!zHasNext) {
                break;
            }
            Matcher matcher = pattern.matcher(((String) listIterator.next()).trim());
            if (matcher.matches()) {
                MatchResult matchResult = matcher.toMatchResult();
                String strGroup = matchResult.group(1);
                Integer numValueOf = Integer.valueOf(matchResult.group(2));
                Integer num = (Integer) map.get(strGroup);
                if (num == null || numValueOf.intValue() >= num.intValue()) {
                    map.put(strGroup, numValueOf);
                } else {
                    listIterator.remove();
                }
            }
        }
        while (listIterator.hasPrevious()) {
            Matcher matcher2 = pattern.matcher(((String) listIterator.previous()).trim());
            if (matcher2.matches()) {
                MatchResult matchResult2 = matcher2.toMatchResult();
                String strGroup2 = matchResult2.group(1);
                int i = Integer.parseInt(matchResult2.group(2));
                Integer num2 = (Integer) map.get(strGroup2);
                if (num2 != null && i < num2.intValue()) {
                    listIterator.remove();
                }
            }
        }
    }

    @Override // defpackage.h23
    public final String d(BufferedReader bufferedReader) throws IOException {
        String line = bufferedReader.readLine();
        StringBuilder sb = new StringBuilder();
        while (line != null) {
            if (line.startsWith("Directory") || line.startsWith("Total")) {
                line = bufferedReader.readLine();
            } else {
                sb.append(line);
                if (line.trim().endsWith(")")) {
                    break;
                }
                line = bufferedReader.readLine();
            }
        }
        if (sb.length() == 0) {
            return null;
        }
        return sb.toString();
    }

    @Override // defpackage.pr1
    public final e23 f() {
        return new e23("VMS", "d-MMM-yyyy HH:mm:ss", null);
    }
}
