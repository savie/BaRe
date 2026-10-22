package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum lu6 implements sx2 {
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_MANUAL_CACHING(0),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_AUTO_CACHING(1),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_VDO_CACHING(2),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_NO_CACHING(3),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_DFS(4),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_DFS_ROOT(5),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_RESTRICT_EXCLUSIVE_OPENS(6),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_FORCE_SHARED_DELETE(7),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_ALLOW_NAMESPACE_CACHING(8),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_ACCESS_BASED_DIRECTORY_ENUM(9),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_FORCE_LEVELII_OPLOCK(10),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_ENABLE_HASH_V1(11),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_ENABLE_HASH_V2(12),
    SMB2_SHAREFLAG_ENCRYPT_DATA(13),
    /* JADX INFO: Fake field, exist only in values array */
    SMB2_SHAREFLAG_IDENTITY_REMOTING(14);

    public final long a;

    lu6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
