package defpackage;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.o;
import androidx.fragment.app.t;
import androidx.fragment.app.z;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ke implements ls5, jk8, dz7, h9, x76 {
    public final /* synthetic */ int a;
    public Object b;

    public ke(g45 g45Var) {
        this.a = 12;
        int i = g45Var.d;
        this.b = new l22[i];
        for (int i2 = 0; i2 < i; i2++) {
            ((l22[]) this.b)[i2] = new l22(g45Var);
        }
    }

    public static void q(ke keVar, k69 k69Var, yf1 yf1Var, n59 n59Var) {
        if (!k69Var.a && TextUtils.isEmpty(k69Var.t)) {
            keVar.t(new b69(k69Var.c, k69Var.b, Long.valueOf(k69Var.d), BearerAuthenticationSchemeInternal.SCHEME_BEARER), k69Var.k, k69Var.f, Boolean.valueOf(k69Var.n), k69Var.a(), yf1Var, n59Var);
            return;
        }
        yf1Var.g(new bs2(k69Var.a ? new Status(17012, null, null, null) : zv1.t(k69Var.t), k69Var.a(), k69Var.e, k69Var.y, 3));
    }

    public StringBuilder a() {
        g3 g3Var = (g3) this.b;
        if (!(g3Var instanceof sw5)) {
            return null;
        }
        StringBuilder sb = ((sw5) g3Var).b.b;
        if (sb.length() == 0) {
            return null;
        }
        return sb;
    }

    @Override // defpackage.dz7
    public String b() {
        String message;
        Exception exc = (Exception) this.b;
        if (exc != null && (message = exc.getMessage()) != null) {
            if (message.length() <= 0) {
                message = null;
            }
            if (message != null) {
                return message;
            }
        }
        Exception exc2 = (Exception) this.b;
        return exc2 != null ? io4.b(exc2) : "No error message";
    }

    @Override // defpackage.dz7
    public boolean c() {
        return ((Exception) this.b) != null;
    }

    public short d() {
        byte[] bArr = (byte[]) this.b;
        return (short) ((bArr[bArr.length - 1] & 255) | ((bArr[bArr.length - 2] & 255) << 8));
    }

    public boolean e() {
        return !c();
    }

    public void f() {
        ((t) this.b).k.Q();
    }

    public void g(sd1 sd1Var, String str) {
        sd1Var.getClass();
        hf1.j((hf1) this.b, sd1Var, new vm(str, 1));
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 3:
                return (ConstraintLayout) this.b;
            default:
                return (NestedScrollView) this.b;
        }
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        g9 g9Var = (g9) obj;
        z zVar = (z) this.b;
        rr3 rr3Var = (rr3) zVar.F.pollLast();
        if (rr3Var == null) {
            Log.w("FragmentManager", "No Activities were started for result for " + this);
            return;
        }
        String str = rr3Var.a;
        int i = rr3Var.b;
        o oVarC = zVar.c.c(str);
        if (oVarC != null) {
            oVarC.onActivityResult(i, g9Var.a, g9Var.b);
            return;
        }
        Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
    }

    @Override // defpackage.x76
    public void i() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    public void j() {
        int i;
        int i2 = 0;
        while (true) {
            l22[] l22VarArr = (l22[]) this.b;
            if (i2 >= l22VarArr.length) {
                return;
            }
            l22 l22Var = l22VarArr[i2];
            int[] iArr = (int[]) l22Var.b;
            int iW = ms8.w(0, iArr.length);
            int[] iArr2 = new int[iW];
            System.arraycopy(iArr, 0, iArr2, 0, Math.min(iArr.length, iW));
            int i3 = 0;
            for (int i4 = 128; i4 > 0; i4 >>>= 1) {
                for (int i5 = 0; i5 < 256; i5 = i + i4) {
                    i3++;
                    int i6 = ms8.b[i3];
                    i = i5;
                    while (i < i5 + i4) {
                        int i7 = i + i4;
                        int iW2 = xx3.w(((long) i6) * ((long) iArr2[i7]));
                        iArr2[i7] = iArr2[i] - iW2;
                        iArr2[i] = iArr2[i] + iW2;
                        i++;
                    }
                }
            }
            l22Var.b = iArr2;
            i2++;
        }
    }

    @Override // defpackage.x76
    public void k(int i, Object obj) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case XmlPullParser.COMMENT /* 9 */:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.b).setResultCode(i);
    }

    @Override // defpackage.dz7
    public boolean l() {
        return false;
    }

    public is8 m(kt8 kt8Var) {
        ks8 ks8Var;
        qr8 qr8Var = (qr8) ns8.a.invoke();
        kt8Var.getClass();
        int i = qr8Var.a;
        if (kt8Var == kt8.DISPLAY && i < 29) {
            ks8Var = ks8.LEGACY_PUBLIC;
        } else if (qr8Var.b) {
            ks8Var = ks8.ROOT_XML;
        } else {
            ks8Var = (i >= 30 && qr8Var.c && qr8Var.d) ? ks8.SHIZUKU_BINDER : ks8.UNAVAILABLE;
        }
        if (ks8Var == ks8.UNAVAILABLE) {
            return new gs8(ds8.ACCESS_UNAVAILABLE, ks8Var, null);
        }
        js8 js8Var = (js8) ((Map) this.b).get(ks8Var);
        if (js8Var == null) {
            return new gs8(ds8.ACCESS_UNAVAILABLE, ks8Var, null);
        }
        is8 is8Var = js8Var.read();
        if (!(is8Var instanceof hs8)) {
            if (is8Var instanceof gs8) {
                return is8Var;
            }
            q.j();
            return null;
        }
        hs8 hs8Var = (hs8) is8Var;
        List list = hs8Var.a;
        String.CASE_INSENSITIVE_ORDER.getClass();
        List listN1 = el1.n1(list, new gj1(5));
        ks8 ks8Var2 = hs8Var.b;
        ks8Var2.getClass();
        return new hs8(listN1, ks8Var2);
    }

    @Override // defpackage.ls5
    public tv8 n(View view, tv8 tv8Var) {
        fo0 fo0Var = (fo0) this.b;
        fo0Var.l = tv8Var.a();
        fo0Var.m = tv8Var.b();
        fo0Var.n = tv8Var.c();
        fo0Var.g();
        return tv8Var;
    }

    public Object o(j87 j87Var, rt6 rt6Var, fi7 fi7Var, oy5 oy5Var) throws ny5 {
        zs6 zs6Var;
        String strN;
        byte[] bytes = tu0.h;
        if (((ut6) rt6Var.c()).j != 2147483693L) {
            return oy5Var.b(fi7Var);
        }
        s40 s40Var = rt6Var.d;
        if (s40Var == null) {
            zs6Var = null;
            break;
        }
        Iterator it = s40Var.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                zs6Var = null;
                break;
            }
            ys6 ys6Var = (ys6) it.next();
            if (ys6Var instanceof zs6) {
                zs6Var = (zs6) ys6Var;
                break;
            }
        }
        if (zs6Var == null) {
            throw new ny5(((ut6) rt6Var.c()).j, "Create failed for " + fi7Var + ": missing symlink data");
        }
        String str = fi7Var.c;
        int i = zs6Var.b;
        byte[] bytes2 = str == null ? bytes : str.getBytes(h51.c);
        int length = bytes2.length - i;
        Charset charset = h51.c;
        String str2 = new String(bytes2, length, i, charset);
        String str3 = zs6Var.c;
        if (zs6Var.a) {
            strN = eq3.j(str3, str2);
        } else {
            if (str != null) {
                bytes = str.getBytes(charset);
            }
            String str4 = new String(bytes, 0, bytes.length - i, charset);
            StringBuilder sb = new StringBuilder();
            int iLastIndexOf = str4.lastIndexOf("\\");
            if (iLastIndexOf != -1) {
                sb.append((CharSequence) str4, 0, iLastIndexOf);
                sb.append('\\');
            }
            strN = dj7.n(sb, str3, str2);
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            int iIndexOf = strN.indexOf(92, i2);
            if (iIndexOf == -1) {
                break;
            }
            arrayList.add(strN.substring(i2, iIndexOf));
            i2 = iIndexOf + 1;
        }
        arrayList.add(strN.substring(i2));
        int i3 = 0;
        while (i3 < arrayList.size()) {
            String str5 = (String) arrayList.get(i3);
            if (".".equals(str5)) {
                arrayList.remove(i3);
            } else if ("..".equals(str5)) {
                if (i3 > 0) {
                    arrayList.remove(i3);
                    i3--;
                }
                arrayList.remove(i3);
            } else {
                i3++;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            if (i4 > 0) {
                sb2.append('\\');
            }
            sb2.append((String) arrayList.get(i4));
        }
        return oy5Var.b(new fi7(fi7Var.a, fi7Var.b, sb2.toString()));
    }

    public Object p() {
        if (rs9.l == null) {
            rs9.l = new ym5();
        }
        synchronized (rs9.k) {
        }
        throw new IllegalStateException("Must call PhenotypeContext.setContext() first");
    }

    public void r(String str, n59 n59Var) {
        ly8.e(str);
        b69 b69VarN = b69.n(str);
        if (b69VarN.u()) {
            n59Var.h(b69VarN);
            return;
        }
        ig9 ig9Var = new ig9(b69VarN.a, 2);
        g59 g59Var = (g59) this.b;
        tr9 tr9Var = new tr9(this, n59Var);
        c59 c59Var = g59Var.c;
        ms8.U(c59Var.r("/token", g59Var.f), ig9Var, tr9Var, new b69(), (xt1) c59Var.b);
    }

    public void s(u59 u59Var, yf1 yf1Var) {
        g59 g59Var = (g59) this.b;
        oe oeVar = new oe(this, yf1Var, 17, false);
        g59Var.getClass();
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/emailLinkSignin", g59Var.f), u59Var, oeVar, new v59(), (xt1) d59Var.b);
    }

    public void t(b69 b69Var, String str, String str2, Boolean bool, ua9 ua9Var, yf1 yf1Var, n59 n59Var) {
        bi9 bi9Var = new bi9(b69Var.b, 1);
        g59 g59Var = (g59) this.b;
        yr1 yr1Var = new yr1(this, n59Var, str2, str, bool, ua9Var, yf1Var, b69Var);
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/getAccountInfo", g59Var.f), bi9Var, yr1Var, new w59(), (xt1) d59Var.b);
    }

    public String toString() {
        switch (this.a) {
            case 12:
                l22[] l22VarArr = (l22[]) this.b;
                String strConcat = "\n[";
                for (int i = 0; i < l22VarArr.length; i++) {
                    strConcat = strConcat + "Inner Matrix " + i + TokenAuthenticationScheme.SCHEME_DELIMITER + l22VarArr[i].toString();
                    if (i != l22VarArr.length - 1) {
                        strConcat = strConcat.concat(",\n");
                    }
                }
                return strConcat.concat("]");
            default:
                return super.toString();
        }
    }

    public /* synthetic */ ke(int i) {
        this.a = i;
    }

    public /* synthetic */ ke(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public ke(cz4 cz4Var, Map map) {
        this.a = 16;
        ns8 ns8Var = ns8.a;
        this.b = map;
    }

    public ke(byte[] bArr) {
        this.a = 0;
        if (bArr.length >= 2) {
            this.b = Arrays.copyOf(bArr, bArr.length);
        } else {
            c6.f("Invalid APDU response data");
            throw null;
        }
    }

    public ke(NestedScrollView nestedScrollView, MaterialButton materialButton, MaterialButton materialButton2, TextInputEditText textInputEditText, ImageView imageView, TextInputLayout textInputLayout, TextView textView) {
        this.a = 11;
        this.b = nestedScrollView;
    }
}
