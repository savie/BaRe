package defpackage;

import android.view.View;
import android.view.Window;
import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uv8 extends y13 {
    public final Window h;

    public uv8(Window window, ge geVar) {
        this.h = window;
    }

    @Override // defpackage.y13
    public final void B(boolean z) {
        if (!z) {
            S(16);
            return;
        }
        Window window = this.h;
        window.clearFlags(134217728);
        window.addFlags(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        R(16);
    }

    @Override // defpackage.y13
    public final void C(boolean z) {
        if (!z) {
            S(8192);
            return;
        }
        Window window = this.h;
        window.clearFlags(67108864);
        window.addFlags(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        R(8192);
    }

    public final void R(int i) {
        View decorView = this.h.getDecorView();
        decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
    }

    public final void S(int i) {
        View decorView = this.h.getDecorView();
        decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
    }

    @Override // defpackage.y13
    public final boolean q() {
        return (this.h.getDecorView().getSystemUiVisibility() & 8192) != 0;
    }
}
