package defpackage;

import java.io.BufferedReader;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ev4 implements f77 {
    public final BufferedReader a;

    public ev4(BufferedReader bufferedReader) {
        this.a = bufferedReader;
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        return new dv4(this);
    }
}
