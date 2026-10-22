package defpackage;

import android.content.pm.PackageInfo;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface z84 extends IInterface {
    void cancelSba(long j);

    long createSba(i17 i17Var, e94 e94Var);

    long extractSba(m17 m17Var, e94 e94Var);

    long extractTar(s17 s17Var, e94 e94Var);

    PackageInfo getPackageArchiveInfo(String str, int i);

    ParcelFileDescriptor getParcelFileDescriptor(String str, int i);

    int getPid();

    String getSbaNativeVersion();

    o17 getSbaResult(long j);

    int getUid();

    boolean isSbaAegis256Available();

    boolean isSbaFile(String str);

    q17 listSbaTarEntries(String str, String str2, char[] cArr, int i, int i2);

    q17 listTarEntries(String str, int i, int i2);

    f17 readSbaInfo(String str);

    f17 readSbaInfoPage(String str, int i, int i2);
}
