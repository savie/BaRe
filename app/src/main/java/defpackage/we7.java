package defpackage;

import android.os.Build;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class we7 implements js8 {
    public final wq3 a;
    public final mt3 b;
    public final bt3 c;
    public final bt3 d;

    public we7() {
        int i = Build.VERSION.SDK_INT;
        q9 q9Var = new q9(12);
        ys4 ys4Var = ys4.a;
        xq4 xq4Var = new xq4(jd4.x(ys4Var, q9Var), 9);
        li liVar = new li(jd4.x(ys4Var, new d76(xq4Var, 0)), 3);
        c76 c76Var = c76.a;
        wq3 wq3Var = new wq3();
        wq3Var.a = i;
        wq3Var.b = xq4Var;
        wq3Var.c = liVar;
        wq3Var.d = c76Var;
        oh1 oh1Var = new oh1(1, new ls8(), ls8.class, "map", "map(Ljava/util/List;)Ljava/util/List;", 0, 8);
        el elVar = new el(19);
        zk zkVar = new zk(15);
        this.a = wq3Var;
        this.b = oh1Var;
        this.c = elVar;
        this.d = zkVar;
    }

    @Override // defpackage.js8
    public final is8 read() {
        Object objB;
        Object xv0Var;
        if (!((Boolean) this.c.invoke()).booleanValue()) {
            return new gs8(ds8.SHIZUKU_STOPPED, ks8.SHIZUKU_BINDER, null);
        }
        if (!((Boolean) this.d.invoke()).booleanValue()) {
            return new gs8(ds8.SHIZUKU_PERMISSION_DENIED, ks8.SHIZUKU_BINDER, null);
        }
        wq3 wq3Var = this.a;
        wq3Var.getClass();
        try {
            Object objC = wq3Var.c();
            if (objC == null) {
                objB = new xv0(ds8.RESULT_DECODE_FAILED, null);
            } else {
                try {
                    objB = new yv0((List) ((mt3) wq3Var.d).invoke(objC));
                } catch (Exception e) {
                    xv0Var = new xv0(ds8.RESULT_DECODE_FAILED, e);
                    objB = xv0Var;
                } catch (LinkageError e2) {
                    xv0Var = new xv0(ds8.RESULT_DECODE_FAILED, e2);
                    objB = xv0Var;
                }
            }
        } catch (Exception e3) {
            objB = wq3.b(e3);
        } catch (LinkageError e4) {
            objB = wq3.b(e4);
        }
        if (objB instanceof yv0) {
            try {
                return new hs8((List) this.b.invoke(((yv0) objB).a), ks8.SHIZUKU_BINDER);
            } catch (Exception e5) {
                return new gs8(ds8.MAPPING_FAILED, ks8.SHIZUKU_BINDER, e5);
            } catch (LinkageError e6) {
                return new gs8(ds8.MAPPING_FAILED, ks8.SHIZUKU_BINDER, e6);
            }
        }
        if (!(objB instanceof xv0)) {
            q.j();
            return null;
        }
        xv0 xv0Var2 = (xv0) objB;
        return new gs8(xv0Var2.a, ks8.SHIZUKU_BINDER, xv0Var2.b);
    }
}
