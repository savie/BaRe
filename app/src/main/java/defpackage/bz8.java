package defpackage;

import java.io.IOException;
import java.io.SequenceInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bz8 extends InflaterInputStream {
    public final /* synthetic */ Inflater a;
    public final /* synthetic */ hz8 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bz8(hz8 hz8Var, SequenceInputStream sequenceInputStream, Inflater inflater, Inflater inflater2) {
        super(sequenceInputStream, inflater);
        this.b = hz8Var;
        this.a = inflater2;
    }

    @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Inflater inflater = this.a;
        try {
            super.close();
        } finally {
            inflater.end();
        }
    }

    @Override // java.util.zip.InflaterInputStream
    public final void fill() throws IOException {
        super.fill();
        ((InflaterInputStream) this).inf.getRemaining();
    }
}
