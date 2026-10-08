package defpackage;

import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ux3 implements ql6 {
    public static final rx3 a = new rx3(256);
    public static final gv7 b = new gv7(new el(15));

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        ((sx3) obj).getClass();
        return true;
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) throws IOException {
        Drawable drawable;
        Drawable drawableMutate;
        Drawable drawableCreateFromStream;
        Object obj2;
        q63 q63VarC;
        Drawable drawableNewDrawable;
        sx3 sx3Var = (sx3) obj;
        sx3Var.getClass();
        rx3 rx3Var = a;
        synchronized (rx3Var) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) rx3Var.get(sx3Var.a());
            drawable = null;
            obj2 = null;
            drawableMutate = (constantState == null || (drawableNewDrawable = constantState.newDrawable()) == null) ? null : drawableNewDrawable.mutate();
        }
        int i3 = 0;
        if (drawableMutate != null) {
            return new tx3(i3, drawableMutate);
        }
        try {
            if (sx3Var.b) {
                g00 g00Var = g00.a;
                drawableCreateFromStream = g00.r().getApplicationIcon(sx3Var.a);
            } else {
                drawableCreateFromStream = null;
            }
            if (drawableCreateFromStream == null) {
                try {
                    Set set = j94.a;
                    q63 q63Var = new q63(j94.b(sx3Var.a), 1);
                    if (q63Var.j()) {
                        InputStream inputStreamW = q63Var.w(false);
                        try {
                            drawableCreateFromStream = Drawable.createFromStream(inputStreamW, null);
                            inputStreamW.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                rs9.c(inputStreamW, th);
                                throw th2;
                            }
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    drawable = drawableCreateFromStream;
                    drawableCreateFromStream = drawable;
                }
            }
            if (drawableCreateFromStream == null) {
                Parcelable.Creator<hk> creator = hk.CREATOR;
                List listB = fk.b(sx3Var.a);
                if (listB != null) {
                    for (Object obj3 : listB) {
                        if (((hk) obj3).c().j()) {
                            obj2 = obj3;
                            break;
                        }
                    }
                    hk hkVar = (hk) obj2;
                    if (hkVar != null && (q63VarC = hkVar.c()) != null) {
                        g00 g00Var2 = g00.a;
                        drawableCreateFromStream = g00.o(q63VarC);
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        if (drawableCreateFromStream == null) {
            drawableCreateFromStream = (Drawable) b.getValue();
        }
        Drawable.ConstantState constantState2 = drawableCreateFromStream.getConstantState();
        if (constantState2 != null) {
            rx3 rx3Var2 = a;
            synchronized (rx3Var2) {
            }
        }
        return new tx3(i3, drawableCreateFromStream);
    }
}
