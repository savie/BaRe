package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ru3 {
    public final /* synthetic */ int a;
    public int b;
    public int c;
    public int d;
    public Object e;

    public /* synthetic */ ru3(int i) {
        this.a = i;
    }

    public void a(bw4 bw4Var) {
        bw4Var.c = null;
        bw4Var.a = null;
        bw4Var.b = null;
        bw4Var.p = 1;
        int i = this.b;
        if (i > 0) {
            int i2 = this.d;
            if ((i2 & 1) == 0) {
                this.d = i2 + 1;
                this.b = i - 1;
                this.c++;
            }
        }
        bw4Var.a = (bw4) this.e;
        this.e = bw4Var;
        int i3 = this.d;
        int i4 = i3 + 1;
        this.d = i4;
        int i5 = this.b;
        if (i5 > 0 && (i4 & 1) == 0) {
            this.d = i3 + 2;
            this.b = i5 - 1;
            this.c++;
        }
        int i6 = 4;
        while (true) {
            int i7 = i6 - 1;
            if ((this.d & i7) != i7) {
                return;
            }
            int i8 = this.c;
            if (i8 == 0) {
                bw4 bw4Var2 = (bw4) this.e;
                bw4 bw4Var3 = bw4Var2.a;
                bw4 bw4Var4 = bw4Var3.a;
                bw4Var3.a = bw4Var4.a;
                this.e = bw4Var3;
                bw4Var3.b = bw4Var4;
                bw4Var3.c = bw4Var2;
                bw4Var3.p = bw4Var2.p + 1;
                bw4Var4.a = bw4Var3;
                bw4Var2.a = bw4Var3;
            } else if (i8 == 1) {
                bw4 bw4Var5 = (bw4) this.e;
                bw4 bw4Var6 = bw4Var5.a;
                this.e = bw4Var6;
                bw4Var6.c = bw4Var5;
                bw4Var6.p = bw4Var5.p + 1;
                bw4Var5.a = bw4Var6;
                this.c = 0;
            } else if (i8 == 2) {
                this.c = 0;
            }
            i6 *= 2;
        }
    }

    public void b(int i, int i2) {
        if (i < 0) {
            c6.f("Layout positions must be non-negative");
            return;
        }
        if (i2 < 0) {
            c6.f("Pixel distance must be non-negative");
            return;
        }
        int i3 = this.d;
        int i4 = i3 * 2;
        int[] iArr = (int[]) this.e;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.e = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i4 >= iArr.length) {
            int[] iArr3 = new int[i3 * 4];
            this.e = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = (int[]) this.e;
        iArr4[i4] = i;
        iArr4[i4 + 1] = i2;
        this.d++;
    }

    public void c(RecyclerView recyclerView, boolean z) {
        this.d = 0;
        int[] iArr = (int[]) this.e;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        a aVar = recyclerView.y;
        if (recyclerView.x == null || aVar == null || !aVar.p) {
            return;
        }
        if (z) {
            if (!recyclerView.e.g()) {
                aVar.t(recyclerView.x.b(), this);
            }
        } else if (!recyclerView.N()) {
            aVar.s(this.b, this.c, recyclerView.x0, this);
        }
        int i = this.d;
        if (i > aVar.q) {
            aVar.q = i;
            aVar.r = z;
            recyclerView.c.n();
        }
    }

    public String toString() {
        switch (this.a) {
            case 2:
                StringBuilder sb = new StringBuilder("NegotiatedProtocol{dialect=");
                sb.append((us6) this.e);
                sb.append(", maxTransactSize=");
                sb.append(this.b);
                sb.append(", maxReadSize=");
                sb.append(this.c);
                sb.append(", maxWriteSize=");
                return eq3.m(sb, this.d, '}');
            default:
                return super.toString();
        }
    }
}
