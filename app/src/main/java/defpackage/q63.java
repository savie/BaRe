package defpackage;

import java.io.File;
import java.io.Serializable;

public final class q63 implements Serializable {
    private final File file;

    public q63(String path, int ignored) {
        this.file = new File(path == null || path.trim().isEmpty() ? "/" : path);
    }

    public String v() { return file.getAbsolutePath(); }

    public String p() {
        String name = file.getName();
        return name.isEmpty() ? file.getAbsolutePath() : name;
    }

    @Override public boolean equals(Object other) {
        return other instanceof q63 && v().equals(((q63) other).v());
    }

    @Override public int hashCode() { return v().hashCode(); }
}