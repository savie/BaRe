package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class au6 extends rt6 {
    public final nr6 e;
    public final int f;
    public final int g;
    public final int h;

    public au6(us6 us6Var, long j, long j2, nr6 nr6Var, int i, int i2, int i3) {
        super(41, us6Var, it6.SMB2_QUERY_INFO, j, j2);
        this.f = i;
        this.g = i2;
        this.h = i3;
        this.e = nr6Var;
    }

    @Override // defpackage.rt6
    public final void h(zu6 zu6Var) {
        long j;
        long j2;
        String str;
        zu6Var.k(this.c);
        int i = this.f;
        if (i == 1) {
            j = 1;
        } else if (i == 2) {
            j = 2;
        } else if (i == 3) {
            j = 3;
        } else {
            if (i != 4) {
                throw null;
            }
            j = 4;
        }
        zu6Var.f((byte) j);
        int iA = dj7.A(i);
        nr6 nr6Var = this.e;
        if (iA == 0) {
            int i2 = this.g;
            zu6Var.f((byte) xs1.d(i2));
            zu6Var.l(65536L);
            if (i2 == 15) {
                zu6Var.k(0);
                zu6Var.v();
                throw null;
            }
            zu6Var.k(0);
            zu6Var.v();
            zu6Var.l(0L);
            zu6Var.l(0L);
            zu6Var.l(0L);
            nr6Var.a(zu6Var);
            return;
        }
        if (iA != 1) {
            if (iA == 2) {
                zu6Var.f((byte) 0);
                zu6Var.l(65536L);
                zu6Var.k(0);
                zu6Var.v();
                zu6Var.l(0L);
                sz8.j0(null);
                throw null;
            }
            if (iA == 3) {
                zu6Var.f((byte) 0);
                zu6Var.l(65536L);
                zu6Var.k(0);
                zu6Var.v();
                throw null;
            }
            if (i == 1) {
                str = "SMB2_0_INFO_FILE";
            } else if (i == 2) {
                str = "SMB2_0_INFO_FILESYSTEM";
            } else if (i != 3) {
                str = i != 4 ? "null" : "SMB2_0_INFO_QUOTA";
            } else {
                str = "SMB2_0_INFO_SECURITY";
            }
            l0.e("Unknown SMB2QueryInfoType: ".concat(str));
            return;
        }
        switch (this.h) {
            case 1:
                j2 = 1;
                break;
            case 2:
                j2 = 2;
                break;
            case 3:
                j2 = 3;
                break;
            case 4:
                j2 = 4;
                break;
            case 5:
                j2 = 5;
                break;
            case 6:
                j2 = 6;
                break;
            case 7:
                j2 = 7;
                break;
            case 8:
                j2 = 8;
                break;
            case XmlPullParser.COMMENT /* 9 */:
                j2 = 9;
                break;
            case 10:
                j2 = 10;
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                j2 = 11;
                break;
            default:
                throw null;
        }
        zu6Var.f((byte) j2);
        zu6Var.l(65536L);
        zu6Var.k(0);
        zu6Var.v();
        zu6Var.l(0L);
        zu6Var.l(0L);
        zu6Var.l(0L);
        nr6Var.a(zu6Var);
    }
}
