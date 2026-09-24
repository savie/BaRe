package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class sg9 {
    public static final sg9 c;
    public static final sg9 d;
    public static final sg9 e;
    public static final sg9 f;
    public static final sg9 g;
    public static final sg9 h;
    public final /* synthetic */ int a;
    public String b;

    static {
        int i = 0;
        c = new sg9("TINK", i);
        d = new sg9("CRUNCHY", i);
        e = new sg9("NO_PREFIX", i);
        int i2 = 1;
        f = new sg9("TINK", i2);
        g = new sg9("CRUNCHY", i2);
        h = new sg9("NO_PREFIX", i2);
    }

    public /* synthetic */ sg9(String str, int i) {
        this.a = i;
        this.b = str;
    }

    public static CharSequence b(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public String a(Iterable iterable) {
        Iterator it = iterable.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            if (it.hasNext()) {
                sb.append(b(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.b);
                    sb.append(b(it.next()));
                }
            }
            return sb.toString();
        } catch (IOException e2) {
            e6.e(e2);
            return null;
        }
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return this.b;
            case 1:
                return this.b;
            default:
                return super.toString();
        }
    }
}
