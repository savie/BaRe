package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class nr6 {
    public final /* synthetic */ int a;
    public final byte[] b;
    public final byte[] c;

    public /* synthetic */ nr6(int i, byte[] bArr, byte[] bArr2) {
        this.a = i;
        this.b = bArr;
        this.c = bArr2;
    }

    public void a(zu6 zu6Var) {
        byte[] bArr = this.b;
        zu6Var.i(bArr, bArr.length);
        byte[] bArr2 = this.c;
        zu6Var.i(bArr2, bArr2.length);
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return "SMB2FileId{persistentHandle=" + l73.y(this.b) + '}';
            default:
                return super.toString();
        }
    }
}
