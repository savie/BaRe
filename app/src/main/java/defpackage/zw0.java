package defpackage;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface zw0 extends ij7, ReadableByteChannel {
    String E(long j);

    String M(Charset charset);

    long T(hy0 hy0Var);

    String X();

    nw0 c();

    void j0(long j);

    hy0 o(long j);

    long o0();

    tf6 peek();

    InputStream q0();

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    short readShort();

    boolean request(long j);

    void skip(long j);

    byte[] t();

    boolean x();

    int y(nu5 nu5Var);
}
