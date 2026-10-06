package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qe extends Exception {
    public final int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qe(int i, String str) {
        super(i + " - " + str);
        Locale locale = Locale.US;
        this.a = i;
    }
}
