package defpackage;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.ferfalk.simplesearchview.SimpleSearchView;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class k52 implements TextWatcher {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ k52(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004a  */
    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        xq6 xq6Var;
        String string;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                CsActivity csActivity = (CsActivity) obj;
                if (!csActivity.I0) {
                    xq6 xq6Var2 = xq6.j;
                    Object obj2 = null;
                    String string2 = (editable == null || (string = editable.toString()) == null) ? null : nq7.H0(string).toString();
                    for (Object obj3 : xq6.m) {
                        if (pe4.d(((xq6) obj3).b, string2)) {
                            obj2 = obj3;
                            xq6Var = (xq6) obj2;
                            if (xq6Var == null) {
                                xq6Var = xq6.j;
                            }
                            csActivity.H0 = xq6Var;
                            y13.D((ImageView) csActivity.e0.getValue(), xq6Var.c, xq6Var.b, 3.0f);
                            csActivity.Z(xq6Var, true);
                            csActivity.a0().l(csActivity.m0());
                            break;
                        }
                    }
                    xq6Var = (xq6) obj2;
                    if (xq6Var == null) {
                        xq6Var = xq6.j;
                    }
                    csActivity.H0 = xq6Var;
                    y13.D((ImageView) csActivity.e0.getValue(), xq6Var.c, xq6Var.b, 3.0f);
                    csActivity.Z(xq6Var, true);
                    csActivity.a0().l(csActivity.m0());
                    break;
                }
                break;
            case 1:
                ((d7) obj).invoke(editable);
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.a;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        switch (this.a) {
            case 0:
            case 1:
                break;
            default:
                SimpleSearchView simpleSearchView = (SimpleSearchView) this.b;
                if (!simpleSearchView.M) {
                    simpleSearchView.d = charSequence;
                    boolean zIsEmpty = TextUtils.isEmpty(charSequence);
                    ImageButton imageButton = simpleSearchView.y;
                    if (zIsEmpty) {
                        imageButton.setVisibility(8);
                        simpleSearchView.c(true);
                    } else {
                        imageButton.setVisibility(0);
                        simpleSearchView.c(false);
                    }
                    if (simpleSearchView.K != null && !TextUtils.equals(charSequence, simpleSearchView.e)) {
                        simpleSearchView.K.m(charSequence.toString());
                    }
                    simpleSearchView.e = charSequence.toString();
                }
                break;
        }
    }

    private final void a(Editable editable) {
    }

    private final void b(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void c(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void d(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void e(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void f(int i, int i2, int i3, CharSequence charSequence) {
    }
}
