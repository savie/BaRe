package defpackage;

import android.graphics.Bitmap;
import java.util.Set;
import org.swiftapps.swiftbackup.detail.DetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class aj2 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ DetailActivity b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aj2(DetailActivity detailActivity, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = detailActivity;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new aj2(this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((aj2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        be8 be8Var = be8.a;
        int i2 = 1;
        if (i != 0) {
            if (i == 1) {
                lg7.H(obj);
                return be8Var;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        lg7.H(obj);
        DetailActivity detailActivity = this.b;
        ji jiVarK = detailActivity.a0().k();
        Set set = j94.a;
        Bitmap bitmapA = j94.a(new sx3(jiVarK.getPackageName(), jiVarK.isInstalled()));
        if (bitmapA == null) {
            vr6.e$default(vr6.INSTANCE, detailActivity.r(), "Error getting app icon (null)", null, 4, null);
            return be8Var;
        }
        zn4 zn4Var = zn4.a;
        j32 j32Var = new j32(i2, detailActivity, jiVarK, bitmapA);
        this.a = 1;
        Object objG = zn4.g(j32Var, this);
        yx1 yx1Var = yx1.a;
        return objG == yx1Var ? yx1Var : be8Var;
    }
}
