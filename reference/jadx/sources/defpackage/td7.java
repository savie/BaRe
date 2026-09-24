package defpackage;

import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class td7 extends wd7 {
    public final long e;

    public td7(kr7 kr7Var, String str) {
        long j;
        super(kr7Var, str);
        try {
            String[] strArr = {"blockdev --getsize64 " + kr7Var.a};
            int i = Shell.UNKNOWN;
            j = Long.parseLong(ShellUtils.fastCmd(k55.j(), strArr));
        } catch (NumberFormatException unused) {
            j = Long.MAX_VALUE;
        }
        this.e = j;
    }

    @Override // defpackage.wd7
    public final int a(byte[] bArr, int i, int i2, int i3, int i4) {
        if (i3 * i4 < this.e) {
            return super.a(bArr, i, i2, i3, i4);
        }
        this.c = true;
        return -1;
    }

    @Override // defpackage.wd7
    public final String b() {
        return "";
    }

    @Override // defpackage.wd7
    public final long g() {
        return this.e;
    }

    @Override // defpackage.wd7, java.io.DataOutput
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.d + ((long) i2) <= this.e) {
            super.write(bArr, i, i2);
        } else {
            y5.m("Cannot write pass block size");
        }
    }
}
