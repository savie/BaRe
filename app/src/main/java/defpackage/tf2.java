package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tf2 implements z23, jk8 {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;

    public tf2(ea6 ea6Var, ea6 ea6Var2, l22 l22Var, ea6 ea6Var3, ea6 ea6Var4) {
        this.a = 0;
        this.b = ea6Var;
        this.c = ea6Var2;
        this.f = l22Var;
        this.d = ea6Var3;
        this.e = ea6Var4;
    }

    public static tf2 a(View view) {
        Toolbar toolbar = (Toolbar) view;
        int i = R.id.toolbar_texts;
        ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(view, R.id.toolbar_texts);
        if (constraintLayout != null) {
            i = R.id.tv_subtitle;
            TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
            if (textView != null) {
                i = R.id.tv_title;
                CheckedTextView checkedTextView = (CheckedTextView) ms8.u(view, R.id.tv_title);
                if (checkedTextView != null) {
                    return new tf2(toolbar, toolbar, constraintLayout, textView, checkedTextView, 2);
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.ea6
    public Object get() {
        return new sf2((Executor) ((ea6) this.b).get(), (mf5) ((ea6) this.c).get(), (e41) ((l22) this.f).get(), (mw6) ((ea6) this.d).get(), (mw6) ((ea6) this.e).get());
    }

    @Override // defpackage.jk8
    public View getRoot() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 1:
                return (LinearLayout) obj;
            default:
                return (Toolbar) obj;
        }
    }

    public /* synthetic */ tf2(ViewGroup viewGroup, ViewGroup viewGroup2, View view, TextView textView, TextView textView2, int i) {
        this.a = i;
        this.b = viewGroup;
        this.c = viewGroup2;
        this.d = view;
        this.e = textView;
        this.f = textView2;
    }
}
