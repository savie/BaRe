package defpackage;

import android.content.Context;
import java.io.IOException;
import java.io.OutputStream;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c20 extends ws7 implements qt3 {
    public final /* synthetic */ AppsBatchActivity a;
    public final /* synthetic */ tn2 b;
    public final /* synthetic */ q63 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c20(AppsBatchActivity appsBatchActivity, tn2 tn2Var, q63 q63Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = appsBatchActivity;
        this.b = tn2Var;
        this.c = q63Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new c20(this.a, this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws IOException {
        c20 c20Var = (c20) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        c20Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws IOException {
        lg7.H(obj);
        AppsBatchActivity appsBatchActivity = this.a;
        appsBatchActivity.a0().h(R.string.processing);
        tn2 tn2Var = this.b;
        tn2Var.getClass();
        OutputStream outputStreamOpenOutputStream = f13.d().getContentResolver().openOutputStream(tn2Var.e());
        if (outputStreamOpenOutputStream != null) {
            this.c.e(outputStreamOpenOutputStream, null);
            Context applicationContext = appsBatchActivity.getApplicationContext();
            applicationContext.getClass();
            String string = applicationContext.getString(R.string.done);
            string.getClass();
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(14, applicationContext, string));
            appsBatchActivity.finish();
        } else {
            Context applicationContext2 = appsBatchActivity.getApplicationContext();
            applicationContext2.getClass();
            String string2 = applicationContext2.getString(R.string.error);
            string2.getClass();
            zn4 zn4Var2 = zn4.a;
            dj7.y(applicationContext2, string2);
            vr6.e$default(vr6.INSTANCE, appsBatchActivity.r(), "Couldn't get output stream for writing apps list at " + tn2Var.e(), null, 4, null);
        }
        appsBatchActivity.a0().f();
        return be8.a;
    }
}
