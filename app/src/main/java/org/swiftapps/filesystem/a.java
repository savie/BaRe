package org.swiftapps.filesystem;

import defpackage.b6;
import defpackage.c6;
import defpackage.u48;
import defpackage.xs1;
import defpackage.y5;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final void a(FileChannel fileChannel, long j, byte[] bArr, int i, int i2) throws IOException {
        if (j < 0) {
            c6.f("offset < 0");
            return;
        }
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            b6.b(bArr.length, xs1.n("Invalid buffer range: off=", i, ", len=", ", size=", i2));
            return;
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i, i2);
        while (byteBufferWrap.hasRemaining()) {
            int iWrite = fileChannel.write(byteBufferWrap, j);
            if (iWrite <= 0) {
                y5.m(u48.l(j, "Unable to write random file data at offset "));
                return;
            }
            j += (long) iWrite;
        }
    }
}
