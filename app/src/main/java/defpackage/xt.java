package defpackage;

import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xt implements bt3 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ long b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xt(c62 c62Var, long j, uq8 uq8Var) {
        this.c = c62Var;
        this.b = j;
        this.d = uq8Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws IOException, b62 {
        int i = this.a;
        Object obj = this.d;
        long j = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                String strG0 = nq7.G0(100, (String) obj);
                StringBuilder sb = new StringBuilder("Size=");
                sb.append(j);
                sb.append(" b (");
                sb.append((String) obj2);
                return dj7.n(sb, "), Content = ", strG0);
            default:
                uq8 uq8Var = (uq8) obj;
                BufferedInputStream bufferedInputStreamA = ((c62) obj2).a();
                while (j > 0) {
                    long jSkip = bufferedInputStreamA.skip(j);
                    if (jSkip > 0) {
                        j -= jSkip;
                    } else {
                        if (bufferedInputStreamA.read() == -1) {
                            throw new EOFException("Unexpected EOF while seeking WebDAV upload input");
                        }
                        j--;
                    }
                }
                vu0 vu0VarB = wu0.b();
                vu0VarB.k = new y4(bufferedInputStreamA);
                vu0VarB.K(uq8Var.b);
                return new wu0(vu0VarB);
        }
    }

    public /* synthetic */ xt(String str, String str2, long j) {
        this.b = j;
        this.c = str;
        this.d = str2;
    }
}
