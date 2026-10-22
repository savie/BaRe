package defpackage;

import android.util.Log;
import com.jcraft.jsch.SftpATTRS;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ka7 {
    public final a48 a;
    public final fb2 b;
    public final AtomicReference c;

    public ka7(ox1 ox1Var, a48 a48Var, fb2 fb2Var) {
        ox1Var.getClass();
        a48Var.getClass();
        fb2Var.getClass();
        this.a = a48Var;
        this.b = fb2Var;
        this.c = new AtomicReference();
        l73.v(l73.c(ox1Var), null, new du1(this, null, 1), 3);
    }

    public final m87 a() throws Throwable {
        AtomicReference atomicReference = this.c;
        if (atomicReference.get() == null) {
            Object objB = l73.B(lv2.a, new lb2(this, null, 2));
            while (!atomicReference.compareAndSet(null, objB) && atomicReference.get() == null) {
            }
        }
        Object obj = atomicReference.get();
        obj.getClass();
        return (m87) obj;
    }

    public final boolean b() {
        Long l = a().e;
        Integer num = a().d;
        if (l == null || num == null) {
            return true;
        }
        this.a.getClass();
        return a48.a().c - l.longValue() >= ((long) num.intValue());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(m87 m87Var, kv1 kv1Var) {
        ja7 ja7Var;
        if (kv1Var instanceof ja7) {
            ja7Var = (ja7) kv1Var;
            int i = ja7Var.c;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                ja7Var.c = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                ja7Var = new ja7(this, kv1Var);
            }
        } else {
            ja7Var = new ja7(this, kv1Var);
        }
        Object obj = ja7Var.a;
        int i2 = ja7Var.c;
        jv1 jv1Var = null;
        try {
            if (i2 == 0) {
                lg7.H(obj);
                fb2 fb2Var = this.b;
                wm wmVar = new wm(m87Var, jv1Var, 3);
                ja7Var.c = 1;
                Object objA = fb2Var.a(wmVar, ja7Var);
                yx1 yx1Var = yx1.a;
                if (objA == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
            }
        } catch (IOException e) {
            Log.w("FirebaseSessions", "Failed to update config values: " + e);
        }
        return be8.a;
    }
}
