package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l63 {
    public static final /* synthetic */ int c = 0;
    public final wh7 a = wh7.g();
    public boolean b;

    static {
        new l63(0);
    }

    public l63(int i) {
        a();
        a();
    }

    public static void b(jk1 jk1Var, gw8 gw8Var, int i, Object obj) {
        if (gw8Var == gw8.d) {
            jk1Var.B(i, 3);
            ((s4) obj).b(jk1Var);
            jk1Var.B(i, 4);
        }
        jk1Var.B(i, gw8Var.b);
        switch (gw8Var.ordinal()) {
            case 0:
                jk1Var.u(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                jk1Var.s(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                jk1Var.F(((Long) obj).longValue());
                break;
            case 3:
                jk1Var.F(((Long) obj).longValue());
                break;
            case 4:
                jk1Var.w(((Integer) obj).intValue());
                break;
            case 5:
                jk1Var.u(((Long) obj).longValue());
                break;
            case 6:
                jk1Var.s(((Integer) obj).intValue());
                break;
            case 7:
                jk1Var.m(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof gy0)) {
                    jk1Var.A((String) obj);
                } else {
                    jk1Var.q((gy0) obj);
                }
                break;
            case XmlPullParser.COMMENT /* 9 */:
                ((s4) obj).b(jk1Var);
                break;
            case 10:
                s4 s4Var = (s4) obj;
                jk1Var.D(((av3) s4Var).a(null));
                s4Var.b(jk1Var);
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                if (!(obj instanceof gy0)) {
                    byte[] bArr = (byte[]) obj;
                    int length = bArr.length;
                    jk1Var.D(length);
                    jk1Var.n(bArr, 0, length);
                } else {
                    jk1Var.q((gy0) obj);
                }
                break;
            case 12:
                jk1Var.D(((Integer) obj).intValue());
                break;
            case 13:
                jk1Var.w(((Integer) obj).intValue());
                break;
            case 14:
                jk1Var.s(((Integer) obj).intValue());
                break;
            case 15:
                jk1Var.u(((Long) obj).longValue());
                break;
            case Argon2.V10 /* 16 */:
                int iIntValue = ((Integer) obj).intValue();
                jk1Var.D((iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                jk1Var.F((jLongValue >> 63) ^ (jLongValue << 1));
                break;
        }
    }

    public final void a() {
        if (this.b) {
            return;
        }
        wh7 wh7Var = this.a;
        int size = wh7Var.a.size();
        for (int i = 0; i < size; i++) {
            Map.Entry entryD = wh7Var.d(i);
            if (entryD.getValue() instanceof av3) {
                av3 av3Var = (av3) entryD.getValue();
                av3Var.getClass();
                s96 s96Var = s96.c;
                s96Var.getClass();
                s96Var.a(av3Var.getClass()).c(av3Var);
                av3Var.h();
            }
        }
        if (!wh7Var.c) {
            if (wh7Var.a.size() > 0) {
                wh7Var.d(0).getKey().getClass();
                e6.d();
                return;
            } else {
                Iterator it = wh7Var.e().iterator();
                if (it.hasNext()) {
                    ((Map.Entry) it.next()).getKey().getClass();
                    e6.d();
                    return;
                }
            }
        }
        if (!wh7Var.c) {
            wh7Var.b = wh7Var.b.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(wh7Var.b);
            wh7Var.e = wh7Var.e.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(wh7Var.e);
            wh7Var.c = true;
        }
        this.b = true;
    }

    public final Object clone() {
        l63 l63Var = new l63();
        wh7 wh7Var = this.a;
        if (wh7Var.a.size() > 0) {
            Map.Entry entryD = wh7Var.d(0);
            if (entryD.getKey() != null) {
                e6.d();
                return null;
            }
            entryD.getValue();
            throw null;
        }
        Iterator it = wh7Var.e().iterator();
        if (!it.hasNext()) {
            return l63Var;
        }
        Map.Entry entry = (Map.Entry) it.next();
        if (entry.getKey() != null) {
            e6.d();
            return null;
        }
        entry.getValue();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l63) {
            return this.a.equals(((l63) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public l63() {
    }
}
