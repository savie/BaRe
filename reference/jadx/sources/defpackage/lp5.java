package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum lp5 implements sx2 {
    NTLMSSP_NEGOTIATE_56(0),
    NTLMSSP_NEGOTIATE_KEY_EXCH(1),
    NTLMSSP_NEGOTIATE_128(2),
    NTLMSSP_NEGOTIATE_VERSION(3),
    NTLMSSP_NEGOTIATE_TARGET_INFO(4),
    /* JADX INFO: Fake field, exist only in values array */
    NTLMSSP_REQUEST_NON_NT_SESSION_KEY(5),
    /* JADX INFO: Fake field, exist only in values array */
    NTLMSSP_NEGOTIATE_IDENTIFY(6),
    NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY(7),
    /* JADX INFO: Fake field, exist only in values array */
    NTLMSSP_TARGET_TYPE_SERVER(8),
    /* JADX INFO: Fake field, exist only in values array */
    NTLMSSP_TARGET_TYPE_DOMAIN(9),
    NTLMSSP_NEGOTIATE_ALWAYS_SIGN(10),
    NTLMSSP_NEGOTIATE_OEM_WORKSTATION_SUPPLIED(11),
    NTLMSSP_NEGOTIATE_OEM_DOMAIN_SUPPLIED(12),
    NTLMSSP_NEGOTIATE_ANONYMOUS(13),
    NTLMSSP_NEGOTIATE_NTLM(14),
    NTLMSSP_NEGOTIATE_LM_KEY(15),
    NTLMSSP_NEGOTIATE_DATAGRAM(16),
    NTLMSSP_NEGOTIATE_SEAL(17),
    NTLMSSP_NEGOTIATE_SIGN(18),
    NTLMSSP_REQUEST_TARGET(19),
    /* JADX INFO: Fake field, exist only in values array */
    NTLM_NEGOTIATE_OEM(20),
    NTLMSSP_NEGOTIATE_UNICODE(21);

    public final long a;

    lp5(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
