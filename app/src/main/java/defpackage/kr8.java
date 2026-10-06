package defpackage;

import java.lang.reflect.InvocationTargetException;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class kr8 {
    public static final mr8 a;

    static {
        mr8 ns0Var;
        try {
            ns0Var = new z28((WebViewProviderFactoryBoundaryInterface) tu0.a(WebViewProviderFactoryBoundaryInterface.class, zv1.e()), 19);
        } catch (ClassNotFoundException unused) {
            ns0Var = new ns0(1);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            y5.k(e);
            return;
        }
        a = ns0Var;
    }
}
