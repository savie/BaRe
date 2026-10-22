package defpackage;

import java.io.FileFilter;
import java.io.FilenameFilter;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.PathMatcher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface e84 extends FileFilter, FilenameFilter, PathMatcher {
    FileVisitResult a(Path path);

    @Override // java.nio.file.PathMatcher
    default boolean matches(Path path) {
        return a(path) != FileVisitResult.TERMINATE;
    }
}
