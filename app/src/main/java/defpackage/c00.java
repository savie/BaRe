package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.internal.GenericIdpActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.nio.channels.FileChannel;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.SwiftApp;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c00 implements jk8, ji3, vb8, cl6, OnCompleteListener {
    public static c00 d;
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public c00(int i) {
        this.a = i;
        switch (i) {
            case XmlPullParser.COMMENT /* 9 */:
                this.b = new AtomicInteger();
                this.c = new AtomicInteger();
                break;
            default:
                this.b = new AtomicReference();
                this.c = new k50(0);
                break;
        }
    }

    public static void o(qn5 qn5Var, jp1 jp1Var) {
        if (!qn5Var.Z()) {
            if (qn5Var.isEmpty()) {
                c6.f("Can't calculate hash on empty node!");
                return;
            } else if (qn5Var instanceof q61) {
                ((q61) qn5Var).d(new ip1(jp1Var), true);
                return;
            } else {
                y5.g(qn5Var, "Expected children node, but got: ");
                return;
            }
        }
        jp1Var.c();
        jp1Var.c = jp1Var.d;
        jp1Var.a.append(((at4) qn5Var).v(2));
        jp1Var.e = true;
        kp1 kp1Var = jp1Var.h;
        kp1Var.getClass();
        if (jp1Var.a.length() > kp1Var.a) {
            if (jp1Var.a(jp1Var.d).isEmpty() || !jp1Var.a(jp1Var.d).i().equals(m61.d)) {
                jp1Var.b();
            }
        }
    }

    public static c00 r(Context context, String str) {
        tr9 tr9VarS;
        c00 c00Var = d;
        if (c00Var == null || !Objects.equals((String) c00Var.b, str)) {
            try {
                he9.a();
                tr9VarS = s(context, str);
            } catch (IOException | GeneralSecurityException e) {
                u48.s("Exception encountered during crypto setup:\n", e.getMessage(), "FirebearStorageCryptoHelper");
                if (e instanceof GeneralSecurityException) {
                    context.getSharedPreferences("com.google.firebase.auth.api.crypto." + str, 0).edit().remove("StorageCryptoKeyset").apply();
                    try {
                        tr9VarS = s(context, str);
                    } catch (IOException | GeneralSecurityException e2) {
                        u48.s("Exception encountered during second attempt to crypto setup:\n", e2.getMessage(), "FirebearStorageCryptoHelper");
                        tr9VarS = null;
                    }
                } else {
                    tr9VarS = null;
                }
            }
            d = new c00(17, str, tr9VarS);
        }
        return d;
    }

    public static tr9 s(Context context, String str) {
        so8 so8Var = new so8();
        String strJ = xs1.j("com.google.firebase.auth.api.crypto.", str);
        if (context == null) {
            c6.f("need an Android context");
            return null;
        }
        so8Var.a = context;
        so8Var.b = "StorageCryptoKeyset";
        so8Var.c = strJ;
        so8Var.k = me9.b;
        String strJ2 = xs1.j("android-keystore://firebear_main_key_id_for_storage_crypto.", str);
        if (strJ2.startsWith("android-keystore://")) {
            so8Var.d = strJ2;
            return so8Var.b();
        }
        c6.f("key URI must start with android-keystore://");
        return null;
    }

    public void a() {
        int[] iArr = (int[]) this.b;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.c = null;
    }

    @Override // defpackage.cl6
    public void d(String str, String str2) {
        wc2 wc2VarB = str != null ? wc2.b(str, str2) : null;
        wj6 wj6Var = (wj6) this.c;
        kh8 kh8Var = (kh8) this.b;
        wj6.b(wj6Var, "Persisted write", kh8Var.b, wc2VarB);
        wj6.c(wj6Var, kh8Var.a, kh8Var.b, wc2VarB);
    }

    public void f(int i) {
        int[] iArr = (int[]) this.b;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.b = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int length = iArr.length;
            while (length <= i) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.b = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.b;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    @Override // defpackage.vb8
    public Annotation getAnnotation(Class cls) {
        return ((vb8) this.c).getAnnotation(cls);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (ImageView) this.b;
    }

    @Override // defpackage.vb8
    public Class getType() {
        return (Class) this.b;
    }

    public Locale h() {
        SharedPreferences sharedPreferences = (SharedPreferences) this.b;
        String string = sharedPreferences.getString("language_key", null);
        if (string == null || nq7.j0(string)) {
            return (Locale) this.c;
        }
        String string2 = sharedPreferences.getString("language_key", null);
        if (string2 != null) {
            JSONObject jSONObject = new JSONObject(string2);
            return new Locale(jSONObject.getString("language"), jSONObject.getString("country"), jSONObject.getString("variant"));
        }
        dp4 dp4Var = new dp4();
        pe4.z(dp4Var, pe4.class.getName());
        throw dp4Var;
    }

    public void k() throws IOException {
        String str = (String) this.b;
        if (((FileChannel) this.c) != null) {
            return;
        }
        try {
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileChannel channel = new FileOutputStream(file).getChannel();
            this.c = channel;
            if (channel != null) {
                channel.lock();
            }
        } catch (Throwable th) {
            FileChannel fileChannel = (FileChannel) this.c;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.c = null;
            e6.j(eq3.k("Unable to lock file: '", str, "'."), th);
        }
    }

    public void l(int i, int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        f(i3);
        int[] iArr2 = (int[]) this.b;
        System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
        Arrays.fill((int[]) this.b, i, i3, -1);
        ArrayList arrayList = (ArrayList) this.c;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            yk7 yk7Var = (yk7) ((ArrayList) this.c).get(size);
            int i4 = yk7Var.a;
            if (i4 >= i) {
                yk7Var.a = i4 + i2;
            }
        }
    }

    public void m(int i, int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        f(i3);
        int[] iArr2 = (int[]) this.b;
        System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
        int[] iArr3 = (int[]) this.b;
        Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
        ArrayList arrayList = (ArrayList) this.c;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            yk7 yk7Var = (yk7) ((ArrayList) this.c).get(size);
            int i4 = yk7Var.a;
            if (i4 >= i) {
                if (i4 < i3) {
                    ((ArrayList) this.c).remove(size);
                } else {
                    yk7Var.a = i4 - i2;
                }
            }
        }
    }

    public void n(br8 br8Var) {
        ((nr8) this.c).i.execute(new ax2(3, this, br8Var));
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        GenericIdpActivity genericIdpActivity = (GenericIdpActivity) this.b;
        String str = (String) this.c;
        ec9 ec9Var = GenericIdpActivity.c;
        if (genericIdpActivity.getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW"), 0) == null) {
            Log.e("GenericIdpActivity", "Device cannot resolve intent for: android.intent.action.VIEW");
            genericIdpActivity.o();
            return;
        }
        List<ResolveInfo> listQueryIntentServices = genericIdpActivity.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            Intent intent = new Intent("android.intent.action.VIEW", (Uri) task.getResult());
            intent.putExtra("com.android.browser.application_id", str);
            Log.i("GenericIdpActivity", "Opening IDP Sign In link in a browser window.");
            intent.addFlags(1073741824);
            intent.addFlags(268435456);
            genericIdpActivity.startActivity(intent);
            return;
        }
        ix0 ix0VarA = new h72().a();
        Log.i("GenericIdpActivity", "Opening IDP Sign In link in a custom chrome tab.");
        Uri uri = (Uri) task.getResult();
        Intent intent2 = (Intent) ix0VarA.b;
        intent2.setData(uri);
        genericIdpActivity.startActivity(intent2, (Bundle) ix0VarA.c);
    }

    public void p(String str) {
        ar8 ar8Var = (ar8) this.b;
        synchronized (ar8Var) {
            ar8Var.e((byte) 1, str.getBytes(ar8.m));
        }
    }

    public void q(wo5 wo5Var) {
        if (((wo5) this.b) != wo5Var) {
            this.b = wo5Var;
            wo5Var.e(this);
        }
    }

    @Override // defpackage.ji3
    public Object t(li3 li3Var, kv1 kv1Var) {
        Object objT = ((la) this.b).t(new vi3(new ih6(), li3Var, (t72) this.c), kv1Var);
        return objT == yx1.a ? objT : be8.a;
    }

    public String toString() {
        switch (this.a) {
            case 10:
                return ((vb8) this.c).toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ c00(int i, boolean z) {
        this.a = i;
    }

    public /* synthetic */ c00(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.b = obj2;
        this.c = obj;
    }

    public /* synthetic */ c00(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public c00(List list, List list2) {
        this.a = 2;
        if (list.size() == list2.size() - 1) {
            this.b = list;
            this.c = list2;
        } else {
            c6.f("Number of posts need to be n-1 for n hashes in CompoundHash");
            throw null;
        }
    }

    public c00(String str) {
        this.a = 4;
        this.b = str.concat(".lck");
    }

    public c00(SwiftApp swiftApp, Locale locale) {
        this.a = 11;
        this.c = locale;
        this.b = swiftApp.getSharedPreferences("lingver_preference", 0);
    }

    public c00(uc2 uc2Var) {
        this.a = 3;
        this.b = uc2Var.b;
        this.c = uc2Var.a("EventRaiser");
    }

    public c00(nr8 nr8Var, ar8 ar8Var) {
        this.a = 14;
        this.c = nr8Var;
        this.b = ar8Var;
        ar8Var.c = this;
    }

    public c00(wo5 wo5Var) {
        this.a = 8;
        q(wo5Var);
    }
}
