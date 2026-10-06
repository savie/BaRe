package defpackage;

import java.util.ArrayList;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gq {
    public final ji a;
    public final jr7 b;
    public final q63 c;
    public ArrayList d;

    public gq(ji jiVar) {
        jiVar.getClass();
        this.a = jiVar;
        String dataDir = jiVar.getDataDir();
        dataDir.getClass();
        this.b = new jr7(dataDir);
        SwiftApp.Companion companion = SwiftApp.d;
        this.c = new q63(SwiftApp.Companion.c().getCacheDir(), eq3.j(jiVar.getPackageName(), ".downgrade.sba"), 5);
    }
}
