package defpackage;

import java.io.IOException;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uh9 extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    public uh9(long j, long j2, int i, IndexOutOfBoundsException indexOutOfBoundsException) {
        Locale locale = Locale.US;
        StringBuilder sbT = dj7.t("Pos: ", ", limit: ", j);
        sbT.append(j2);
        sbT.append(", len: ");
        sbT.append(i);
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(sbT.toString()), indexOutOfBoundsException);
    }
}
