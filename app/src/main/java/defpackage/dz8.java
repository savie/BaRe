package defpackage;

import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.StandardOpenOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dz8 extends l5 {
    public static final Charset y = StandardCharsets.UTF_8;
    public FileChannel t;
    public boolean x;

    public final hz8 K() {
        FileChannel fileChannel = this.t;
        if (fileChannel != null) {
            return new hz8(fileChannel, fileChannel.getClass().getSimpleName(), this.n, this.x, this.t != null);
        }
        if (this.k == null) {
            l0.e("origin == null");
            return null;
        }
        if (this.q.length == 0) {
            StandardOpenOption standardOpenOption = StandardOpenOption.READ;
        }
        I();
        throw null;
    }
}
