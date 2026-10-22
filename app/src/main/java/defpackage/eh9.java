package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eh9 implements zi9 {
    public static final eh9 a = new eh9();

    @Override // defpackage.zi9
    public final hk9 zzb(Class cls) {
        if (!ih9.class.isAssignableFrom(cls)) {
            c6.f("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (hk9) ih9.a(cls.asSubclass(ih9.class)).h(3);
        } catch (Exception e) {
            e6.i("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    @Override // defpackage.zi9
    public final boolean zzc(Class cls) {
        return ih9.class.isAssignableFrom(cls);
    }
}
