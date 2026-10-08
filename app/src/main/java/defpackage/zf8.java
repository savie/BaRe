package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zf8 implements dz7 {
    public String a;
    public String b;
    public boolean c;

    public final boolean a() {
        String str;
        return (c() || (str = this.a) == null || str.length() == 0) ? false : true;
    }

    @Override // defpackage.dz7
    public final String b() {
        String str = this.b;
        return str == null ? "" : str;
    }

    @Override // defpackage.dz7
    public final boolean c() {
        String str = this.b;
        return !(str == null || str.length() == 0);
    }

    @Override // defpackage.dz7
    public final boolean l() {
        return false;
    }
}
