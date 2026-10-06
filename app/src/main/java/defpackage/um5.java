package defpackage;

import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class um5 {
    public final AtomicBoolean a = new AtomicBoolean();
    public final ExecutorService b;
    public final Tag c;
    public final int d;

    public um5(Tag tag, int i, ExecutorService executorService) {
        this.b = executorService;
        this.c = tag;
        this.d = i;
    }

    public final ky8 a() throws IOException {
        if (!tm5.class.isAssignableFrom(tm5.class)) {
            l0.e("The connection type is not supported by this session");
            return null;
        }
        IsoDep isoDep = IsoDep.get(this.c);
        if (isoDep == null) {
            y5.m("the tag does not support ISO-DEP");
            return null;
        }
        isoDep.setTimeout(this.d);
        isoDep.connect();
        ky8 ky8Var = (ky8) tm5.class.cast(new tm5(isoDep));
        Objects.requireNonNull(ky8Var);
        return ky8Var;
    }

    public final void b(vz0 vz0Var) {
        if (this.a.get()) {
            vz0Var.invoke(cn6.a(new IOException("Can't requestConnection after calling remove()")));
        } else {
            this.b.submit(new ty1(7, this, vz0Var));
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NfcYubiKeyDevice{tag=");
        sb.append(this.c);
        sb.append(", timeout=");
        return eq3.m(sb, this.d, '}');
    }
}
