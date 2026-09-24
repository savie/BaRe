package defpackage;

import androidx.appcompat.widget.ActionBarContextView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b3 implements om8 {
    public int a;
    public boolean b;
    public final Object c;

    public b3(MessageDigest messageDigest, int i) {
        ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
        this.c = messageDigest;
        this.a = i;
    }

    @Override // defpackage.om8
    public void a() {
        this.b = true;
    }

    @Override // defpackage.om8
    public void b() {
        super/*android.view.View*/.setVisibility(0);
        this.b = false;
    }

    @Override // defpackage.om8
    public void d() {
        if (this.b) {
            return;
        }
        ActionBarContextView actionBarContextView = (ActionBarContextView) this.c;
        actionBarContextView.f = null;
        super/*android.view.View*/.setVisibility(this.a);
    }

    public b3() {
        this.c = new byte[65536];
    }

    public b3(ActionBarContextView actionBarContextView) {
        this.c = actionBarContextView;
        this.b = false;
    }
}
