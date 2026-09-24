package defpackage;

import android.content.ComponentCallbacks;
import android.content.res.Configuration;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jv4 implements ComponentCallbacks {
    public final gv4 a;

    public jv4(gv4 gv4Var) {
        this.a = gv4Var;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) throws JSONException {
        configuration.getClass();
        this.a.invoke(configuration);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }
}
