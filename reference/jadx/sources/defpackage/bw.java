package defpackage;

import com.swiftapps.sba.SbaSwiftTarNative;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bw implements rt3 {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bw(lw lwVar, xw xwVar, ax axVar) {
        this.b = axVar;
        this.c = lwVar;
    }

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) throws IOException {
        SbaTarEntryInfo[] sbaTarEntryInfoArrE;
        int i = this.a;
        Object obj4 = this.c;
        Object obj5 = this.b;
        switch (i) {
            case 0:
                ax axVar = (ax) obj5;
                long jLongValue = ((Long) obj).longValue();
                long jLongValue2 = ((Long) obj2).longValue();
                ((Long) obj3).getClass();
                ((lw) obj4).invoke(Long.valueOf(axVar.b() + tu0.w((jLongValue / jLongValue2) * axVar.c(ex.UNTAR_DEDATA))));
                return be8.a;
            default:
                oz6 oz6Var = (oz6) obj4;
                String str = (String) obj;
                long jLongValue3 = ((Long) obj2).longValue();
                long jLongValue4 = ((Long) obj3).longValue();
                str.getClass();
                cy0 cy0Var = ((v07) obj5).a.e;
                if (cy0Var.equals(oy6.j)) {
                    FileInputStream fileInputStream = new FileInputStream(str);
                    try {
                        fileInputStream.getChannel().position(jLongValue3);
                        SbaSwiftTarNative sbaSwiftTarNative = SbaSwiftTarNative.a;
                        FileDescriptor fd = fileInputStream.getFD();
                        fd.getClass();
                        sbaTarEntryInfoArrE = SbaSwiftTarNative.d(fd, jLongValue4);
                        fileInputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(fileInputStream, th);
                            throw th2;
                        }
                    }
                } else {
                    if (!(cy0Var instanceof py6)) {
                        q.j();
                        return null;
                    }
                    FileInputStream fileInputStream2 = new FileInputStream(str);
                    try {
                        fileInputStream2.getChannel().position(jLongValue3);
                        SbaSwiftTarNative sbaSwiftTarNative2 = SbaSwiftTarNative.a;
                        FileDescriptor fd2 = fileInputStream2.getFD();
                        fd2.getClass();
                        sbaTarEntryInfoArrE = SbaSwiftTarNative.e(fd2, jLongValue4, oz6Var.f);
                        fileInputStream2.close();
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            rs9.c(fileInputStream2, th3);
                            throw th4;
                        }
                    }
                }
                return x50.z0(sbaTarEntryInfoArrE);
        }
    }

    public /* synthetic */ bw(v07 v07Var, z07 z07Var, oz6 oz6Var) {
        this.b = v07Var;
        this.c = oz6Var;
    }
}
