package defpackage;

import android.app.WallpaperManager;
import android.util.Log;
import android.util.SparseIntArray;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nj extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ nj(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                return new nj((rj) obj2, jv1Var, 0);
            case 1:
                return new nj((eb2) obj2, jv1Var, 1);
            default:
                return new nj((pp8) obj2, jv1Var, 2);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((nj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 1:
                ((nj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((nj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0060  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        boolean z = true;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                lg7.H(obj);
                boolean z2 = hp0.a;
                rj rjVar = (rj) obj2;
                ji jiVar = rjVar.f;
                String packageName = jiVar.getPackageName();
                packageName.getClass();
                boolean zB = hp0.b(packageName);
                boolean z3 = !zB;
                hp0.a(jiVar.getPackageName(), zB);
                String packageName2 = jiVar.getPackageName();
                packageName2.getClass();
                if (z3 != (!hp0.b(packageName2))) {
                    Const.T();
                    rjVar.I();
                }
                break;
            case 1:
                lg7.H(obj);
                ua1 ua1Var = ua1.g;
                ua1Var.getClass();
                ji jiVarQ = ua1.q((eb2) obj2);
                if (jiVarQ != null && ua1Var.b(jiVarQ.getItemId()) == null) {
                    Log.d(ua1Var.a, "onChildAdded = " + jiVarQ.asString());
                    ua1Var.k(jiVarQ);
                }
                break;
            default:
                lg7.H(obj);
                pp8 pp8Var = (pp8) obj2;
                SparseIntArray sparseIntArray = pp8Var.p;
                boolean z4 = pp8Var.q;
                gv7 gv7Var = pp8Var.n;
                boolean z5 = false;
                if (z4) {
                    int wallpaperId = ((WallpaperManager) gv7Var.getValue()).getWallpaperId(1);
                    if (sparseIntArray.get(1) != wallpaperId) {
                        sparseIntArray.put(1, wallpaperId);
                        z5 = true;
                    }
                    int wallpaperId2 = ((WallpaperManager) gv7Var.getValue()).getWallpaperId(2);
                    if (sparseIntArray.get(2) != wallpaperId2) {
                        sparseIntArray.put(2, wallpaperId2);
                    }
                    if (z) {
                        zn4 zn4Var = zn4.a;
                        zn4.b(null, new lb2(pp8Var, null, 3));
                    }
                    pp8Var.k();
                } else {
                    sparseIntArray.put(1, ((WallpaperManager) gv7Var.getValue()).getWallpaperId(1));
                    sparseIntArray.put(2, ((WallpaperManager) gv7Var.getValue()).getWallpaperId(2));
                    pp8Var.q = true;
                }
                z = z5;
                if (z) {
                    zn4 zn4Var2 = zn4.a;
                    zn4.b(null, new lb2(pp8Var, null, 3));
                }
                pp8Var.k();
                break;
        }
        return be8Var;
    }
}
