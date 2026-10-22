package defpackage;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import androidx.recyclerview.widget.a;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.contributor.ContributorRegistration;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z28 implements c38, aj8, oy4, ug7, dh5, i60, j90, za2, lo4, t22, c33, js1, lk8, tk5, mr8, dl9, u1a, t1a {
    public static final String[] c = {"_data"};
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ z28(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public static void D(String str, int i, byte[] bArr) {
        if (bArr.length == i) {
            return;
        }
        throw new IllegalStateException(str + " should be " + i + " bytes long but is " + bArr.length);
    }

    @Override // defpackage.lk8
    public int A(View view) {
        return a.O(view) + ((ViewGroup.MarginLayoutParams) ((qg6) view.getLayoutParams())).rightMargin;
    }

    @Override // defpackage.js1
    public void B(String str) {
        ((TaskCompletionSource) this.b).setException(new Exception(str));
    }

    @Override // defpackage.tk5
    public File C() {
        return (File) ((ca2) this.b).b;
    }

    public Object E(qj4 qj4Var, Class cls) {
        com.google.gson.a aVar = ((TreeTypeAdapter) this.b).c;
        aVar.getClass();
        TypeToken<?> typeToken = TypeToken.get((Type) cls);
        if (qj4Var == null) {
            return null;
        }
        om4 om4Var = new om4(om4.e);
        om4Var.a = new Object[32];
        om4Var.b = 0;
        om4Var.c = new String[32];
        om4Var.d = new int[32];
        om4Var.Z(qj4Var);
        return aVar.a(om4Var, typeToken);
    }

    @Override // defpackage.oy4
    public void a(Object obj, int i, int i2) {
        ((hg6) this.b).a.d(obj, i, i2);
    }

    @Override // defpackage.c33
    public Object b() {
        nn1 nn1Var = (nn1) this.b;
        return new td2((yw2) nn1Var.b, (l22) nn1Var.c);
    }

    @Override // defpackage.mr8
    public WebViewProviderBoundaryInterface createWebView(WebView webView) {
        return (WebViewProviderBoundaryInterface) tu0.a(WebViewProviderBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.b).createWebView(webView));
    }

    @Override // defpackage.tk5
    public File d() {
        return (File) ((ca2) this.b).d;
    }

    @Override // defpackage.tk5
    public File e() {
        return (File) ((ca2) this.b).f;
    }

    public boolean equals(Object obj) {
        switch (this.a) {
            case 17:
                return true;
            default:
                return super.equals(obj);
        }
    }

    @Override // defpackage.oy4
    public void f(int i, int i2) {
        ((hg6) this.b).a.c(i, i2);
    }

    @Override // defpackage.u1a
    public Iterator g(fu fuVar, CharSequence charSequence) {
        return new e0a(fuVar, charSequence, new km5(((js9) this.b).e.matcher(charSequence)));
    }

    @Override // defpackage.mr8
    public StaticsBoundaryInterface getStatics() {
        return (StaticsBoundaryInterface) tu0.a(StaticsBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.b).getStatics());
    }

    @Override // defpackage.lk8
    public int h(View view) {
        return a.L(view) - ((ViewGroup.MarginLayoutParams) ((qg6) view.getLayoutParams())).leftMargin;
    }

    public int hashCode() {
        switch (this.a) {
            case 17:
                return 0;
            default:
                return super.hashCode();
        }
    }

    @Override // defpackage.lo4
    public byte[] i() {
        byte[] bArrI = ((gk1) this.b).i();
        D("Key", 32, bArrI);
        return bArrI;
    }

    @Override // defpackage.tk5
    public File j() {
        return (File) ((ca2) this.b).e;
    }

    @Override // defpackage.tk5
    public ez1 k() {
        yf1 yf1Var = (yf1) ((ca2) this.b).a;
        if (yf1Var != null) {
            return (ez1) yf1Var.c;
        }
        return null;
    }

    @Override // defpackage.za2
    public Object l() {
        ByteBuffer byteBuffer = (ByteBuffer) this.b;
        byteBuffer.position(0);
        return byteBuffer;
    }

    @Override // defpackage.ug7
    public void m(String str) {
        tt ttVarQ0 = ((AppListActivity) this.b).U();
        ttVarQ0.m(str, ttVarQ0.m);
    }

    @Override // defpackage.oy4
    public void n(int i, int i2) {
        ((hg6) this.b).a.e(i, i2);
    }

    @Override // defpackage.lk8
    public int o() {
        return ((a) this.b).getPaddingLeft();
    }

    @Override // defpackage.aj8
    public void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
        ((r7) this.b).c(false);
    }

    @Override // defpackage.aj8
    public void onDataChange(eb2 eb2Var) {
        ((r7) this.b).c(((ContributorRegistration) eb2Var.c(ContributorRegistration.class)) != null);
    }

    @Override // defpackage.t22
    public void onError(Object obj) {
        c91 c91Var = (c91) obj;
        c91Var.getClass();
        o21 o21Var = (o21) this.b;
        if (o21Var.t() instanceof ho5) {
            o21Var.resumeWith(new bn6(c91Var));
        }
    }

    @Override // defpackage.t22
    public void onResult(Object obj) {
        o21 o21Var = (o21) this.b;
        if (o21Var.t() instanceof ho5) {
            o21Var.resumeWith(be8.a);
        }
    }

    @Override // defpackage.js1
    public void onSuccess(String str) {
        ((TaskCompletionSource) this.b).setResult(str);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x001c  */
    @Override // defpackage.j90
    public void p(n58 n58Var, z80 z80Var) {
        String str;
        z80 z80Var2;
        String strA;
        ArrayList arrayList;
        ((f80) this.b).e(n58Var, z80Var);
        if (z80Var == null) {
            strA = ((f80) this.b).a();
            f80 f80Var = (f80) this.b;
            if (((z80) f80Var.g) == null) {
                n58 n58Var2 = (n58) f80Var.e;
                if (n58Var2 == null || (str = n58Var2.e) == null) {
                    g90 g90Var = (g90) f80Var.d;
                    if (g90Var != null) {
                        str = g90Var.C;
                    } else {
                        str = null;
                    }
                }
            } else {
                str = null;
            }
            z80Var2 = null;
        } else {
            str = null;
            z80Var2 = z80Var;
            strA = null;
        }
        synchronized (((f80) this.b).h) {
            f80 f80Var2 = (f80) this.b;
            arrayList = (ArrayList) f80Var2.i;
            f80Var2.i = null;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((cn5) it.next()).a(strA, str, z80Var2);
        }
    }

    @Override // defpackage.mr8
    public String[] q() {
        return ((WebViewProviderFactoryBoundaryInterface) this.b).getSupportedFeatures();
    }

    @Override // defpackage.oy4
    public void r(int i, int i2) {
        ((hg6) this.b).a.f(i, i2);
    }

    @Override // defpackage.lk8
    public int s() {
        a aVar = (a) this.b;
        return aVar.y - aVar.getPaddingRight();
    }

    @Override // defpackage.i60
    public ra2 t(AssetManager assetManager, String str) {
        return new ap7(0, str, assetManager);
    }

    @Override // defpackage.c38
    public Cursor u(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        return ((ContentResolver) this.b).query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, c, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
    }

    @Override // defpackage.tk5
    public File v() {
        return (File) ((yf1) ((ca2) this.b).a).b;
    }

    @Override // defpackage.lk8
    public View w(int i) {
        return ((a) this.b).F(i);
    }

    @Override // defpackage.tk5
    public File x() {
        return (File) ((ca2) this.b).c;
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        switch (this.a) {
            case 5:
                return new j60((AssetManager) this.b, this);
            default:
                return new wl6((Resources) this.b, ai5Var.a(Uri.class, InputStream.class));
        }
    }

    @Override // defpackage.ug7
    public void z() {
        AppListActivity appListActivity = (AppListActivity) this.b;
        int i = AppListActivity.q0;
        Object systemService = appListActivity.n0().getContext().getSystemService("input_method");
        systemService.getClass();
        ((InputMethodManager) systemService).hideSoftInputFromWindow(appListActivity.n0().getWindowToken(), 0);
    }

    @Override // defpackage.t1a
    public Object zza(String str) throws GeneralSecurityException {
        String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 3; i++) {
            Provider provider = Security.getProvider(strArr[i]);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        Iterator it = arrayList.iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return ((y1a) this.b).e(str, (Provider) it.next());
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }

    @Override // defpackage.dl9
    public hm9 zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            dl9 dl9Var = ((dl9[]) this.b)[i];
            if (dl9Var.zzc(cls)) {
                return dl9Var.zzb(cls);
            }
        }
        g84.j("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // defpackage.dl9
    public boolean zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (((dl9[]) this.b)[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }

    public /* synthetic */ z28(int i) {
        this.a = i;
    }

    @Override // defpackage.za2
    public void c() {
    }
}
