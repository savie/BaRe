package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i30 extends gm7 {
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
    
        if ((r1 ? defpackage.mp6.g : true) != false) goto L20;
     */
    @Override // defpackage.hg6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(defpackage.fh6 r8, int r9) {
        /*
            r7 = this;
            h30 r8 = (defpackage.h30) r8
            jl0 r7 = r7.m(r9)
            k30 r7 = (defpackage.k30) r7
            android.view.View r0 = r8.a
            r7.getClass()
            boolean r1 = r7.e
            android.widget.ImageView r2 = r8.u
            int r3 = r7.d
            r2.setImageResource(r3)
            java.lang.String r3 = r7.a
            java.lang.String r4 = "Premium"
            boolean r5 = defpackage.pe4.d(r3, r4)
            if (r5 == 0) goto L33
            android.content.Context r5 = r2.getContext()
            r5.getClass()
            r6 = 2131100837(0x7f0604a5, float:1.7814067E38)
            int r6 = r5.getColor(r6)
            int r5 = defpackage.io4.c(r5, r6)
            goto L3e
        L33:
            android.content.Context r5 = r2.getContext()
            r5.getClass()
            int r5 = defpackage.sz8.A(r5)
        L3e:
            android.content.res.ColorStateList r5 = defpackage.sz8.h0(r5)
            r2.setImageTintList(r5)
            android.widget.TextView r2 = r8.v
            int r5 = r7.c
            r2.setText(r5)
            android.widget.TextView r2 = r8.w
            boolean r5 = defpackage.mp6.g
            r6 = 1
            if (r5 != 0) goto L57
            if (r1 == 0) goto L57
            r5 = r6
            goto L58
        L57:
            r5 = 0
        L58:
            defpackage.sz8.d0(r2, r5)
            android.view.View r2 = r8.x
            defpackage.sz8.W(r2)
            boolean r2 = defpackage.pe4.d(r3, r4)
            if (r2 == 0) goto L67
            goto L7d
        L67:
            gv7 r2 = r7.n
            java.lang.Object r2 = r2.getValue()
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L8d
            if (r1 == 0) goto L7a
            boolean r1 = defpackage.mp6.g
            goto L7b
        L7a:
            r1 = r6
        L7b:
            if (r1 == 0) goto L8d
        L7d:
            r1 = 1065353216(0x3f800000, float:1.0)
            r0.setAlpha(r1)
            i30 r8 = r8.y
            ri r1 = new ri
            r1.<init>(r8, r9, r6, r7)
            r0.setOnClickListener(r1)
            return
        L8d:
            r7 = 1056964608(0x3f000000, float:0.5)
            r0.setAlpha(r7)
            r7 = 0
            r0.setOnClickListener(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i30.h(fh6, int):void");
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.apps_config_actions_dialog_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new h30(this, view);
    }
}
