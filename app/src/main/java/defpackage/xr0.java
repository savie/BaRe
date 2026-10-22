package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xr0 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xr0(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Bitmap bitmapC;
        int i = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ns0.l((BlacklistActivity) obj3, (BlacklistApp) obj2, el1.x1(((bs0) obj).e.a), null);
                break;
            default:
                mo8 mo8Var = (mo8) obj2;
                yn8 yn8Var = (yn8) obj;
                Drawable drawable = ((lo8) obj3).u.getDrawable();
                if (drawable != null && (bitmapC = ai8.c(drawable)) != null) {
                    if (!mo8Var.e.c) {
                        mo8Var.l.U(new ao8(yn8Var, bitmapC));
                    } else {
                        gm7.x(mo8Var, yn8Var);
                    }
                    break;
                }
                break;
        }
    }
}
