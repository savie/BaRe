package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y80 {
    public static final z80 a;
    public static final Map b;

    static {
        z80 z80VarD = z80.d(2000, "invalid_request");
        z80 z80VarD2 = z80.d(2001, "invalid_client");
        z80 z80VarD3 = z80.d(2002, "invalid_grant");
        z80 z80VarD4 = z80.d(2003, "unauthorized_client");
        z80 z80VarD5 = z80.d(2004, "unsupported_grant_type");
        z80 z80VarD6 = z80.d(2005, "invalid_scope");
        z80 z80VarD7 = z80.d(2006, null);
        z80 z80VarD8 = z80.d(2007, null);
        a = z80VarD8;
        b = z80.c(new z80[]{z80VarD, z80VarD2, z80VarD3, z80VarD4, z80VarD5, z80VarD6, z80VarD7, z80VarD8});
    }
}
