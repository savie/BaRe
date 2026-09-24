package defpackage;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Objects;
import java.util.function.UnaryOperator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ky1 extends SimpleFileVisitor implements FileVisitor {
    public static final /* synthetic */ int f = 0;
    public final gb a = new gb(this, 9);
    public final gy1 b;
    public final iu7 c;
    public final ob8 d;
    public final UnaryOperator e;

    public ky1(jy1 jy1Var) {
        this.b = jy1Var.k;
        this.c = jy1Var.n;
        this.d = jy1Var.p;
        this.e = jy1Var.q;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ky1) {
            return Objects.equals(this.b, ((ky1) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.b);
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult postVisitDirectory(Object obj, IOException iOException) {
        this.b.b.a++;
        return FileVisitResult.CONTINUE;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult preVisitDirectory(Object obj, BasicFileAttributes basicFileAttributes) {
        this.d.getClass();
        return FileVisitResult.CONTINUE;
    }

    public final String toString() {
        return this.b.toString();
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult visitFile(Object obj, BasicFileAttributes basicFileAttributes) {
        Path path = (Path) obj;
        if (Files.exists(path, new LinkOption[0]) && this.c.a(path) == FileVisitResult.CONTINUE) {
            gy1 gy1Var = this.b;
            gy1Var.c.a++;
            gy1Var.a.a += basicFileAttributes.size();
        }
        return FileVisitResult.CONTINUE;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult visitFileFailed(Object obj, IOException iOException) {
        return super.visitFileFailed((Path) obj, iOException);
    }
}
