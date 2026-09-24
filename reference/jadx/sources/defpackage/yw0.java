package defpackage;

import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface yw0 extends nh7, WritableByteChannel {
    long B(ij7 ij7Var);

    yw0 K(String str);

    yw0 P(hy0 hy0Var);

    yw0 Q(long j);

    yw0 V(rc4 rc4Var, long j);

    nw0 c();

    @Override // defpackage.nh7, java.io.Flushable
    void flush();

    OutputStream n0();

    yw0 write(byte[] bArr);

    yw0 write(byte[] bArr, int i, int i2);

    yw0 writeByte(int i);

    yw0 writeInt(int i);

    yw0 writeShort(int i);
}
