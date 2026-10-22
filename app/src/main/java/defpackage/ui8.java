package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ui8 {
    public static final Pattern a = Pattern.compile("[\\[\\]\\.#$]");
    public static final Pattern b = Pattern.compile("[\\[\\]\\.#\\$\\/\\u0000-\\u001F\\u007F]");

    public static void a(String str) {
        if (a.matcher(str).find()) {
            throw new xc2(eq3.k("Invalid Firebase Database path: ", str, ". Firebase Database paths must not contain '.', '#', '$', '[', or ']'"));
        }
    }

    public static void b(String str) {
        if (str.startsWith(".info")) {
            a(str.substring(5));
        } else if (str.startsWith("/.info")) {
            a(str.substring(6));
        } else {
            a(str);
        }
    }

    public static void c(Object obj) {
        if (!(obj instanceof Map)) {
            if (obj instanceof List) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    c(it.next());
                }
                return;
            } else {
                if ((obj instanceof Double) || (obj instanceof Float)) {
                    double dDoubleValue = ((Double) obj).doubleValue();
                    if (Double.isInfinite(dDoubleValue) || Double.isNaN(dDoubleValue)) {
                        throw new xc2("Invalid value: Value cannot be NaN, Inf or -Inf.");
                    }
                    return;
                }
                return;
            }
        }
        Map map = (Map) obj;
        if (map.containsKey(".sv")) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str == null || str.length() <= 0 || !(str.equals(".value") || str.equals(".priority") || (!str.startsWith(".") && !b.matcher(str).find()))) {
                throw new xc2(eq3.k("Invalid key: ", str, ". Keys must not contain '/', '.', '#', '$', '[', or ']'"));
            }
            c(entry.getValue());
        }
    }

    public static void d(gy5 gy5Var) {
        m61 m61VarK = gy5Var.k();
        if (m61VarK != null && m61VarK.a.startsWith(".")) {
            throw new xc2("Invalid write location: ".concat(gy5Var.toString()));
        }
    }
}
