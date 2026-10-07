package defpackage;

public enum xp1 {
    NO_COMPRESSION(0),
    FASTEST(1),
    FAST(3),
    NORMAL(5),
    MAXIMUM(7),
    ULTRA(9);

    private final int level;
    public static final wp1 Companion = new wp1();
    private static final xp1 DEFAULT = FASTEST;

    private xp1(int level) {
        this.level = level;
    }

    public static jx2 getEntries() {
        return ly8.q(values());
    }

    public final int getLevel() {
        return this.level;
    }
}