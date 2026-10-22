package defpackage;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cy5 extends qw2 {
    public final int e;
    public EditText f;
    public final g7 g;

    public cy5(pw2 pw2Var, int i) {
        super(pw2Var);
        this.e = R.drawable.design_password_eye;
        this.g = new g7(this, 13);
        if (i != 0) {
            this.e = i;
        }
    }

    @Override // defpackage.qw2
    public final void b() {
        p();
    }

    @Override // defpackage.qw2
    public final int c() {
        return R.string.password_toggle_content_description;
    }

    @Override // defpackage.qw2
    public final int d() {
        return this.e;
    }

    @Override // defpackage.qw2
    public final View.OnClickListener f() {
        return this.g;
    }

    @Override // defpackage.qw2
    public final boolean j() {
        return true;
    }

    @Override // defpackage.qw2
    public final boolean k() {
        EditText editText = this.f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // defpackage.qw2
    public final void l(EditText editText) {
        this.f = editText;
        p();
    }

    @Override // defpackage.qw2
    public final void q() {
        EditText editText = this.f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // defpackage.qw2
    public final void r() {
        EditText editText = this.f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
