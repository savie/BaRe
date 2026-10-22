package defpackage;

import java.io.EOFException;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lv0 extends RequestBody {
    public final /* synthetic */ long b;
    public final /* synthetic */ d86 c;

    public lv0(long j, mv0 mv0Var, d86 d86Var) {
        this.b = j;
        this.c = d86Var;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.b;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return mv0.h;
    }

    @Override // okhttp3.RequestBody
    public final boolean c() {
        return true;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) throws IOException {
        long j = this.b;
        d86 d86Var = this.c;
        if (j >= 0) {
            byte[] bArr = new byte[65536];
            while (j > 0) {
                int i = d86Var.read(bArr, 0, (int) Math.min(65536L, j));
                if (i == -1) {
                    throw new EOFException("Unexpected EOF while streaming Box upload");
                }
                yw0Var.write(bArr, 0, i);
                j -= (long) i;
            }
            return;
        }
        byte[] bArr2 = new byte[65536];
        while (true) {
            int i2 = d86Var.read(bArr2);
            if (i2 == -1) {
                return;
            } else {
                yw0Var.write(bArr2, 0, i2);
            }
        }
    }
}
