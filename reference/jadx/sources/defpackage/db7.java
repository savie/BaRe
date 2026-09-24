package defpackage;

import java.nio.channels.FileChannel;
import java.nio.file.StandardOpenOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class db7 extends l5 {
    public int G;
    public FileChannel t;
    public String x;
    public byte[] y;

    public final eb7 K() {
        FileChannel fileChannel = this.t;
        if (fileChannel != null) {
            return new eb7(fileChannel, this.x, this.y, true, this.G);
        }
        if (this.k == null) {
            l0.e("origin == null");
            return null;
        }
        if (od2.o(this.q)) {
            StandardOpenOption standardOpenOption = StandardOpenOption.READ;
        }
        I();
        throw null;
    }
}
