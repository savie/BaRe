package defpackage;

import android.content.Context;
import com.gun0912.tedpermission.provider.TedPermissionProvider;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kz7 {
    public final Context a;
    public cz5 b;
    public String[] c;
    public final boolean d;
    public final String e;
    public final String f;
    public final int g;

    public kz7() {
        Context context = TedPermissionProvider.a;
        this.a = context;
        this.d = true;
        this.e = context.getString(R.string.tedpermission_close);
        this.f = context.getString(R.string.tedpermission_confirm);
        this.g = -1;
    }
}
