package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ea8 implements Cloneable {
    public z98 a = lk.c;

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ea8 clone() {
        try {
            return (ea8) super.clone();
        } catch (CloneNotSupportedException e) {
            y5.k(e);
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof ea8) {
            return this.a.equals(((ea8) obj).a);
        }
        return false;
    }
}
