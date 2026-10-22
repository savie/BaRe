package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class m61 implements Comparable {
    public static final m61 b = new m61("[MIN_NAME]");
    public static final m61 c = new m61("[MAX_KEY]");
    public static final m61 d = new m61(".priority");
    public final String a;

    public m61(String str) {
        this.a = str;
    }

    public static m61 b(String str) {
        Integer numH = zm5.H(str);
        if (numH != null) {
            return new l61(str, numH.intValue());
        }
        if (str.equals(".priority")) {
            return d;
        }
        zm5.s(!str.contains("/"));
        return new m61(str);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(m61 m61Var) {
        int i;
        if (this == m61Var) {
            return 0;
        }
        String str = this.a;
        if (!str.equals("[MIN_NAME]")) {
            String str2 = m61Var.a;
            if (!str2.equals("[MAX_KEY]")) {
                if (!str2.equals("[MIN_NAME]") && !str.equals("[MAX_KEY]")) {
                    if (this instanceof l61) {
                        if (m61Var instanceof l61) {
                            int i2 = ((l61) m61Var).e;
                            int i3 = ((l61) this).e;
                            if (i3 < i2) {
                                i = -1;
                            } else {
                                i = i3 == i2 ? 0 : 1;
                            }
                            if (i != 0) {
                                return i;
                            }
                            int length = str.length();
                            int length2 = str2.length();
                            if (length < length2) {
                                return -1;
                            }
                            return length == length2 ? 0 : 1;
                        }
                    } else if (!(m61Var instanceof l61)) {
                        return str.compareTo(str2);
                    }
                }
                return 1;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof m61)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return this.a.equals(((m61) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return dj7.n(new StringBuilder("ChildKey(\""), this.a, "\")");
    }
}
