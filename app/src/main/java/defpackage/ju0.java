package defpackage;

import android.R;
import android.content.res.TypedArray;
import android.view.View;
import androidx.preference.Preference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ju0 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ju0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                u35 u35Var = (u35) obj;
                if (u35Var.r && u35Var.isShowing()) {
                    if (!u35Var.x) {
                        TypedArray typedArrayObtainStyledAttributes = u35Var.getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
                        u35Var.t = typedArrayObtainStyledAttributes.getBoolean(0, true);
                        typedArrayObtainStyledAttributes.recycle();
                        u35Var.x = true;
                    }
                    if (u35Var.t) {
                        u35Var.cancel();
                    }
                    break;
                }
                break;
            default:
                ((Preference) obj).w(view);
                break;
        }
    }
}
