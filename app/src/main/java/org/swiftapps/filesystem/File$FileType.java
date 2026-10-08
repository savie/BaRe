package org.swiftapps.filesystem;

import defpackage.jr7;
import java.io.File;
import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class File$FileType implements Serializable {
    private final File file;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class JavaFile extends File$FileType {
        private final File file;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public JavaFile(File file) {
            super(file, null);
            file.getClass();
            this.file = file;
        }

        @Override // org.swiftapps.filesystem.File$FileType
        public File getFile() {
            return this.file;
        }

        @Override // org.swiftapps.filesystem.File$FileType
        public String toString() {
            return JavaFile.class.getSimpleName() + ":" + getFile();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class LibsuFile extends File$FileType {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LibsuFile(File file) {
            super(jr7.g(file.getPath()), null);
            file.getClass();
        }

        @Override // org.swiftapps.filesystem.File$FileType
        public String toString() {
            return LibsuFile.class.getSimpleName() + ":" + getFile();
        }
    }

    private File$FileType(File file) {
        this.file = file;
    }

    public File getFile() {
        return this.file;
    }

    public String toString() {
        return getClass().getSimpleName() + ":" + getFile();
    }

    public /* synthetic */ File$FileType(File file, DefaultConstructorMarker defaultConstructorMarker) {
        this(file);
    }
}
