package defpackage;

import android.text.Editable;
import android.text.Selection;
import android.util.Base64;
import android.view.View;
import androidx.fragment.app.u;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Signature;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lv1 implements nx1, mo1, dh5, dl9, um8, kx0, aa1, es3, c33, v79, cs9, et9, y1a {
    public static final /* synthetic */ lv1 b = new lv1(0);
    public static final /* synthetic */ lv1 c = new lv1(1);
    public static final lv1 d = new lv1(2);
    public static final l0 e = new l0(12);
    public static final lv1 f = new lv1(4);
    public static final lv1 k = new lv1(5);
    public static final lv1 n = new lv1(6);
    public final /* synthetic */ int a;

    public /* synthetic */ lv1(int i) {
        this.a = i;
    }

    public static ByteArrayInputStream d(String str) {
        if (!str.startsWith("data:image")) {
            c6.f("Not a valid image data URL.");
            return null;
        }
        int iIndexOf = str.indexOf(44);
        if (iIndexOf == -1) {
            c6.f("Missing comma in data URL.");
            return null;
        }
        if (str.substring(0, iIndexOf).endsWith(";base64")) {
            return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
        }
        c6.f("Not a base64 image data URL.");
        return null;
    }

    public static gf0 f(String str) {
        x23 x23Var = (x23) hf0.a.get(str);
        if (x23Var != null) {
            return (gf0) x23Var.b();
        }
        c6.f("Unknown AEADCipher ".concat(str));
        return null;
    }

    public static c55 h(String str) {
        if (!Objects.equals(str, "HMACT64")) {
            return new lg0(str);
        }
        qg0 qg0Var = new qg0("MD5");
        l22 l22Var = new l22((byte) 0, 3);
        l22Var.c = new byte[64];
        l22Var.d = new byte[64];
        l22Var.b = qg0Var;
        return l22Var;
    }

    public static boolean i(su2 su2Var, Editable editable, int i, int i2, boolean z) {
        int iMin;
        if (editable != null && i >= 0 && i2 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd) {
                if (z) {
                    int iMax = Math.max(i, 0);
                    int length = editable.length();
                    if (selectionStart >= 0 && length >= selectionStart && iMax >= 0) {
                        loop0: while (true) {
                            boolean z2 = false;
                            while (true) {
                                if (iMax == 0) {
                                    break loop0;
                                }
                                selectionStart--;
                                if (selectionStart < 0) {
                                    if (!z2) {
                                        selectionStart = 0;
                                        break loop0;
                                    }
                                    break loop0;
                                }
                                char cCharAt = editable.charAt(selectionStart);
                                if (z2) {
                                    if (Character.isHighSurrogate(cCharAt)) {
                                        iMax--;
                                    }
                                } else if (!Character.isSurrogate(cCharAt)) {
                                    iMax--;
                                } else if (!Character.isHighSurrogate(cCharAt)) {
                                    z2 = true;
                                }
                                selectionStart = -1;
                                break loop0;
                            }
                        }
                    }
                    selectionStart = -1;
                    break loop0;
                    int iMax2 = Math.max(i2, 0);
                    iMin = editable.length();
                    if (selectionEnd >= 0 && iMin >= selectionEnd && iMax2 >= 0) {
                        loop2: while (true) {
                            boolean z3 = false;
                            while (true) {
                                if (iMax2 != 0) {
                                    if (selectionEnd >= iMin) {
                                        if (!z3) {
                                            break loop2;
                                        }
                                        break loop2;
                                    }
                                    char cCharAt2 = editable.charAt(selectionEnd);
                                    if (z3) {
                                        if (Character.isLowSurrogate(cCharAt2)) {
                                            iMax2--;
                                            selectionEnd++;
                                        }
                                    } else if (!Character.isSurrogate(cCharAt2)) {
                                        iMax2--;
                                        selectionEnd++;
                                    } else if (!Character.isLowSurrogate(cCharAt2)) {
                                        selectionEnd++;
                                        z3 = true;
                                    }
                                    iMin = -1;
                                    break loop2;
                                }
                                iMin = selectionEnd;
                                break loop2;
                            }
                        }
                    }
                    iMin = -1;
                    break loop2;
                    if (selectionStart != -1 && iMin != -1) {
                    }
                } else {
                    selectionStart = Math.max(selectionStart - i, 0);
                    iMin = Math.min(selectionEnd + i2, editable.length());
                }
                bd8[] bd8VarArr = (bd8[]) editable.getSpans(selectionStart, iMin, bd8.class);
                if (bd8VarArr != null && bd8VarArr.length > 0) {
                    for (bd8 bd8Var : bd8VarArr) {
                        int spanStart = editable.getSpanStart(bd8Var);
                        int spanEnd = editable.getSpanEnd(bd8Var);
                        selectionStart = Math.min(spanStart, selectionStart);
                        iMin = Math.max(spanEnd, iMin);
                    }
                    int iMax3 = Math.max(selectionStart, 0);
                    int iMin2 = Math.min(iMin, editable.length());
                    su2Var.beginBatchEdit();
                    editable.delete(iMax3, iMin2);
                    su2Var.endBatchEdit();
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.kx0
    public Class a() {
        return ByteBuffer.class;
    }

    @Override // defpackage.c33
    public Object b() {
        return new z05();
    }

    @Override // defpackage.y1a
    public /* synthetic */ Object e(String str, Provider provider) {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }

    @Override // defpackage.et9
    public bd9 g(ot9 ot9Var) throws GeneralSecurityException {
        switch (this.a) {
            case 23:
                mz9 mz9Var = (mz9) ot9Var.b;
                if (!mz9Var.B().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                    c6.f(xs1.j("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: ", mz9Var.B()));
                    return null;
                }
                try {
                    ow9 ow9VarU = ow9.u(mz9Var.A(), f79.a);
                    if (ow9VarU.w() != 0) {
                        m0.h("Only version 0 parameters are accepted");
                        return null;
                    }
                    bs2 bs2VarB = kg9.b();
                    bs2VarB.m(ow9VarU.t());
                    bs2VarB.l();
                    bs2VarB.n();
                    bs2VarB.e = al9.a(mz9Var.z());
                    return bs2VarB.k();
                } catch (p79 e2) {
                    throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e2);
                }
            default:
                mz9 mz9Var2 = (mz9) ot9Var.b;
                if (!mz9Var2.B().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
                    c6.f(xs1.j("Wrong type URL in call to HmacProtoSerialization.parseParameters: ", mz9Var2.B()));
                    return null;
                }
                try {
                    my9 my9VarU = my9.u(mz9Var2.A(), f79.a);
                    if (my9VarU.x() != 0) {
                        throw new GeneralSecurityException(fz5.j(my9VarU.x(), "Parsing HmacParameters failed: unknown Version "));
                    }
                    kc kcVarB = mu9.b();
                    kcVarB.b = Integer.valueOf(my9VarU.t());
                    kcVarB.c = Integer.valueOf(my9VarU.A().t());
                    kcVarB.d = (lu9) su9.b.l(my9VarU.A().w());
                    kcVarB.e = (ku9) su9.a.l(mz9Var2.z());
                    return kcVarB.c();
                } catch (p79 e3) {
                    throw new GeneralSecurityException("Parsing HmacParameters failed: ", e3);
                }
        }
    }

    @Override // defpackage.kx0
    public Object j(byte[] bArr) {
        return ByteBuffer.wrap(bArr);
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        Object objG = pp0Var.g(new nc6(ht0.class, Executor.class));
        objG.getClass();
        return rs9.e((Executor) objG);
    }

    @Override // defpackage.aa1
    public long millis() {
        return System.currentTimeMillis();
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            c6.f("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
            return null;
        }
        try {
            lv9 lv9VarU = lv9.u(pt9Var.c, f79.a);
            if (lv9VarU.t() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (lv9VarU.y().t() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
            }
            if (lv9VarU.z().t() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
            }
            fm1 fm1VarB = gf9.b();
            fm1VarB.d(lv9VarU.y().z().d());
            fm1VarB.e(lv9VarU.z().A().d());
            fm1VarB.f(lv9VarU.y().y().t());
            fm1VarB.g(lv9VarU.z().z().t());
            fm1VarB.a = mk9.b(lv9VarU.z().z().w());
            fm1VarB.f = mk9.a(pt9Var.e);
            gf9 gf9VarC = fm1VarB.c();
            ai5 ai5Var = new ai5(8);
            ai5Var.c = null;
            ai5Var.d = null;
            ai5Var.e = null;
            ai5Var.b = gf9VarC;
            ai5Var.c = new km8(d2a.a(lv9VarU.y().z().w()));
            ai5Var.d = new km8(d2a.a(lv9VarU.z().A().w()));
            ai5Var.e = pt9Var.f;
            return ai5Var.B();
        } catch (p79 unused) {
            m0.h("Parsing AesCtrHmacAeadKey failed");
            return null;
        }
    }

    @Override // defpackage.um8
    public tv8 o(View view, tv8 tv8Var, vm8 vm8Var) {
        vm8Var.d = tv8Var.a() + vm8Var.d;
        boolean z = view.getLayoutDirection() == 1;
        int iB = tv8Var.b();
        int iC = tv8Var.c();
        int i = vm8Var.a + (z ? iC : iB);
        vm8Var.a = i;
        int i2 = vm8Var.c;
        if (!z) {
            iB = iC;
        }
        int i3 = i2 + iB;
        vm8Var.c = i3;
        view.setPaddingRelative(i, vm8Var.b, i3, vm8Var.d);
        return tv8Var;
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        switch (this.a) {
            case 5:
                return fe8.b;
            default:
                return new jg8(ai5Var.a(sy3.class, InputStream.class));
        }
    }

    @Override // defpackage.v79
    public d89 zza(Class cls) {
        throw new IllegalStateException("This should never be called.");
    }

    @Override // defpackage.dl9
    public hm9 zzb(Class cls) {
        if (!xi9.class.isAssignableFrom(cls)) {
            c6.f("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (hm9) xi9.m(cls.asSubclass(xi9.class)).j(3);
        } catch (Exception e2) {
            e6.i("Unable to get message info for ".concat(cls.getName()), e2);
            return null;
        }
    }

    @Override // defpackage.dl9
    public boolean zzc(Class cls) {
        return xi9.class.isAssignableFrom(cls);
    }

    @Override // defpackage.es3
    public void c(u uVar) {
    }

    @Override // defpackage.v79
    /* JADX INFO: renamed from: zzb, reason: collision with other method in class */
    public boolean mo73zzb(Class cls) {
        return false;
    }
}
