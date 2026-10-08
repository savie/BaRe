package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.material.textfield.TextInputLayout;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u00 implements jk8, ba4, w23, n59 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public u00(y65 y65Var, ArrayList arrayList, m35 m35Var) {
        this.a = 2;
        ms8.j(m35Var, "Argument must not be null");
        this.c = m35Var;
        ms8.j(arrayList, "Argument must not be null");
        this.d = arrayList;
        this.b = new rb(y65Var, m35Var);
    }

    @Override // defpackage.ba4
    public int a() {
        List list = (List) this.d;
        eg6 eg6Var = (eg6) ((rb) this.b).b;
        eg6Var.reset();
        return pe4.q(list, eg6Var, (m35) this.c);
    }

    @Override // defpackage.ba4
    public Bitmap b(BitmapFactory.Options options) {
        eg6 eg6Var = (eg6) ((rb) this.b).b;
        eg6Var.reset();
        return BitmapFactory.decodeStream(eg6Var, null, options);
    }

    public void c(String str, Throwable th, Object... objArr) {
        if (e()) {
            String strI = i(str, objArr);
            if (th != null) {
                StringBuilder sbN = fz5.n(strI, "\n");
                StringWriter stringWriter = new StringWriter();
                th.printStackTrace(new PrintWriter(stringWriter));
                sbN.append(stringWriter.toString());
                strI = sbN.toString();
            }
            ub ubVar = (ub) this.b;
            String str2 = (String) this.c;
            System.currentTimeMillis();
            ubVar.b(1, str2, strI);
        }
    }

    public void d(String str, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(i(str, new Object[0]));
        sb.append("\n");
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        sb.append(stringWriter.toString());
        String string = sb.toString();
        ub ubVar = (ub) this.b;
        String str2 = (String) this.c;
        System.currentTimeMillis();
        ubVar.b(4, str2, string);
    }

    public boolean e() {
        return dj7.A(((ub) this.b).a) <= 0;
    }

    @Override // defpackage.ba4
    public void f() {
        eg6 eg6Var = (eg6) ((rb) this.b).b;
        synchronized (eg6Var) {
            eg6Var.c = eg6Var.a.length;
        }
    }

    @Override // defpackage.ba4
    public ImageHeaderParser$ImageType g() {
        List list = (List) this.d;
        eg6 eg6Var = (eg6) ((rb) this.b).b;
        eg6Var.reset();
        return pe4.s(list, eg6Var, (m35) this.c);
    }

    @Override // defpackage.ea6
    public Object get() {
        return new ka7((ox1) ((ca6) this.b).get(), (a48) ((ca6) this.c).get(), (fb2) ((ca6) this.d).get());
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 0:
                return (ConstraintLayout) this.b;
            default:
                return (TextInputLayout) this.b;
        }
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        j69 j69Var = (j69) this.b;
        j69Var.G = true;
        String str = ((b69) f59Var).b;
        ly8.e(str);
        j69Var.b = str;
        g59 g59Var = (g59) ((ke) this.d).b;
        vq vqVar = new vq(this, (yf1) this.c, this);
        g59Var.getClass();
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/verifyAssertion", g59Var.f), j69Var, vqVar, new k69(), (xt1) d59Var.b);
    }

    public String i(String str, Object... objArr) {
        String str2 = (String) this.d;
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        return str2 == null ? str : dj7.k(str2, " - ", str);
    }

    public void j(String str) {
        String strI = i(str, new Object[0]);
        ub ubVar = (ub) this.b;
        String str2 = (String) this.c;
        System.currentTimeMillis();
        ubVar.b(3, str2, strI);
    }

    public hu9 k() throws GeneralSecurityException {
        km8 km8Var;
        mu9 mu9Var = (mu9) this.b;
        if (mu9Var == null || (km8Var = (km8) this.c) == null) {
            m0.h("Cannot build without parameters and/or key material");
            return null;
        }
        if (mu9Var.a != ((d2a) km8Var.a).a.length) {
            m0.h("Key size mismatch");
            return null;
        }
        if (mu9Var.a() && ((Integer) this.d) == null) {
            m0.h("Cannot create key without ID requirement with parameters with ID requirement");
            return null;
        }
        if (!((mu9) this.b).a() && ((Integer) this.d) != null) {
            m0.h("Cannot create key with ID requirement with parameters without ID requirement");
            return null;
        }
        ku9 ku9Var = ((mu9) this.b).c;
        if (ku9Var == ku9.e) {
            d2a d2aVar = zs9.a;
        } else if (ku9Var == ku9.d || ku9Var == ku9.c) {
            zs9.a(((Integer) this.d).intValue());
        } else {
            if (ku9Var != ku9.b) {
                l0.e("Unknown HmacParameters.Variant: ".concat(String.valueOf(ku9Var)));
                return null;
            }
            zs9.b(((Integer) this.d).intValue());
        }
        return new hu9((mu9) this.b, (km8) this.c, (Integer) this.d);
    }

    public void l(Object obj, String str) {
        s02 s02Var = new s02();
        ((s02) this.d).c = s02Var;
        this.d = s02Var;
        s02Var.b = obj;
        s02Var.a = str;
    }

    public String toString() {
        switch (this.a) {
            case XmlPullParser.COMMENT /* 9 */:
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.b);
                sb.append('{');
                s02 s02Var = (s02) ((s02) this.c).c;
                String str = "";
                while (s02Var != null) {
                    Object obj = s02Var.b;
                    sb.append(str);
                    String str2 = (String) s02Var.a;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    if (obj == null || !obj.getClass().isArray()) {
                        sb.append(obj);
                    } else {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    }
                    s02Var = (s02) s02Var.c;
                    str = ", ";
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.c).a(zv1.t(str));
    }

    public /* synthetic */ u00(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    public u00(ke keVar, j69 j69Var, yf1 yf1Var) {
        this.a = 8;
        this.b = j69Var;
        this.c = yf1Var;
        Objects.requireNonNull(keVar);
        this.d = keVar;
    }

    public u00(String str) {
        this.a = 9;
        s02 s02Var = new s02();
        this.c = s02Var;
        this.d = s02Var;
        this.b = str;
    }

    public /* synthetic */ u00() {
        this.a = 10;
    }

    public u00(Class cls, Class cls2, Class cls3) {
        this.a = 3;
        this.c = cls3;
        this.b = cls2;
        this.d = cls;
    }
}
