package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x99 {
    public static final x89 a;
    public static final x99 b;

    static {
        Object[] objArr = {"firebaseAppName", "firebaseUserUid", "operation", "tenantId", "verifyAssertionRequest", "statusCode", "statusMessage", "timestamp"};
        q69 q69Var = z59.f;
        for (int i = 0; i < 8; i++) {
            if (objArr[i] == null) {
                f6.n(fz5.j(i, "at index "));
                return;
            }
        }
        a = new x89(8, objArr);
        b = new x99();
    }

    public static void a(Context context, Status status) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        editorEdit.putInt("statusCode", status.a);
        editorEdit.putString("statusMessage", status.b);
        editorEdit.putLong("timestamp", System.currentTimeMillis());
        editorEdit.commit();
    }

    public static void b(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        x89 x89Var = a;
        int i = x89Var.n;
        int i2 = 0;
        while (i2 < i) {
            Object obj = x89Var.get(i2);
            i2++;
            editorEdit.remove((String) obj);
        }
        editorEdit.commit();
    }
}
