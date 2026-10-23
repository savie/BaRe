package defpackage;

import java.time.Instant;
import java.time.format.DateTimeFormatter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class vm3 extends eh3 implements jl0 {
    public abstract String getBackupLink();

    public abstract Long getBackupSize();

    @jz2
    public final long getDate() {
        DateTimeFormatter dateTimeFormatter = jj3.a;
        String timestamp = getTimestamp();
        timestamp.getClass();
        return Instant.from(jj3.a.parse(timestamp)).toEpochMilli();
    }

    @Override // defpackage.jl0
    @jz2
    public String getItemId() {
        return getBackupLink();
    }

    public abstract String getManifestLink();

    public abstract Long getManifestSize();

    @jz2
    public final long getSize() {
        return io4.h(getManifestSize()) + io4.h(getBackupSize());
    }

    public abstract String getTimestamp();

    @jz2
    public final boolean isValid() {
        return getBackupLink().length() > 0 && io4.h(getBackupSize()) > 0 && getManifestLink().length() > 0 && io4.h(getManifestSize()) > 0;
    }
}
