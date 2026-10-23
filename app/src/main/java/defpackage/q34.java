package defpackage;

import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import com.google.android.material.tabs.TabLayout;
import com.jcraft.jsch.Argon2;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class q34 implements mo1, cj8, t91, a87, tt4, x98, c33, v36, zm7, dh5, eb, cs9, et9, es9, y1a {
    public static final q34 b = new q34(1);
    public static final q34 c = new q34(2);
    public static final q34 d = new q34(3);
    public static final q34 e = new q34(4);
    public static final m87 f = new m87(null, null, null, null, null);
    public static q34 k;
    public final /* synthetic */ int a;

    public /* synthetic */ q34(int i) {
        this.a = i;
    }

    public static RectF q(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.W || !(view instanceof fw7)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        fw7 fw7Var = (fw7) view;
        int contentWidth = fw7Var.getContentWidth();
        int contentHeight = fw7Var.getContentHeight();
        int iM = (int) yc9.m(fw7Var.getContext(), 24);
        if (contentWidth < iM) {
            contentWidth = iM;
        }
        int right = (fw7Var.getRight() + fw7Var.getLeft()) / 2;
        int bottom = (fw7Var.getBottom() + fw7Var.getTop()) / 2;
        int i = contentWidth / 2;
        return new RectF(right - i, bottom - (contentHeight / 2), i + right, (right / 2) + bottom);
    }

    public static Cipher t() throws GeneralSecurityException {
        try {
            Cipher cipher = (Cipher) eo9.a.get();
            if (cipher != null) {
                return cipher;
            }
            throw new GeneralSecurityException("AES GCM SIV cipher is invalid.");
        } catch (IllegalStateException e2) {
            throw new GeneralSecurityException("AES GCM SIV cipher is not available or is invalid.", e2);
        }
    }

    public static final xk9 u(Object obj, Object obj2) {
        xk9 xk9Var = (xk9) obj;
        xk9 xk9Var2 = (xk9) obj2;
        if (!xk9Var2.isEmpty()) {
            if (!xk9Var.a) {
                if (xk9Var.isEmpty()) {
                    xk9Var = new xk9();
                } else {
                    xk9 xk9Var3 = new xk9(xk9Var);
                    xk9Var3.a = true;
                    xk9Var = xk9Var3;
                }
            }
            xk9Var.b();
            if (!xk9Var2.isEmpty()) {
                xk9Var.putAll(xk9Var2);
            }
        }
        return xk9Var;
    }

    @Override // defpackage.c33
    public Object b() {
        return new ArrayList();
    }

    @Override // defpackage.zm7
    public boolean c(long j) {
        return j == 0;
    }

    @Override // defpackage.a87
    public /* bridge */ /* synthetic */ Object d() {
        return f;
    }

    @Override // defpackage.y1a
    public /* synthetic */ Object e(String str, Provider provider) {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) {
        oq9 oq9Var = (oq9) vm4Var;
        cz9 cz9VarY = dz9.y();
        cz9VarY.c();
        ((dz9) cz9VarY.b).zzf = 0;
        gz9 gz9VarB = rq9.b(oq9Var.d);
        cz9VarY.c();
        dz9.x((dz9) cz9VarY.b, gz9VarB);
        byte[] bArrB = ((d2a) oq9Var.e.a).b();
        x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
        cz9VarY.c();
        dz9.w((dz9) cz9VarY.b, x69VarG);
        return pt9.a("type.googleapis.com/google.crypto.tink.HpkePrivateKey", ((dz9) cz9VarY.b()).b(), 3, (r0a) rq9.g.k(oq9Var.d.d.d), oq9Var.H());
    }

    @Override // defpackage.et9
    public bd9 g(ot9 ot9Var) throws GeneralSecurityException {
        switch (this.a) {
            case 18:
                mz9 mz9Var = (mz9) ot9Var.b;
                if (!mz9Var.B().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                    c6.f(xs1.j("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: ", mz9Var.B()));
                    return null;
                }
                try {
                    ov9 ov9VarU = ov9.u(mz9Var.A(), f79.a);
                    if (ov9VarU.y().x() != 0) {
                        m0.h("Only version 0 keys are accepted");
                        return null;
                    }
                    fm1 fm1VarB = gf9.b();
                    fm1VarB.d(ov9VarU.x().t());
                    fm1VarB.e(ov9VarU.y().t());
                    fm1VarB.f(ov9VarU.x().y().t());
                    fm1VarB.g(ov9VarU.y().A().t());
                    fm1VarB.a = mk9.b(ov9VarU.y().A().w());
                    fm1VarB.f = mk9.a(mz9Var.z());
                    return fm1VarB.c();
                } catch (p79 e2) {
                    throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e2);
                }
            case Argon2.V13 /* 19 */:
            default:
                mz9 mz9Var2 = (mz9) ot9Var.b;
                if (!mz9Var2.B().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
                    c6.f(xs1.j("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: ", mz9Var2.B()));
                    return null;
                }
                try {
                    fv9 fv9VarU = fv9.u(mz9Var2.A(), f79.a);
                    l22 l22VarB = eu9.b();
                    l22VarB.r(fv9VarU.t());
                    l22VarB.s(fv9VarU.y().t());
                    l22VarB.d = qu9.a(mz9Var2.z());
                    return l22VarB.q();
                } catch (p79 e3) {
                    throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e3);
                }
            case 20:
                mz9 mz9Var3 = (mz9) ot9Var.b;
                if (!mz9Var3.B().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
                    c6.f(xs1.j("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: ", mz9Var3.B()));
                    return null;
                }
                try {
                    hx9.t(mz9Var3.A(), f79.a);
                    return new ah9(pm9.a(mz9Var3.z()));
                } catch (p79 e4) {
                    throw new GeneralSecurityException("Parsing ChaCha20Poly1305Parameters failed: ", e4);
                }
        }
    }

    @Override // defpackage.a87
    public void h(Object obj, qd8 qd8Var) throws IOException {
        byte[] bytes = ni4.d.b(m87.Companion.serializer(), (m87) obj).getBytes(f51.a);
        bytes.getClass();
        qd8Var.a.write(bytes);
    }

    @Override // defpackage.t91
    public Map i(String str) {
        return Collections.singletonMap("client_id", str);
    }

    @Override // defpackage.v36
    public CharSequence j(Preference preference) {
        ListPreference listPreference = (ListPreference) preference;
        CharSequence[] charSequenceArr = listPreference.l0;
        int iG = listPreference.G(listPreference.n0);
        if (TextUtils.isEmpty((iG < 0 || charSequenceArr == null) ? null : charSequenceArr[iG])) {
            return listPreference.a.getString(R.string.not_set);
        }
        int iG2 = listPreference.G(listPreference.n0);
        if (iG2 < 0 || charSequenceArr == null) {
            return null;
        }
        return charSequenceArr[iG2];
    }

    @Override // defpackage.tt4
    public void k(du4 du4Var) {
        du4Var.m();
    }

    @Override // defpackage.a87
    public Object l(FileInputStream fileInputStream) throws dy1 {
        try {
            ni4 ni4Var = ni4.d;
            String str = new String(cy0.E(fileInputStream), f51.a);
            ni4Var.getClass();
            return (m87) ni4Var.a(m87.Companion.serializer(), str);
        } catch (Exception e2) {
            throw new dy1("Cannot parse session configs", e2);
        }
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        Object objG = pp0Var.g(new nc6(ak0.class, Executor.class));
        objG.getClass();
        return rs9.e((Executor) objG);
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            c6.f("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
            return null;
        }
        try {
            l0a l0aVarU = l0a.u(pt9Var.c, f79.a);
            if (l0aVarU.t() == 0) {
                return ei9.K(ki9.a(l0aVarU.x(), pt9Var.e), pt9Var.f);
            }
            throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with version 0, got ".concat(String.valueOf(l0aVarU)));
        } catch (p79 e2) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e2);
        }
    }

    @Override // defpackage.x98
    public boolean o(Object obj, ea4 ea4Var) {
        Drawable drawable = (Drawable) obj;
        ImageView imageView = ea4Var.a;
        Drawable drawable2 = imageView.getDrawable();
        if (drawable2 == null) {
            drawable2 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        transitionDrawable.setCrossFadeEnabled(false);
        transitionDrawable.startTransition(300);
        imageView.setImageDrawable(transitionDrawable);
        return true;
    }

    @Override // defpackage.eb
    public void p(Bundle bundle) {
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Skipping logging Crashlytics event to Firebase, no Firebase Analytics", null);
        }
    }

    @Override // defpackage.cj8
    public Object r(ul4 ul4Var, float f2) {
        return Float.valueOf(gn4.d(ul4Var) * f2);
    }

    public void s(TabLayout tabLayout, View view, View view2, float f2, Drawable drawable) {
        RectF rectFQ = q(tabLayout, view);
        RectF rectFQ2 = q(tabLayout, view2);
        drawable.setBounds(ed.c(f2, (int) rectFQ.left, (int) rectFQ2.left), drawable.getBounds().top, ed.c(f2, (int) rectFQ.right, (int) rectFQ2.right), drawable.getBounds().bottom);
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        switch (this.a) {
            case 13:
                return new eq7(ai5Var.a(Uri.class, InputStream.class), 0);
            default:
                return new eq7(ai5Var.a(sy3.class, InputStream.class), 1);
        }
    }

    @Override // defpackage.tt4
    public void a(du4 du4Var) {
    }
}
