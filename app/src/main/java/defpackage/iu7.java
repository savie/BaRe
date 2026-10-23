package defpackage;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iu7 extends q3 implements Serializable {
    static {
        new iu7(FileVisitResult.CONTINUE, FileVisitResult.TERMINATE);
    }

    @Override // defpackage.e84
    public final FileVisitResult a(Path path) {
        return Files.isSymbolicLink(path) ? this.a : this.b;
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        return Files.isSymbolicLink(file.toPath());
    }
}
