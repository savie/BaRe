package defpackage;

import android.os.ParcelFileDescriptor;
import java.io.FilterOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j07 extends FilterOutputStream {
    public final i07 a;
    public final l07 b;
    public final String c;
    public final Long d;
    public final h07 e;
    public final ny6 f;
    public long k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j07(ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream, i07 i07Var, l07 l07Var, String str, Long l, h07 h07Var, ny6 ny6Var) {
        super(autoCloseOutputStream);
        i07Var.getClass();
        l07Var.getClass();
        ny6Var.getClass();
        this.a = i07Var;
        this.b = l07Var;
        this.c = str;
        this.d = l;
        this.e = h07Var;
        this.f = ny6Var;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        bArr.getClass();
        x13.S(this.f, this.a + "/" + this.b);
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        if (i2 > 0) {
            long j = this.k + ((long) i2);
            this.k = j;
            x13.k(this.e, this.a, this.b, m07.Progress, this.c, j, this.d);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        x13.S(this.f, this.a + "/" + this.b);
        ((FilterOutputStream) this).out.write(i);
        long j = this.k + 1;
        this.k = j;
        x13.k(this.e, this.a, this.b, m07.Progress, this.c, j, this.d);
    }
}
