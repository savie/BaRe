package com.swiftapps.sba.internal.tar;

import java.util.Arrays;

/**
 * JNI-facing tar entry descriptor.
 *
 * The package, constructor descriptor, field types, and accessor names are kept
 * compatible with the Reference native ABI. The Reference's higher-level
 * obfuscated enum dependency is intentionally not imported into BaRe.
 */
public final class SbaTarEntryInfo {
    public static final int TYPE_FILE = 1;
    public static final int TYPE_DIRECTORY = 2;
    public static final int TYPE_SYMLINK = 3;
    public static final int TYPE_HARDLINK = 4;
    public static final int TYPE_FIFO = 5;
    public static final int TYPE_CHARACTER = 6;
    public static final int TYPE_BLOCK = 7;
    public static final int TYPE_OTHER = 99;

    private final String name;
    private final int type;
    private final String linkName;
    private final int mode;
    private final long size;
    private final long realSize;
    private final long mtimeMs;
    private final boolean sparse;
    private final String[] xattrNames;

    public SbaTarEntryInfo(String name, int type, String linkName, int mode,
                           long size, long realSize, long mtimeMs,
                           boolean sparse, String[] xattrNames) {
        if (name == null || xattrNames == null) {
            throw new NullPointerException();
        }
        this.name = name;
        this.type = type;
        this.linkName = linkName;
        this.mode = mode;
        this.size = size;
        this.realSize = realSize;
        this.mtimeMs = mtimeMs;
        this.sparse = sparse;
        this.xattrNames = Arrays.copyOf(xattrNames, xattrNames.length);
    }

    public String getLinkName() { return linkName; }
    public int getMode() { return mode; }
    public long getMtimeMs() { return mtimeMs; }
    public String getName() { return name; }
    public long getRealSize() { return realSize; }
    public long getSize() { return size; }
    public boolean getSparse() { return sparse; }
    public int getType() { return type; }
    public String[] getXattrNames() { return Arrays.copyOf(xattrNames, xattrNames.length); }

    public boolean isDirectory() { return type == TYPE_DIRECTORY; }
    public boolean isFile() { return type == TYPE_FILE; }
    public boolean isHardlink() { return type == TYPE_HARDLINK; }
    public boolean isSymbolicLink() { return type == TYPE_SYMLINK; }

    @Override
    public boolean equals(Object other) {
        if (this == other) return true;
        if (!(other instanceof SbaTarEntryInfo)) return false;
        SbaTarEntryInfo that = (SbaTarEntryInfo) other;
        return type == that.type
                && mode == that.mode
                && size == that.size
                && realSize == that.realSize
                && mtimeMs == that.mtimeMs
                && sparse == that.sparse
                && name.equals(that.name)
                && java.util.Objects.equals(linkName, that.linkName)
                && Arrays.equals(xattrNames, that.xattrNames);
    }

    @Override
    public int hashCode() {
        int result = name.hashCode();
        result = 31 * result + type;
        result = 31 * result + (linkName != null ? linkName.hashCode() : 0);
        result = 31 * result + mode;
        result = 31 * result + Long.hashCode(size);
        result = 31 * result + Long.hashCode(realSize);
        result = 31 * result + Long.hashCode(mtimeMs);
        result = 31 * result + Boolean.hashCode(sparse);
        result = 31 * result + Arrays.hashCode(xattrNames);
        return result;
    }

    @Override
    public String toString() {
        return "SbaTarEntryInfo(name=" + name + ", type=" + type
                + ", linkName=" + linkName + ", mode=" + mode
                + ", size=" + size + ", realSize=" + realSize
                + ", mtimeMs=" + mtimeMs + ", sparse=" + sparse
                + ", xattrNames=" + Arrays.toString(xattrNames) + ")";
    }
}
