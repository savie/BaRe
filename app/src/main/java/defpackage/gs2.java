package defpackage;

import android.text.Editable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: loaded from: classes.dex */
public final class gs2 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public final Object g;
    public final Object h;

    public gs2(il0 il0Var) {
        this.a = il0Var;
        View viewInflate = View.inflate(il0Var, R.layout.user_active_password_dialog, null);
        int i = R.id.btn_cancel;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_cancel);
        if (materialButton != null) {
            i = R.id.btn_save;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_save);
            if (materialButton2 != null) {
                i = R.id.iv_icon;
                if (((ImageView) ms8.u(viewInflate, R.id.iv_icon)) != null) {
                    i = R.id.til_confirm_password;
                    View viewU = ms8.u(viewInflate, R.id.til_confirm_password);
                    if (viewU != null) {
                        ka kaVarB = ka.b(viewU);
                        i = R.id.til_password;
                        View viewU2 = ms8.u(viewInflate, R.id.til_password);
                        if (viewU2 != null) {
                            ka kaVarB2 = ka.b(viewU2);
                            i = R.id.tv_title;
                            if (((TextView) ms8.u(viewInflate, R.id.tv_title)) != null) {
                                this.b = new nh((NestedScrollView) viewInflate, materialButton, materialButton2, kaVarB, kaVarB2);
                                this.c = (TextInputLayout) kaVarB2.c;
                                this.d = (TextInputEditText) kaVarB2.b;
                                this.e = (TextInputLayout) kaVarB.c;
                                this.f = (TextInputEditText) kaVarB.b;
                                this.g = materialButton2;
                                this.h = materialButton;
                                return;
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    public String a() {
        String string;
        String string2;
        Editable text = ((TextInputEditText) this.f).getText();
        if (text == null || (string = text.toString()) == null || (string2 = nq7.H0(string).toString()) == null || (string2.length() <= 0 && nq7.j0(string2))) {
            return null;
        }
        return string2;
    }

    public String b() {
        String string;
        String string2;
        Editable text = ((TextInputEditText) this.d).getText();
        if (text == null || (string = text.toString()) == null || (string2 = nq7.H0(string).toString()) == null || (string2.length() <= 0 && nq7.j0(string2))) {
            return null;
        }
        return string2;
    }

    public void c() {
        String strA;
        String strB = b();
        boolean z = false;
        boolean zEquals = (strB == null || (strA = a()) == null) ? false : strB.equals(strA);
        MaterialButton materialButton = (MaterialButton) this.g;
        String strB2 = b();
        if (strB2 != null && strB2.length() != 0 && zEquals) {
            z = true;
        }
        materialButton.setEnabled(z);
        materialButton.setAlpha(materialButton.isEnabled() ? 1.0f : 0.6f);
        TextInputLayout textInputLayout = (TextInputLayout) this.e;
        String strB3 = b();
        textInputLayout.setError((strB3 == null || strB3.length() == 0 || zEquals) ? null : ((il0) this.a).getString(R.string.passwords_matching_error));
    }

    public gs2() {
        this.a = new int[16];
        this.b = new int[16];
        this.c = new int[16];
        this.d = new int[16];
        this.e = new int[16];
        this.f = new int[16];
        this.g = new int[16];
        this.h = new int[16];
    }
}
