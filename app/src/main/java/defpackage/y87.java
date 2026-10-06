package defpackage;

import android.util.Log;
import com.google.firebase.FirebaseApp;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y87 extends ws7 implements qt3 {
    public yc4 a;
    public a97 b;
    public x87 c;
    public FirebaseApp d;
    public u87 e;
    public l97 f;
    public int k;
    public final /* synthetic */ a97 n;
    public final /* synthetic */ u87 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y87(a97 a97Var, u87 u87Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.n = a97Var;
        this.p = u87Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new y87(this.n, this.p, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((y87) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007c  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:29:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:36:0x00dd  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object objD;
        yc4 yc4Var;
        x87 x87Var;
        FirebaseApp firebaseApp;
        l97 l97Var;
        u87 u87Var;
        Object objB;
        u87 u87Var2;
        oy1 oy1Var;
        na2 na2Var;
        na2 na2Var2;
        na2 na2Var3;
        na2 na2Var4;
        oy1 oy1Var2;
        int i = this.k;
        a97 a97Var = this.n;
        yx1 yx1Var = yx1.a;
        if (i == 0) {
            lg7.H(obj);
            this.k = 1;
            objA = a97.a(a97Var, this);
            if (objA != yx1Var) {
            }
            return yx1Var;
        }
        if (i == 1) {
            lg7.H(obj);
            objA = obj;
        } else {
            if (i == 2) {
                lg7.H(obj);
                objD = obj;
                yc4Var = (yc4) objD;
                x87Var = x87.a;
                firebaseApp = a97Var.a;
                l97Var = a97Var.c;
                ch3 ch3Var = ch3.a;
                this.a = yc4Var;
                this.b = a97Var;
                this.c = x87Var;
                this.d = firebaseApp;
                u87Var = this.p;
                this.e = u87Var;
                this.f = l97Var;
                this.k = 3;
                objB = ch3Var.b(this);
                if (objB != yx1Var) {
                    u87Var2 = u87Var;
                }
                return yx1Var;
            }
            if (i != 3) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            l97 l97Var2 = this.f;
            u87Var2 = this.e;
            firebaseApp = this.d;
            x87Var = this.c;
            a97Var = this.b;
            yc4 yc4Var2 = this.a;
            lg7.H(obj);
            l97Var = l97Var2;
            yc4Var = yc4Var2;
            objB = obj;
        }
        Map map = (Map) objB;
        String str = yc4Var.a;
        String str2 = yc4Var.b;
        x87Var.getClass();
        firebaseApp.getClass();
        u87Var2.getClass();
        l97Var.getClass();
        map.getClass();
        str2.getClass();
        String str3 = u87Var2.a;
        String str4 = u87Var2.b;
        int i2 = u87Var2.c;
        long j = u87Var2.d;
        oy1Var = (oy1) map.get(h97.b);
        na2Var = na2.COLLECTION_DISABLED;
        na2Var2 = na2.COLLECTION_ENABLED;
        na2Var3 = na2.COLLECTION_SDK_NOT_INSTALLED;
        if (oy1Var == null) {
            na2Var4 = na2Var3;
        } else if (oy1Var.a.b()) {
            na2Var4 = na2Var2;
        } else {
            na2Var4 = na2Var;
        }
        oy1Var2 = (oy1) map.get(h97.a);
        if (oy1Var2 == null) {
            na2Var = na2Var3;
        } else if (oy1Var2.a.b()) {
            na2Var = na2Var2;
        }
        w87 w87Var = new w87(new c97(str3, str4, i2, j, new oa2(na2Var4, na2Var, l97Var.a()), str, str2), x87.a(firebaseApp));
        int i3 = a97.g;
        a97Var.getClass();
        try {
            a97Var.d.a(w87Var);
            Log.d("FirebaseSessions", "Successfully logged Session Start event.");
        } catch (RuntimeException e) {
            Log.e("FirebaseSessions", "Error logging Session Start event to DataTransport: ", e);
        }
        return be8.a;
        if (((Boolean) objA).booleanValue()) {
            qg3 qg3Var = a97Var.b;
            this.k = 2;
            objD = yc4.c.d(qg3Var, this);
            if (objD != yx1Var) {
                yc4Var = (yc4) objD;
                x87Var = x87.a;
                firebaseApp = a97Var.a;
                l97Var = a97Var.c;
                ch3 ch3Var2 = ch3.a;
                this.a = yc4Var;
                this.b = a97Var;
                this.c = x87Var;
                this.d = firebaseApp;
                u87Var = this.p;
                this.e = u87Var;
                this.f = l97Var;
                this.k = 3;
                objB = ch3Var2.b(this);
                if (objB != yx1Var) {
                    u87Var2 = u87Var;
                    Map map2 = (Map) objB;
                    String str5 = yc4Var.a;
                    String str6 = yc4Var.b;
                    x87Var.getClass();
                    firebaseApp.getClass();
                    u87Var2.getClass();
                    l97Var.getClass();
                    map2.getClass();
                    str6.getClass();
                    String str7 = u87Var2.a;
                    String str8 = u87Var2.b;
                    int i4 = u87Var2.c;
                    long j2 = u87Var2.d;
                    oy1Var = (oy1) map2.get(h97.b);
                    na2Var = na2.COLLECTION_DISABLED;
                    na2Var2 = na2.COLLECTION_ENABLED;
                    na2Var3 = na2.COLLECTION_SDK_NOT_INSTALLED;
                    if (oy1Var == null) {
                        na2Var4 = na2Var3;
                    } else if (oy1Var.a.b()) {
                        na2Var4 = na2Var2;
                    } else {
                        na2Var4 = na2Var;
                    }
                    oy1Var2 = (oy1) map2.get(h97.a);
                    if (oy1Var2 == null) {
                        na2Var = na2Var3;
                    } else if (oy1Var2.a.b()) {
                        na2Var = na2Var2;
                    }
                    w87 w87Var2 = new w87(new c97(str7, str8, i4, j2, new oa2(na2Var4, na2Var, l97Var.a()), str5, str6), x87.a(firebaseApp));
                    int i5 = a97.g;
                    a97Var.getClass();
                    a97Var.d.a(w87Var2);
                    Log.d("FirebaseSessions", "Successfully logged Session Start event.");
                }
            }
            return yx1Var;
        }
        return be8.a;
    }
}
