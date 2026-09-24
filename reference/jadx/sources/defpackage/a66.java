package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a66 implements p77 {
    public final String a;
    public final y56 b;

    public a66(String str, y56 y56Var) {
        y56Var.getClass();
        this.a = str;
        this.b = y56Var;
    }

    @Override // defpackage.p77
    public final String a() {
        return this.a;
    }

    @Override // defpackage.p77
    public final boolean c() {
        return false;
    }

    @Override // defpackage.p77
    public final int d(String str) {
        str.getClass();
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // defpackage.p77
    public final zh8 e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a66)) {
            return false;
        }
        a66 a66Var = (a66) obj;
        return this.a.equals(a66Var.a) && pe4.d(this.b, a66Var.b);
    }

    @Override // defpackage.p77
    public final int f() {
        return 0;
    }

    @Override // defpackage.p77
    public final String g(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // defpackage.p77
    public final List getAnnotations() {
        return ov2.a;
    }

    @Override // defpackage.p77
    public final List h(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    public final int hashCode() {
        return (this.b.hashCode() * 31) + this.a.hashCode();
    }

    @Override // defpackage.p77
    public final p77 i(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // defpackage.p77
    public final boolean isInline() {
        return false;
    }

    @Override // defpackage.p77
    public final boolean j(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    public final String toString() {
        return "PrimitiveDescriptor(" + this.a + ')';
    }
}
