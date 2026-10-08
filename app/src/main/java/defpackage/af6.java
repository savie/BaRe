package defpackage;

import java.io.DataInputStream;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class af6 extends ye6 {
    public final DataInputStream j;

    public af6(InputStream inputStream) throws cy1 {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.j = dataInputStream;
        if (dataInputStream.readUnsignedByte() != 0) {
            throw new cy1();
        }
        this.i = dataInputStream.readInt();
        this.h = -1;
    }

    @Override // defpackage.ye6
    public final void T() {
        if ((this.h & (-16777216)) == 0) {
            this.i = (this.i << 8) | this.j.readUnsignedByte();
            this.h <<= 8;
        }
    }
}
