package defpackage;

import org.swiftapps.swiftbackup.folders.data.Manifest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class v55 {
    public final kj3 a;

    public v55(kj3 kj3Var) {
        kj3Var.getClass();
        this.a = kj3Var;
    }

    public static Manifest a(q63 q63Var) {
        Manifest manifestB = tm3.b(q63Var);
        if (manifestB != null) {
            return manifestB;
        }
        p93 p93Var = p93.a;
        q.g("Manifest not readable at ", q63Var, " (", p93.c(Long.valueOf(q63Var.A())), ")");
        return null;
    }

    public static void b(q63 q63Var, Manifest manifest) {
        manifest.getClass();
        q63Var.getClass();
        try {
            q63.K(q63Var, tm3.a(manifest));
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "FolderManifestJson", xs1.i(q63Var, "saveManifestFile: Error while writing manifest file at "), null, 4, null);
            throw e;
        }
    }
}
