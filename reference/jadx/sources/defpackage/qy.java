package defpackage;

import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qy {
    public final oy a;
    public final oy b;

    public /* synthetic */ qy(oy oyVar, int i) {
        this((i & 1) != 0 ? null : oyVar, (oy) null);
    }

    public static qy b(qy qyVar, oy oyVar, oy oyVar2, int i) {
        if ((i & 1) != 0) {
            oyVar = qyVar.a;
        }
        if ((i & 2) != 0) {
            oyVar2 = qyVar.b;
        }
        return new qy(oyVar, oyVar2);
    }

    public final List a() {
        return el1.p1(el1.v1(new LinkedHashSet(x50.p0(new oy[]{this.a, this.b}))), 2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qy)) {
            return false;
        }
        qy qyVar = (qy) obj;
        return this.a == qyVar.a && this.b == qyVar.b;
    }

    public final int hashCode() {
        oy oyVar = this.a;
        int iHashCode = (oyVar == null ? 0 : oyVar.hashCode()) * 31;
        oy oyVar2 = this.b;
        return iHashCode + (oyVar2 != null ? oyVar2.hashCode() : 0);
    }

    public final String toString() {
        return "AppSwipeActionSelection(primary=" + this.a + ", secondary=" + this.b + ")";
    }

    public qy(oy oyVar, oy oyVar2) {
        this.a = oyVar;
        this.b = oyVar2;
    }
}
