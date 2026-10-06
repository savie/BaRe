package defpackage;

import android.content.Context;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SwiftBackupSettingsHelper$SettingsData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ct7 extends ws7 implements qt3 {
    public final /* synthetic */ tn2 a;
    public final /* synthetic */ SettingsActivity b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ct7(tn2 tn2Var, SettingsActivity settingsActivity, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = tn2Var;
        this.b = settingsActivity;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new ct7(this.a, this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        ct7 ct7Var = (ct7) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        ct7Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        m84 m84Var;
        tn2 tn2Var = this.a;
        SettingsActivity settingsActivity = this.b;
        lg7.H(obj);
        try {
            try {
                vr6.i$default(vr6.INSTANCE, "SwiftBackupSettingsHelper", "Importing settings from " + tn2Var.e(), null, 4, null);
                settingsActivity.G().h(R.string.restoring_settings);
                InputStream inputStreamOpenInputStream = f13.d().getContentResolver().openInputStream(tn2Var.e());
                try {
                    Charset charsetDefaultCharset = StandardCharsets.UTF_8;
                    int i = n84.a;
                    aq7 aq7Var = new aq7();
                    int i2 = g51.a;
                    if (charsetDefaultCharset == null) {
                        charsetDefaultCharset = Charset.defaultCharset();
                    }
                    InputStreamReader inputStreamReader = new InputStreamReader(inputStreamOpenInputStream, charsetDefaultCharset);
                    ThreadLocal threadLocal = m84.b;
                    Object[] objArr = (Object[]) threadLocal.get();
                    if (((Boolean) objArr[0]).booleanValue()) {
                        m84Var = new m84(new char[8192]);
                    } else {
                        objArr[0] = Boolean.TRUE;
                        m84Var = m84.c;
                    }
                    try {
                        char[] cArr = m84Var.a;
                        if (cArr == null) {
                            cArr = (char[]) ((Object[]) threadLocal.get())[1];
                        }
                        while (true) {
                            int i3 = inputStreamReader.read(cArr);
                            if (-1 == i3) {
                                break;
                            }
                            aq7Var.write(cArr, 0, i3);
                        }
                        m84Var.close();
                        String string = aq7Var.a.toString();
                        rs9.c(inputStreamOpenInputStream, null);
                        gv7 gv7Var = w14.a;
                        ((SwiftBackupSettingsHelper$SettingsData) w14.c().c(string, SwiftBackupSettingsHelper$SettingsData.class)).restore();
                        settingsActivity.G().f();
                        return be8.a;
                    } catch (Throwable th) {
                        if (m84Var == null) {
                            throw th;
                        }
                        try {
                            m84Var.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        rs9.c(inputStreamOpenInputStream, th3);
                        throw th4;
                    }
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "SwiftBackupSettingsHelper", "importSettings", e, null, 8, null);
                Context applicationContext = settingsActivity.getApplicationContext();
                applicationContext.getClass();
                String string2 = applicationContext.getString(R.string.error);
                string2.getClass();
                zn4 zn4Var = zn4.a;
                zn4.e(new cv(14, applicationContext, string2));
            }
        } catch (Throwable th5) {
            settingsActivity.G().f();
            throw th5;
        }
    }
}
