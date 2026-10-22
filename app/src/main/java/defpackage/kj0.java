package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.os.Process;
import android.view.MenuItem;
import com.google.android.material.button.MaterialButton;
import com.nimbusds.jose.JWEObject;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kj0 implements at5, g36, pd7 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;

    public /* synthetic */ kj0(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:? A[SYNTHETIC] */
    @Override // defpackage.pd7
    public void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) throws IOException {
        String str;
        String str2 = (String) this.a;
        ComponentName componentName = (ComponentName) this.b;
        Context contextM = ji8.m();
        File file = new File(contextM.createDeviceProtectedStorageContext().getCacheDir(), "main.jar");
        InputStream inputStreamOpen = contextM.getResources().getAssets().open("main.jar");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[65536];
                while (true) {
                    int i = inputStreamOpen.read(bArr);
                    if (i <= 0) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, i);
                    }
                    if (inputStreamOpen != null) {
                        throw th;
                    }
                    try {
                        inputStreamOpen.close();
                        throw th;
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                        throw th;
                    }
                }
                fileOutputStream.close();
                inputStreamOpen.close();
                if (str2.equals("daemon")) {
                    str = "--nice-name=" + contextM.getPackageName() + ":root:daemon";
                } else if (str2.equals("start")) {
                    Locale locale = Locale.ROOT;
                    str = "--nice-name=" + contextM.getPackageName() + ":root:" + (Process.myUid() / JWEObject.MAX_COMPRESSED_CIPHER_TEXT_LENGTH);
                } else {
                    str = "";
                }
                outputStream.write(String.format(Locale.ROOT, "(%s CLASSPATH=%s %s %s /system/bin %s com.topjohnwu.superuser.internal.RootServerMain '%s' %d %s >/dev/null 2>&1)&", "", file, "/system/bin/app_process".concat(Process.is64Bit() ? "64" : "32"), "", str, componentName.flattenToString(), Integer.valueOf(Process.myUid()), str2).getBytes(StandardCharsets.UTF_8));
                outputStream.write(10);
                outputStream.flush();
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                    throw th2;
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                    throw th2;
                }
            }
        } catch (Throwable th4) {
            if (inputStreamOpen != null) {
                throw th4;
            }
            inputStreamOpen.close();
            throw th4;
        }
    }

    @Override // defpackage.at5
    public void d(Object obj) {
        lj0 lj0Var = (lj0) this.a;
        pj0 pj0Var = (pj0) this.b;
        boolean z = pj0Var.d || pj0Var.b();
        MaterialButton materialButton = lj0Var.S;
        materialButton.setEnabled(z);
        materialButton.setAlpha(z ? 1.0f : 0.5f);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0040  */
    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        x01 x01Var = (x01) this.a;
        rz0 rz0Var = (rz0) this.b;
        int itemId = menuItem.getItemId();
        int i = 1;
        if (itemId == R.id.action_restore_sms_backup) {
            x01Var.V(rz0Var);
            return true;
        }
        if (itemId == R.id.action_sync_sms_backup) {
            sa1.R(x01Var, null, new w01(0, x01Var, rz0Var), 1);
            return true;
        }
        if (itemId == R.id.action_delete_sms_backup) {
            if (!rz0Var.isCloudItem()) {
                s35 s35Var = new s35(x01Var, R.style.M3AlertDialogTheme, new hv1(x01Var, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.delete_backup);
                s35Var.n(R.string.sure_to_proceed);
                s35Var.s(R.string.yes, new lu(i, x01Var, rz0Var));
                s35Var.q(R.string.no, null);
                s35Var.m();
            } else if (Const.d(x01Var)) {
                tb1 tb1Var = tb1.a;
                if (qb1.m()) {
                    s35 s35Var2 = new s35(x01Var, R.style.M3AlertDialogTheme, new hv1(x01Var, R.style.M3AlertDialogTheme), null);
                    s35Var2.v(R.string.delete_backup);
                    s35Var2.n(R.string.sure_to_proceed);
                    s35Var2.s(R.string.yes, new lu(i, x01Var, rz0Var));
                    s35Var2.q(R.string.no, null);
                    s35Var2.m();
                }
            }
        }
        return true;
    }
}
