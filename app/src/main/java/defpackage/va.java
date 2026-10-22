package defpackage;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class va {
    public final int a;
    public final Object b;

    public va(Context context, int i) {
        this.b = new ra(new ContextThemeWrapper(context, wa.h(context, i)));
        this.a = i;
    }

    public byte[] a(byte[] bArr, byte[] bArr2) {
        String str;
        if (bArr.length != this.a) {
            str = "wrong key length";
        } else {
            if (bArr2.length == 32) {
                return b(3, bArr, bArr2);
            }
            str = "wrong address length";
        }
        c6.f(str);
        return null;
    }

    public byte[] b(int i, byte[] bArr, byte[] bArr2) {
        long j = i;
        int i2 = this.a;
        byte[] bArrJ = jd4.J(i2, j);
        hl2 hl2Var = (hl2) this.b;
        hl2Var.update(bArrJ, 0, bArrJ.length);
        hl2Var.update(bArr, 0, bArr.length);
        hl2Var.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[i2];
        if (hl2Var instanceof lr6) {
            ((lr6) hl2Var).l(bArr3, 0, i2);
            return bArr3;
        }
        hl2Var.doFinal(bArr3, 0);
        return bArr3;
    }

    public wa c() {
        ListAdapter taVar;
        ra raVar = (ra) this.b;
        ContextThemeWrapper contextThemeWrapper = raVar.a;
        ContextThemeWrapper contextThemeWrapper2 = raVar.a;
        wa waVar = new wa(contextThemeWrapper, this.a);
        View view = raVar.e;
        ua uaVar = waVar.k;
        if (view != null) {
            uaVar.w = view;
        } else {
            CharSequence charSequence = raVar.d;
            if (charSequence != null) {
                uaVar.d = charSequence;
                TextView textView = uaVar.u;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = raVar.c;
            if (drawable != null) {
                uaVar.s = drawable;
                ImageView imageView = uaVar.t;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    uaVar.t.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = raVar.f;
        if (charSequence2 != null) {
            uaVar.e = charSequence2;
            TextView textView2 = uaVar.v;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = raVar.g;
        if (charSequence3 != null) {
            uaVar.c(-1, charSequence3, raVar.h);
        }
        CharSequence charSequence4 = raVar.i;
        if (charSequence4 != null) {
            uaVar.c(-2, charSequence4, raVar.j);
        }
        CharSequence charSequence5 = raVar.k;
        if (charSequence5 != null) {
            uaVar.c(-3, charSequence5, raVar.l);
        }
        if (raVar.p != null || raVar.q != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) raVar.b.inflate(uaVar.A, (ViewGroup) null);
            if (raVar.u) {
                taVar = new oa(raVar, contextThemeWrapper2, uaVar.B, raVar.p, alertController$RecycleListView);
            } else {
                int i = raVar.v ? uaVar.C : uaVar.D;
                taVar = raVar.q;
                if (taVar == null) {
                    taVar = new ta(contextThemeWrapper2, i, R.id.text1, raVar.p);
                }
            }
            uaVar.x = taVar;
            uaVar.y = raVar.w;
            if (raVar.r != null) {
                alertController$RecycleListView.setOnItemClickListener(new pa(raVar, uaVar));
            } else if (raVar.x != null) {
                alertController$RecycleListView.setOnItemClickListener(new qa(raVar, alertController$RecycleListView, uaVar));
            }
            if (raVar.v) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (raVar.u) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            uaVar.f = alertController$RecycleListView;
        }
        View view2 = raVar.s;
        if (view2 != null) {
            uaVar.g = view2;
            uaVar.h = false;
        }
        waVar.setCancelable(raVar.m);
        if (raVar.m) {
            waVar.setCanceledOnTouchOutside(true);
        }
        waVar.setOnCancelListener(null);
        waVar.setOnDismissListener(raVar.n);
        gc5 gc5Var = raVar.o;
        if (gc5Var != null) {
            waVar.setOnKeyListener(gc5Var);
        }
        return waVar;
    }

    public va d(int i) {
        ra raVar = (ra) this.b;
        raVar.f = raVar.a.getText(i);
        return this;
    }

    public void e(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        ra raVar = (ra) this.b;
        raVar.p = charSequenceArr;
        raVar.x = onMultiChoiceClickListener;
        raVar.t = zArr;
        raVar.u = true;
    }

    public va f(int i, DialogInterface.OnClickListener onClickListener) {
        ra raVar = (ra) this.b;
        raVar.i = raVar.a.getText(i);
        raVar.j = onClickListener;
        return this;
    }

    public va h(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        ra raVar = (ra) this.b;
        raVar.i = charSequence;
        raVar.j = onClickListener;
        return this;
    }

    public va i(int i, DialogInterface.OnClickListener onClickListener) {
        ra raVar = (ra) this.b;
        raVar.g = raVar.a.getText(i);
        raVar.h = onClickListener;
        return this;
    }

    public void j(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        ra raVar = (ra) this.b;
        raVar.g = charSequence;
        raVar.h = onClickListener;
    }

    public void k(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        ra raVar = (ra) this.b;
        raVar.p = charSequenceArr;
        raVar.r = onClickListener;
        raVar.w = i;
        raVar.v = true;
    }

    public va l(int i) {
        ra raVar = (ra) this.b;
        raVar.d = raVar.a.getText(i);
        return this;
    }

    public wa m() {
        wa waVarC = c();
        waVarC.show();
        return waVarC;
    }

    public va(Context context) {
        this(context, wa.h(context, 0));
    }

    public va(int i, f1 f1Var) {
        if (f1Var == null) {
            f6.n("digest == null");
            throw null;
        }
        this.b = ll2.a(f1Var);
        this.a = i;
    }
}
