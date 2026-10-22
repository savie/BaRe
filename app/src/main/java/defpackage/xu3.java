package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xu3 implements od5 {
    public static final xu3 a = new xu3();

    @Override // defpackage.od5
    public final hf6 a(Class cls) {
        if (!av3.class.isAssignableFrom(cls)) {
            c6.f("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (hf6) av3.d(cls.asSubclass(av3.class)).c(3);
        } catch (Exception e) {
            e6.i("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    @Override // defpackage.od5
    public final boolean b(Class cls) {
        return av3.class.isAssignableFrom(cls);
    }
}
