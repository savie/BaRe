package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f70 implements r96 {
    public final int a;

    public f70(int i) {
        this.a = i;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return r96.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r96)) {
            return false;
        }
        r96 r96Var = (r96) obj;
        return this.a == r96Var.tag() && q96.a.equals(r96Var.intEncoding());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.a ^ 14552422) + (q96.a.hashCode() ^ 2041407134);
    }

    @Override // defpackage.r96
    public final q96 intEncoding() {
        return q96.a;
    }

    @Override // defpackage.r96
    public final int tag() {
        return this.a;
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.a + "intEncoding=" + q96.a + ')';
    }
}
