package defpackage;

import java.util.Collection;
import java.util.EnumSet;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xr1 {
    public ru3 b;
    public e87 c;
    public final UUID d;
    public final EnumSet e;
    public xu6 g;
    public byte[] h;
    public wu6 i;
    public final byte[] a = new byte[0];
    public final int f = 1;

    public xr1(UUID uuid, String str, int i, di7 di7Var) {
        this.d = uuid;
        this.e = EnumSet.copyOf((Collection) di7Var.a());
        e87 e87Var = new e87();
        e87Var.b = str;
        e87Var.c = i;
        e87Var.a = false;
        this.c = e87Var;
    }

    public final boolean a(bt6 bt6Var) {
        return this.c.g.contains(bt6Var);
    }

    public final boolean b() {
        if (((us6) this.b.e) == us6.SMB_3_1_1) {
            return this.i != null;
        }
        EnumSet enumSet = this.e;
        bt6 bt6Var = bt6.SMB2_GLOBAL_CAP_ENCRYPTION;
        return enumSet.contains(bt6Var) && a(bt6Var);
    }

    public final String toString() {
        return "ConnectionContext{\n  serverGuid=" + this.c.d + ",\n  serverName='" + this.c.b + "',\n  negotiatedProtocol=" + this.b + ",\n  clientGuid=" + this.d + ",\n  clientCapabilities=" + this.e + ",\n  serverCapabilities=" + this.c.g + ",\n  clientSecurityMode=" + this.f + ",\n  serverSecurityMode=" + this.c.f + ",\n  server='" + this.c + "'\n}";
    }
}
