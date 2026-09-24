package defpackage;

import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import org.swiftapps.swiftbackup.settings.SwiftBackupSettingsHelper$SettingsData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bt7 extends ws7 implements qt3 {
    public final /* synthetic */ tn2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bt7(tn2 tn2Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = tn2Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new bt7(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        bt7 bt7Var = (bt7) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        bt7Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        tn2 tn2Var = this.a;
        lg7.H(obj);
        try {
            vr6.i$default(vr6.INSTANCE, "SwiftBackupSettingsHelper", "Exporting settings to " + tn2Var.e(), null, 4, null);
            OutputStream outputStreamOpenOutputStream = f13.d().getContentResolver().openOutputStream(tn2Var.e());
            try {
                gv7 gv7Var = w14.a;
                n84.e(w14.d().i(new SwiftBackupSettingsHelper$SettingsData(null, null, null, 7, null)), outputStreamOpenOutputStream, StandardCharsets.UTF_8);
                rs9.c(outputStreamOpenOutputStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(outputStreamOpenOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "SwiftBackupSettingsHelper", "exportSettings", e, null, 8, null);
        }
        return be8.a;
    }
}
