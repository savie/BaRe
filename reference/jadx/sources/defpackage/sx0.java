package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sx0 implements ch5 {
    public final /* synthetic */ int a;

    public /* synthetic */ sx0(int i) {
        this.a = i;
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        switch (this.a) {
            case 0:
                break;
            default:
                ((zx3) obj).getClass();
                break;
        }
        return true;
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        switch (this.a) {
            case 0:
                File file = (File) obj;
                return new bh5(new nr5(file), new rx0(file));
            default:
                zx3 zx3Var = (zx3) obj;
                zx3Var.getClass();
                ou5Var.getClass();
                String str = zx3Var.a.e;
                if (str != null) {
                    return new bh5(new nr5(str), new cy3(zx3Var));
                }
                c6.f("GlideOneDriveModelLoader: Null driveId!");
                return null;
        }
    }
}
