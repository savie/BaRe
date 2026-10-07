package defpackage;

public enum rt4 {
    ON_CREATE,
    ON_START,
    ON_RESUME,
    ON_PAUSE,
    ON_STOP,
    ON_DESTROY,
    ON_ANY;

    public static final pt4 Companion = new pt4();

    public final st4 a() {
        switch (qt4.a[ordinal()]) {
            case 1:
            case 2:
                return st4.c;
            case 3:
            case 4:
                return st4.d;
            case 5:
                return st4.e;
            case 6:
                return st4.a;
            case 7:
                throw new IllegalArgumentException(this + " has no target state");
            default:
                q.j();
                return null;
        }
    }
}
