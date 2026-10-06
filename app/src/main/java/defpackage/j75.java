package defpackage;

import android.text.Editable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j75 implements jk8, w23 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public final Object k;

    public j75(il0 il0Var) {
        View viewInflate = View.inflate(il0Var, R.layout.note_update_dialog, null);
        int i = R.id.btn_delete;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_delete);
        if (materialButton != null) {
            i = R.id.btn_save;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_save);
            if (materialButton2 != null) {
                i = R.id.et;
                TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewInflate, R.id.et);
                if (textInputEditText != null) {
                    i = R.id.iv_cancel;
                    ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_cancel);
                    if (imageView != null) {
                        i = R.id.til;
                        TextInputLayout textInputLayout = (TextInputLayout) ms8.u(viewInflate, R.id.til);
                        if (textInputLayout != null) {
                            i = R.id.tv_title;
                            TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_title);
                            if (textView != null) {
                                this.a = new ke((NestedScrollView) viewInflate, materialButton, materialButton2, textInputEditText, imageView, textInputLayout, textView);
                                this.b = textView;
                                this.c = textInputLayout;
                                this.d = textInputEditText;
                                this.e = materialButton2;
                                this.f = materialButton;
                                this.k = imageView;
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

    public static final void b(String str, j75 j75Var) {
        MaterialButton materialButton = (MaterialButton) j75Var.e;
        if (str != null && str.length() != 0) {
            materialButton.setEnabled(!str.equals(j75Var.a()));
        } else {
            String strA = j75Var.a();
            materialButton.setEnabled(!(strA == null || strA.length() == 0));
        }
    }

    public String a() {
        String string;
        String string2;
        Editable text = ((TextInputEditText) this.d).getText();
        String string3 = text != null ? text.toString() : null;
        if (string3 == null || (string = nq7.H0(string3).toString()) == null || (string2 = nq7.H0(nq7.G0(30, string)).toString()) == null || string2.length() <= 0 || nq7.j0(string2)) {
            return null;
        }
        return string2;
    }

    @Override // defpackage.ea6
    public Object get() {
        return new kd7((l97) ((ca6) this.a).get(), (b97) ((ca6) this.b).get(), (a97) ((ca6) this.c).get(), (a48) ((ca6) this.d).get(), (fb2) ((ca6) this.e).get(), (j76) ((ca6) this.f).get(), (ox1) ((ca6) this.k).get());
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.a;
    }

    public j75(i75 i75Var) {
        this.a = (o75) i75Var.a;
        this.b = (jb9) i75Var.b;
        this.c = (sl4) i75Var.c;
        this.d = (hx0) i75Var.d;
        this.e = (hx0) i75Var.e;
        this.f = (cz4) i75Var.f;
        this.k = (ky3) i75Var.k;
    }

    public /* synthetic */ j75(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
        this.d = obj4;
        this.e = obj5;
        this.f = obj6;
        this.k = obj7;
    }
}
