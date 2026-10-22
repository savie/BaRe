package defpackage;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rx0 implements ra2 {
    public final File a;

    public rx0(File file) {
        this.a = file;
    }

    @Override // defpackage.ra2
    public final Class a() {
        return ByteBuffer.class;
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) {
        try {
            qa2Var.f(ay0.a(this.a));
        } catch (IOException e) {
            if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e);
            }
            qa2Var.b(e);
        }
    }

    @Override // defpackage.ra2
    public final int e() {
        return 1;
    }

    @Override // defpackage.ra2
    public final void c() {
    }

    @Override // defpackage.ra2
    public final void cancel() {
    }
}
