package defpackage;

import android.content.Context;
import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class j54 {
    public final Context a;
    public final bt3 b;
    public final bt3 c;

    public j54(Context context) {
        ik0 ik0Var = ik0.a;
        ji1 ji1Var = new ji1(0, ik0Var, ik0.class, "hasTelephony", "hasTelephony()Z", 0, 1);
        i54 i54Var = new i54(0, ik0Var, ik0.class, "hasWallpaper", "hasWallpaper()Z", 0, 0);
        this.a = context;
        this.b = ji1Var;
        this.c = i54Var;
    }

    public final s54 a(int i, int i2, int i3, int i4, int i5) {
        String string = this.a.getString(i2);
        string.getClass();
        return new s54(fz5.j(i, "shortcut:"), u54.SHORTCUTS, string, (String) null, i3, i4, (ji) null, (FolderItem) null, Integer.valueOf(i), (zc6) null, nc8.I(string), i5, 1472);
    }
}
