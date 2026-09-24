package defpackage;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q3 implements e84, FileVisitor {
    public final FileVisitResult a;
    public final FileVisitResult b;

    public q3(FileVisitResult fileVisitResult, FileVisitResult fileVisitResult2) {
        this.a = fileVisitResult;
        this.b = fileVisitResult2;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        Objects.requireNonNull(str, "name");
        return Files.isSymbolicLink(new File(file, str).toPath());
    }

    @Override // java.nio.file.FileVisitor
    public final FileVisitResult postVisitDirectory(Object obj, IOException iOException) {
        return FileVisitResult.CONTINUE;
    }

    @Override // java.nio.file.FileVisitor
    public final FileVisitResult preVisitDirectory(Object obj, BasicFileAttributes basicFileAttributes) {
        return ((iu7) this).a((Path) obj);
    }

    public final String toString() {
        return getClass().getSimpleName();
    }

    @Override // java.nio.file.FileVisitor
    public final FileVisitResult visitFile(Object obj, BasicFileAttributes basicFileAttributes) {
        return ((iu7) this).a((Path) obj);
    }

    @Override // java.nio.file.FileVisitor
    public final FileVisitResult visitFileFailed(Object obj, IOException iOException) {
        return FileVisitResult.CONTINUE;
    }
}
