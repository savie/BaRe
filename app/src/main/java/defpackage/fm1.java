package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fm1 implements jk8 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;

    public fm1(gm1 gm1Var) {
        gm1Var.getClass();
        MaterialCardView materialCardView = (MaterialCardView) gm1Var.a;
        this.b = materialCardView.getContext();
        this.c = materialCardView;
        this.d = (ImageView) gm1Var.c;
        this.a = (TextView) gm1Var.e;
        this.f = (TextView) gm1Var.f;
        this.e = (ImageView) gm1Var.b;
    }

    public void a() {
        Context context = (Context) this.b;
        context.getClass();
        ColorStateList colorStateListH0 = sz8.h0(context.getColor(sz8.y(context, R.attr.colorError2)));
        context.getClass();
        ColorStateList colorStateListH1 = sz8.h0(context.getColor(sz8.y(context, R.attr.colorErrorContainer2)));
        MaterialCardView materialCardView = (MaterialCardView) this.c;
        materialCardView.setBackgroundTintList(colorStateListH0);
        materialCardView.setRippleColor(colorStateListH1);
        ImageView imageView = (ImageView) this.d;
        imageView.setBackgroundTintList(colorStateListH1);
        imageView.setImageTintList(colorStateListH0);
        ((TextView) this.a).setTextColor(colorStateListH0);
        ((TextView) this.f).setTextColor(colorStateListH0);
        ((ImageView) this.e).setImageTintList(colorStateListH0);
    }

    public void b() {
        Context context = (Context) this.b;
        context.getClass();
        ColorStateList colorStateListH0 = sz8.h0(context.getColor(sz8.y(context, R.attr.colorPrimary)));
        context.getClass();
        ColorStateList colorStateListH1 = sz8.h0(context.getColor(sz8.y(context, R.attr.colorBackgroundActivated)));
        MaterialCardView materialCardView = (MaterialCardView) this.c;
        materialCardView.setBackgroundTintList(colorStateListH0);
        materialCardView.setRippleColor(colorStateListH1);
        ImageView imageView = (ImageView) this.d;
        imageView.setBackgroundTintList(colorStateListH1);
        imageView.setImageTintList(colorStateListH0);
        TextView textView = (TextView) this.a;
        context.getClass();
        textView.setTextColor(sz8.A(context));
        ((TextView) this.f).setTextColor(colorStateListH0);
        ((ImageView) this.e).setImageTintList(colorStateListH0);
    }

    public gf9 c() {
        if (((Integer) this.b) == null) {
            m0.h("AES key size is not set");
            return null;
        }
        if (((Integer) this.c) == null) {
            m0.h("HMAC key size is not set");
            return null;
        }
        if (((Integer) this.d) == null) {
            m0.h("iv size is not set");
            return null;
        }
        Integer num = (Integer) this.e;
        if (num == null) {
            m0.h("tag size is not set");
            return null;
        }
        if (((ff9) this.a) == null) {
            m0.h("hash type is not set");
            return null;
        }
        if (((ef9) this.f) == null) {
            m0.h("variant is not set");
            return null;
        }
        int iIntValue = num.intValue();
        ff9 ff9Var = (ff9) this.a;
        if (ff9Var == ff9.c) {
            if (iIntValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num));
            }
        } else if (ff9Var == ff9.d) {
            if (iIntValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num));
            }
        } else if (ff9Var == ff9.e) {
            if (iIntValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num));
            }
        } else if (ff9Var == ff9.f) {
            if (iIntValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num));
            }
        } else {
            if (ff9Var != ff9.k) {
                m0.h("unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512");
                return null;
            }
            if (iIntValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num));
            }
        }
        return new gf9(((Integer) this.b).intValue(), ((Integer) this.c).intValue(), ((Integer) this.d).intValue(), ((Integer) this.e).intValue(), (ef9) this.f, (ff9) this.a);
    }

    public void d(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.b = Integer.valueOf(i);
    }

    public void e(int i) {
        if (i < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; HMAC key must be at least 16 bytes", Integer.valueOf(i)));
        }
        this.c = Integer.valueOf(i);
    }

    public void f(int i) {
        if (i < 12 || i > 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes", Integer.valueOf(i)));
        }
        this.d = Integer.valueOf(i);
    }

    public void g(int i) {
        if (i < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(i)));
        }
        this.e = Integer.valueOf(i);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (ConstraintLayout) this.b;
    }
}
