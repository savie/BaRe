package com.microsoft.identity.common.java.challengehandlers;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.JWSBuilder;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.dj7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PKeyAuthChallenge {
    private final List<String> mCertAuthorities;
    private final String mContext;
    private final String mSubmitUrl;
    private final String mThumbprint;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class PKeyAuthChallengeBuilder {
        private ArrayList certAuthorities;
        private String context;
        private String nonce;
        private String submitUrl;
        private String tenantId;
        private String thumbprint;
        private String version;

        public final PKeyAuthChallenge build() {
            return new PKeyAuthChallenge(this.nonce, this.context, this.certAuthorities, this.thumbprint, this.version, this.submitUrl, new JWSBuilder(), this.tenantId);
        }

        public final void certAuthorities(ArrayList arrayList) {
            this.certAuthorities = arrayList;
        }

        public final void context(String str) {
            this.context = str;
        }

        public final void nonce(String str) {
            this.nonce = str;
        }

        public final void submitUrl(String str) {
            this.submitUrl = str;
        }

        public final void tenantId(String str) {
            this.tenantId = str;
        }

        public final void thumbprint(String str) {
            this.thumbprint = str;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PKeyAuthChallenge.PKeyAuthChallengeBuilder(nonce=");
            sb.append(this.nonce);
            sb.append(", context=");
            sb.append(this.context);
            sb.append(", certAuthorities=");
            sb.append(this.certAuthorities);
            sb.append(", thumbprint=");
            sb.append(this.thumbprint);
            sb.append(", version=");
            sb.append(this.version);
            sb.append(", submitUrl=");
            sb.append(this.submitUrl);
            sb.append(", jwsBuilder$value=null, tenantId=");
            return dj7.n(sb, this.tenantId, ")");
        }

        public final void version(String str) {
            this.version = str;
        }
    }

    public PKeyAuthChallenge(String str, String str2, ArrayList arrayList, String str3, String str4, String str5, JWSBuilder jWSBuilder, String str6) {
        this.mContext = str2;
        this.mCertAuthorities = arrayList;
        this.mThumbprint = str3;
        this.mSubmitUrl = str5;
    }

    private HashMap getChallengeHeaderWithoutSignedJwt() {
        HashMap map = new HashMap();
        map.put("Authorization", "PKeyAuth Context=\"" + this.mContext + "\",Version=\"1.0\"");
        return map;
    }

    public final HashMap getChallengeHeader() throws ClientException {
        List<String> list = this.mCertAuthorities;
        if ((list == null || list.size() == 0) && StringUtil.isNullOrEmpty(this.mThumbprint)) {
            Logger.info("PKeyAuthChallenge:getChallengeHeader", "Both cert Authorities and Thumbprint are not provided.Sending a response which is equivalent to no certificate present on client.");
            return getChallengeHeaderWithoutSignedJwt();
        }
        Logger.warn("PKeyAuthChallenge:getChallengeHeader", "Device Certificate loader is not initialized.");
        return getChallengeHeaderWithoutSignedJwt();
    }

    public final String getSubmitUrl() {
        return this.mSubmitUrl;
    }
}
