package defpackage;

import android.R;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.h;
import androidx.fragment.app.o;
import androidx.preference.DialogPreference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z36 extends h implements DialogInterface.OnClickListener {
    public DialogPreference I;
    public CharSequence J;
    public CharSequence K;
    public CharSequence L;
    public CharSequence M;
    public int N;
    public BitmapDrawable O;
    public int P;

    @Override // androidx.fragment.app.h
    public final Dialog j() {
        this.P = -2;
        va vaVar = new va(requireContext());
        CharSequence charSequence = this.J;
        ra raVar = (ra) vaVar.b;
        raVar.d = charSequence;
        raVar.c = this.O;
        vaVar.j(this.K, this);
        vaVar.h(this.L, this);
        requireContext();
        int i = this.N;
        View viewInflate = i != 0 ? getLayoutInflater().inflate(i, (ViewGroup) null) : null;
        if (viewInflate != null) {
            m(viewInflate);
            raVar.s = viewInflate;
        } else {
            raVar.f = this.M;
        }
        o(vaVar);
        wa waVarC = vaVar.c();
        if (this instanceof ws2) {
            Window window = waVarC.getWindow();
            if (Build.VERSION.SDK_INT >= 30) {
                y36.a(window);
                return waVarC;
            }
            ws2 ws2Var = (ws2) this;
            ws2Var.T = SystemClock.currentThreadTimeMillis();
            ws2Var.p();
        }
        return waVarC;
    }

    public final DialogPreference l() {
        if (this.I == null) {
            this.I = (DialogPreference) ((c46) g(true)).j(requireArguments().getString("key"));
        }
        return this.I;
    }

    public void m(View view) {
        int i;
        View viewFindViewById = view.findViewById(R.id.message);
        if (viewFindViewById != null) {
            CharSequence charSequence = this.M;
            if (TextUtils.isEmpty(charSequence)) {
                i = 8;
            } else {
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(charSequence);
                }
                i = 0;
            }
            if (viewFindViewById.getVisibility() != i) {
                viewFindViewById.setVisibility(i);
            }
        }
    }

    public abstract void n(boolean z);

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.P = i;
    }

    @Override // androidx.fragment.app.h, androidx.fragment.app.o
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o oVarG = g(true);
        if (!(oVarG instanceof c46)) {
            l0.e("Target fragment must implement TargetFragment interface");
            return;
        }
        c46 c46Var = (c46) oVarG;
        String string = requireArguments().getString("key");
        if (bundle != null) {
            this.J = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.K = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.L = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.M = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.N = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.O = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) c46Var.j(string);
        this.I = dialogPreference;
        this.J = dialogPreference.f0;
        this.K = dialogPreference.i0;
        this.L = dialogPreference.j0;
        this.M = dialogPreference.g0;
        this.N = dialogPreference.k0;
        Drawable drawable = dialogPreference.h0;
        if (drawable == null || (drawable instanceof BitmapDrawable)) {
            this.O = (BitmapDrawable) drawable;
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        this.O = new BitmapDrawable(getResources(), bitmapCreateBitmap);
    }

    @Override // androidx.fragment.app.h, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        n(this.P == -1);
    }

    @Override // androidx.fragment.app.h, androidx.fragment.app.o
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.J);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.K);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.L);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.M);
        bundle.putInt("PreferenceDialogFragment.layout", this.N);
        BitmapDrawable bitmapDrawable = this.O;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    public void o(va vaVar) {
    }
}
