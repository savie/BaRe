package defpackage;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ob8 implements e84, Serializable {
    public static final String a = Boolean.TRUE.toString();
    public static final ob8 b = new ob8();

    @Override // defpackage.e84
    public final FileVisitResult a(Path path) {
        return FileVisitResult.CONTINUE;
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        return true;
    }

    public final String toString() {
        return a;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return true;
    }
}
