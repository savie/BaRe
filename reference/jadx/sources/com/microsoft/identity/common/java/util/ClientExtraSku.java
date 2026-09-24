package com.microsoft.identity.common.java.util;

import defpackage.dj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ClientExtraSku {
    private final String mSrcSku;
    private final String mSrcSkuVer;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class ClientExtraSkuBuilder {
        private boolean srcSku$set;
        private String srcSku$value;
        private boolean srcSkuVer$set;
        private String srcSkuVer$value;

        public final ClientExtraSku build() {
            String str = this.srcSku$value;
            if (!this.srcSku$set) {
                str = "";
            }
            return new ClientExtraSku(str, this.srcSkuVer$set ? this.srcSkuVer$value : "");
        }

        public final void srcSku(String str) {
            this.srcSku$value = str;
            this.srcSku$set = true;
        }

        public final void srcSkuVer(String str) {
            this.srcSkuVer$value = str;
            this.srcSkuVer$set = true;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ClientExtraSku.ClientExtraSkuBuilder(srcSku$value=");
            sb.append(this.srcSku$value);
            sb.append(", srcSkuVer$value=");
            return dj7.n(sb, this.srcSkuVer$value, ", msalRuntimeVer$value=null, browserExtSku$value=null, browserExtVer$value=null, browserCoreVer$value=null, msalCppCoreVer$value=null)");
        }
    }

    public ClientExtraSku(String str, String str2) {
        this.mSrcSku = str;
        this.mSrcSkuVer = str2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mSrcSku);
        sb.append("|");
        return dj7.n(sb, this.mSrcSkuVer, ",|,|,|,|");
    }
}
