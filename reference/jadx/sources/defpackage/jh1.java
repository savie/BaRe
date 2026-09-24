package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public interface jh1 {
    default boolean a() {
        return !(this instanceof o23);
    }

    void b();

    tc4 c(String str, t15 t15Var);

    CloudOperationsImpl$LoginResult d(boolean z);

    void e(c62 c62Var, String str, long j, cz czVar);

    pg1 f(String str);

    dd1 g();

    void h(String str);

    boolean i();

    void j(String str);

    boolean k();

    ni1 l();

    boolean m();

    String n();

    default ih1 o(String str) {
        try {
            return r(str) ? ih1.Exists : ih1.Missing;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, n(), "getMetadataPathExistence: Exists check failed for path: ".concat(str), e, null, 8, null);
            return ih1.Unknown;
        }
    }

    String p();

    default hh1 q(String str) {
        str.getClass();
        try {
            return new gh1(s(str));
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, n(), "listMetadataDirectory: List failed for path: ".concat(str), e, null, 8, null);
            return fh1.a;
        }
    }

    boolean r(String str);

    List s(String str);
}
