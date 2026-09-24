package defpackage;

import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.function.Predicate;
import okhttp3.MediaType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r64 implements Predicate {
    public final /* synthetic */ int a;

    public /* synthetic */ r64(int i) {
        this.a = i;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.a) {
            case 0:
                MediaType mediaType = v64.a;
                return Files.isRegularFile((Path) obj, new LinkOption[0]);
            default:
                return he8.f.matcher((String) obj).matches();
        }
    }
}
