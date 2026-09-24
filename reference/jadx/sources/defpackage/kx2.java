package defpackage;

import java.io.Serializable;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kx2 extends z3 implements jx2, RandomAccess, Serializable {
    public final Enum[] a;

    public kx2(Enum[] enumArr) {
        enumArr.getClass();
        this.a = enumArr;
    }

    @Override // defpackage.l3, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r3 = (Enum) obj;
        return ((Enum) x50.q0(r3.ordinal(), this.a)) == r3;
    }

    @Override // defpackage.l3
    public final int d() {
        return this.a.length;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Enum[] enumArr = this.a;
        int length = enumArr.length;
        if (i >= 0 && i < length) {
            return enumArr[i];
        }
        a6.d(dj7.i("index: ", i, length, ", size: "));
        return null;
    }

    @Override // defpackage.z3, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r3 = (Enum) obj;
        int iOrdinal = r3.ordinal();
        if (((Enum) x50.q0(iOrdinal, this.a)) == r3) {
            return iOrdinal;
        }
        return -1;
    }

    @Override // defpackage.z3, java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r3 = (Enum) obj;
        int iOrdinal = r3.ordinal();
        if (((Enum) x50.q0(iOrdinal, this.a)) == r3) {
            return iOrdinal;
        }
        return -1;
    }
}
