package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m62 extends qo0 {
    public mj1 e;
    public dd1 f;
    public CloudCredentials g;
    public final ix6 h = new ix6();
    public final ex6 i = new ex6();
    public final ex6 j = new ex6();
    public final ex6 k = new ex6();
    public final ix6 l = new ix6();
    public final ix6 m = new ix6();
    public final ex6 n = new ex6();
    public final ex6 o = new ex6();
    public final ix6 p = new ix6();
    public final ix6 q = new ix6();
    public final ix6 r = new ix6();
    public final ix6 s = new ix6();
    public final ex6 t = new ex6();
    public final ex6 u;
    public bl7 v;

    public m62() {
        ex6 ex6Var = new ex6();
        ex6Var.k(Boolean.FALSE);
        this.u = ex6Var;
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        bl7 bl7Var = this.v;
        if (bl7Var != null) {
            bl7Var.cancel(null);
        }
        super.b();
    }

    public final void j() {
        dd1 dd1Var = this.f;
        if (dd1Var == null) {
            pe4.F("cloudType");
            throw null;
        }
        if (z85.j(dd1Var) == null) {
            return;
        }
        bl7 bl7Var = this.v;
        if (bl7Var == null || !bl7Var.isActive()) {
            this.u.k(Boolean.TRUE);
            zn4 zn4Var = zn4.a;
            this.v = zn4.b(null, new k62(this, null));
        }
    }

    public final void k(boolean z, boolean z2) {
        CloudCredentials cloudCredentials = this.g;
        String strJ = eq3.j(this.b, ".testConnection");
        if (cloudCredentials == null || cloudCredentials.getServer().length() <= 0) {
            g84.h(strJ.concat(": Invalid credentials!"));
        } else {
            zn4 zn4Var = zn4.a;
            zn4.b(null, new l62(this, cloudCredentials, z, z2, null));
        }
    }

    public final void l(CloudCredentials cloudCredentials) {
        fd1 protocol;
        String string;
        String string2;
        this.g = cloudCredentials;
        boolean z = cloudCredentials != null && cloudCredentials.getServer().length() > 0;
        if (cloudCredentials == null || (protocol = cloudCredentials.getProtocol()) == null) {
            dd1 dd1Var = this.f;
            if (dd1Var == null) {
                pe4.F("cloudType");
                throw null;
            }
            protocol = (fd1) el1.S0(dd1Var.getProtocols());
        }
        this.n.k(protocol);
        String server = cloudCredentials != null ? cloudCredentials.getServer() : null;
        ex6 ex6Var = this.j;
        if (server == null || server.length() == 0) {
            SwiftApp.Companion companion = SwiftApp.d;
            ex6Var.k(SwiftApp.Companion.c().getString(R.string.required_field));
            z = false;
        } else {
            String strK = dj7.k(protocol.getScheme(), "://", server);
            boolean z2 = strK.length() > 0 && !nq7.j0(strK);
            if (!z2) {
                Log.e(this.b, "Invalid url: ".concat(strK));
                z = false;
            }
            if (z2) {
                string2 = null;
            } else {
                SwiftApp.Companion companion2 = SwiftApp.d;
                string2 = SwiftApp.Companion.c().getString(R.string.invalid_url);
            }
            ex6Var.k(string2);
        }
        Integer numM77getPort = cloudCredentials != null ? cloudCredentials.m77getPort() : null;
        ex6 ex6Var2 = this.k;
        if (numM77getPort == null) {
            ex6Var2.k(null);
        } else {
            int iIntValue = numM77getPort.intValue();
            boolean z3 = 1 <= iIntValue && iIntValue < 65536;
            if (!z3) {
                z = false;
            }
            if (z3) {
                string = null;
            } else {
                SwiftApp.Companion companion3 = SwiftApp.d;
                string = SwiftApp.Companion.c().getString(R.string.invalid_port);
            }
            ex6Var2.k(string);
        }
        String baseUrl$default = cloudCredentials != null ? CloudCredentials.getBaseUrl$default(cloudCredentials, false, 1, null) : null;
        if (baseUrl$default == null) {
            baseUrl$default = "";
        }
        this.o.k(baseUrl$default);
        this.i.k(Boolean.valueOf(z && baseUrl$default.length() > 0 && !nq7.j0(baseUrl$default)));
    }
}
