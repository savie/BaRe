package defpackage;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Random;
import java.util.UUID;
import javax.net.SocketFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class di7 {
    public static final cz4 t = new cz4(10);
    public static final boolean u;
    public SocketFactory c;
    public UUID e;
    public boolean f;
    public boolean g;
    public lv1 h;
    public int i;
    public long j;
    public int k;
    public long l;
    public int m;
    public cz4 n;
    public long o;
    public us2 p;
    public boolean q;
    public z28 r;
    public int s;
    public final EnumSet a = EnumSet.noneOf(us6.class);
    public Random d = new SecureRandom();
    public final ArrayList b = new ArrayList();

    static {
        boolean z;
        try {
            Class.forName("android.os.Build");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        u = z;
    }

    public final EnumSet a() {
        if (!us6.b(this.a)) {
            return EnumSet.noneOf(bt6.class);
        }
        EnumSet enumSetOf = EnumSet.of(bt6.SMB2_GLOBAL_CAP_LARGE_MTU);
        if (this.q) {
            enumSetOf.add(bt6.SMB2_GLOBAL_CAP_ENCRYPTION);
        }
        return enumSetOf;
    }
}
