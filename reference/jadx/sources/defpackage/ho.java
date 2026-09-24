package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ho extends ko1 implements dn {
    public fo e;
    public final go f;

    /* JADX WARN: Type inference failed for: r2v2, types: [go] */
    public ho(Context context, int i) {
        int i2;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        } else {
            i2 = i;
        }
        super(context, i2);
        this.f = new mo4() { // from class: go
            @Override // defpackage.mo4
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return this.a.e(keyEvent);
            }
        };
        nn nnVarD = d();
        if (i == 0) {
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            i = typedValue2.resourceId;
        }
        ((fo) nnVarD).k0 = i;
        nnVarD.d();
    }

    @Override // defpackage.ko1, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c();
        fo foVar = (fo) d();
        foVar.w();
        ((ViewGroup) foVar.R.findViewById(android.R.id.content)).addView(view, layoutParams);
        foVar.x.a(foVar.t.getCallback());
    }

    public final nn d() {
        if (this.e == null) {
            mn mnVar = nn.a;
            this.e = new fo(getContext(), getWindow(), this, this);
        }
        return this.e;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        d().f();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return tu0.i(this.f, getWindow().getDecorView(), this, keyEvent);
    }

    public final boolean e(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final View findViewById(int i) {
        fo foVar = (fo) d();
        foVar.w();
        return foVar.t.findViewById(i);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        d().b();
    }

    @Override // defpackage.ko1, android.app.Dialog
    public void onCreate(Bundle bundle) {
        d().a();
        super.onCreate(bundle);
        d().d();
    }

    @Override // defpackage.ko1, android.app.Dialog
    public final void onStop() {
        super.onStop();
        fo foVar = (fo) d();
        foVar.A();
        nc8 nc8Var = foVar.y;
        if (nc8Var != null) {
            nc8Var.c0(false);
        }
    }

    @Override // defpackage.ko1, android.app.Dialog
    public void setContentView(int i) {
        c();
        d().i(i);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        d().l(getContext().getString(i));
    }

    @Override // defpackage.ko1, android.app.Dialog
    public void setContentView(View view) {
        c();
        d().j(view);
    }

    @Override // defpackage.ko1, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c();
        d().k(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        d().l(charSequence);
    }
}
