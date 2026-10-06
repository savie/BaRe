package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k75 {
    public static final Set g = Collections.unmodifiableSet(new HashSet(Arrays.asList("a", "abbr", "acronym", "b", "bdo", "big", "br", "button", "cite", "code", "dfn", "em", "i", "img", "input", "kbd", "label", "map", "object", JWKParameterNames.RSA_SECOND_PRIME_FACTOR, "samp", "script", "select", "small", "span", "strong", "sub", "sup", "textarea", "time", "tt", "var")));
    public static final Set h = Collections.unmodifiableSet(new HashSet(Arrays.asList("area", "base", "br", "col", "embed", "hr", "img", "input", "keygen", "link", "meta", "param", "source", "track", "wbr")));
    public static final Set i = Collections.unmodifiableSet(new HashSet(Arrays.asList("address", "article", "aside", "blockquote", "canvas", "dd", "div", "dl", "dt", "fieldset", "figcaption", "figure", "footer", "form", "h1", "h2", "h3", "h4", "h5", "h6", "header", "hgroup", "hr", "li", "main", "nav", "noscript", "ol", "output", JWKParameterNames.RSA_FIRST_PRIME_FACTOR, "pre", "section", "table", "tfoot", "ul", "video")));
    public final ge a;
    public final us2 b;
    public final ArrayList c = new ArrayList(0);
    public o64 d = new o64("", 0, Collections.EMPTY_MAP, null);
    public boolean e;
    public boolean f;

    public k75(ge geVar, us2 us2Var) {
        this.a = geVar;
        this.b = us2Var;
    }

    public static Map a(b58 b58Var) {
        b80 b80Var = b58Var.k;
        int i2 = b80Var.a;
        if (i2 <= 0) {
            return Collections.EMPTY_MAP;
        }
        HashMap map = new HashMap(i2);
        int i3 = 0;
        while (true) {
            if (!(i3 < b80Var.a)) {
                return Collections.unmodifiableMap(map);
            }
            String str = b80Var.c[i3];
            String str2 = b80Var.b[i3];
            if (str == null) {
                str = "";
            }
            v70 v70Var = new v70();
            if (str2 == null) {
                c6.f("Object must not be null");
                return null;
            }
            v70Var.a = str2.trim();
            if (str2.length() == 0) {
                c6.f("String must not be empty");
                return null;
            }
            v70Var.b = str;
            v70Var.c = b80Var;
            i3++;
            map.put(v70Var.a.toLowerCase(Locale.US), v70Var.b);
        }
    }
}
