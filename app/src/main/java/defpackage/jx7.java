package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Tagging", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class jx7 {
    private static final int b = 128;
    private static final int c = 256;
    private static final int d = 10;
    private static final int e = 50;

    @gt2(entry = "Tag", inline = true, required = false)
    @fy5("TagSet")
    private List<gx7> a;

    private jx7(Map<String, String> map, boolean z) {
        if (map == null) {
            return;
        }
        int i = z ? 10 : e;
        if (map.size() > i) {
            StringBuilder sb = new StringBuilder("too many ");
            sb.append(z ? "object" : "bucket");
            sb.append(" tags; allowed = ");
            sb.append(i);
            sb.append(", found = ");
            sb.append(map.size());
            throw new IllegalArgumentException(sb.toString());
        }
        this.a = new ArrayList();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key.length() == 0 || key.length() > 128 || key.contains("&")) {
                c6.f(eq3.k("invalid tag key '", key, "'"));
                throw null;
            }
            String value = entry.getValue();
            if (value.length() > c || value.contains("&")) {
                c6.f(eq3.k("invalid tag value '", value, "'"));
                throw null;
            }
            this.a.add(new gx7(key, value));
        }
    }

    public static jx7 b(Map<String, String> map) {
        return new jx7(map, false);
    }

    public static jx7 c(Map<String, String> map) {
        return new jx7(map, true);
    }

    public Map<String, String> a() {
        HashMap map = new HashMap();
        List<gx7> list = this.a;
        if (list != null) {
            for (gx7 gx7Var : list) {
                map.put(gx7Var.a(), gx7Var.b());
            }
        }
        return map;
    }

    public String toString() {
        return eq3.k("Tags{", ki8.e(a()), "}");
    }

    public jx7() {
    }
}
