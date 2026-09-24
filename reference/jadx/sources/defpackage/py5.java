package defpackage;

import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.StandardOpenOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class py5 {
    public static final OpenOption[] a;

    static {
        StandardOpenOption standardOpenOption = StandardOpenOption.CREATE;
        StandardOpenOption standardOpenOption2 = StandardOpenOption.TRUNCATE_EXISTING;
        StandardOpenOption standardOpenOption3 = StandardOpenOption.APPEND;
        LinkOption linkOption = LinkOption.NOFOLLOW_LINKS;
        a = new OpenOption[0];
    }
}
