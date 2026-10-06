package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oc2 extends ly8 {
    public final String f;

    public oc2(String str) {
        this.f = str;
        if (str.length() > 0) {
            for (int i = 0; i < str.length(); i++) {
                if (Character.isDigit(str.charAt(i))) {
                }
            }
            return;
        }
        c6.f("Failed requirement.");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof oc2) && this.f.equals(((oc2) obj).f);
    }

    public final int hashCode() {
        return this.f.hashCode();
    }

    public final String toString() {
        return eq3.k("Set(raw=", this.f, ")");
    }
}
