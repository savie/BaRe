package com.microsoft.identity.common.internal.request;

import com.google.gson.a;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeWithClientKeyInternal;
import com.microsoft.identity.common.java.authscheme.WebAppsPopAuthenticationSchemeInternal;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dm4;
import defpackage.gl4;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.qm4;
import defpackage.t14;
import defpackage.z28;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AuthenticationSchemeTypeAdapter implements pj4, dm4 {
    private static final a sRequestAdapterGsonInstance;

    static {
        t14 t14Var = new t14();
        t14Var.c(new AuthenticationSchemeTypeAdapter(), AbstractAuthenticationScheme.class);
        sRequestAdapterGsonInstance = new a(t14Var);
    }

    public static a getGsonInstance() {
        return sRequestAdapterGsonInstance;
    }

    @Override // defpackage.pj4
    public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) throws gl4 {
        String strO = qj4Var.i().x("name").o();
        strO.getClass();
        switch (strO) {
            case "PoP_Pregenerated":
                return (AbstractAuthenticationScheme) z28Var.E(qj4Var, WebAppsPopAuthenticationSchemeInternal.class);
            case "PoP_With_Client_Key":
                return (AbstractAuthenticationScheme) z28Var.E(qj4Var, PopAuthenticationSchemeWithClientKeyInternal.class);
            case "PoP":
                return (AbstractAuthenticationScheme) z28Var.E(qj4Var, PopAuthenticationSchemeInternal.class);
            case "Bearer":
                return (AbstractAuthenticationScheme) z28Var.E(qj4Var, BearerAuthenticationSchemeInternal.class);
            default:
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("AuthenticationSchemeTypeAdapter:deserialize", "Unrecognized auth scheme. Deserializing as null.");
                return null;
        }
    }

    @Override // defpackage.dm4
    public final qj4 serialize(Object obj, z28 z28Var) {
        AbstractAuthenticationScheme abstractAuthenticationScheme = (AbstractAuthenticationScheme) obj;
        String name = abstractAuthenticationScheme.getName();
        name.getClass();
        switch (name) {
            case "PoP_Pregenerated":
                a aVar = ((TreeTypeAdapter) z28Var.b).c;
                aVar.getClass();
                qm4 qm4Var = new qm4();
                aVar.l(abstractAuthenticationScheme, WebAppsPopAuthenticationSchemeInternal.class, qm4Var);
                return qm4Var.Y();
            case "PoP_With_Client_Key":
                a aVar2 = ((TreeTypeAdapter) z28Var.b).c;
                aVar2.getClass();
                qm4 qm4Var2 = new qm4();
                aVar2.l(abstractAuthenticationScheme, PopAuthenticationSchemeWithClientKeyInternal.class, qm4Var2);
                return qm4Var2.Y();
            case "PoP":
                a aVar3 = ((TreeTypeAdapter) z28Var.b).c;
                aVar3.getClass();
                qm4 qm4Var3 = new qm4();
                aVar3.l(abstractAuthenticationScheme, PopAuthenticationSchemeInternal.class, qm4Var3);
                return qm4Var3.Y();
            case "Bearer":
                a aVar4 = ((TreeTypeAdapter) z28Var.b).c;
                aVar4.getClass();
                qm4 qm4Var4 = new qm4();
                aVar4.l(abstractAuthenticationScheme, BearerAuthenticationSchemeInternal.class, qm4Var4);
                return qm4Var4.Y();
            default:
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("AuthenticationSchemeTypeAdapter:serialize", "Unrecognized auth scheme. Serializing as null.");
                return null;
        }
    }
}
