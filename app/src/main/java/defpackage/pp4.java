package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class pp4 {
    public final int a;

    public pp4(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof pp4) && ((pp4) obj).a == this.a;
    }

    public final int hashCode() {
        return this.a;
    }
}
