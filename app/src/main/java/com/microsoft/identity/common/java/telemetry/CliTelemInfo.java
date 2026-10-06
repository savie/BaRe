package com.microsoft.identity.common.java.telemetry;

import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.StringUtil;
import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class CliTelemInfo implements Serializable {
    private static final Pattern HEADER_FORMAT_REGULAR_EXPRESSION = Pattern.compile("^[1-9]+\\.?[0-9|\\.]*,[0-9|\\.]*,[0-9|\\.]*,[^,]*[0-9\\.]*,[^,]*$");
    private String mRefreshTokenAge;
    private String mServerErrorCode;
    private String mServerSubErrorCode;
    private String mSpeRing;

    public static CliTelemInfo fromXMsCliTelemHeader(String str) {
        if (StringUtil.isNullOrEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length == 0) {
            Logger.warn("CliTelemInfo", "SPE Ring header missing version field.");
            return null;
        }
        String str2 = strArrSplit[0];
        CliTelemInfo cliTelemInfo = new CliTelemInfo();
        if (!str2.equals("1")) {
            Logger.warn("CliTelemInfo", "Unrecognized x-ms-clitelem header version");
            return null;
        }
        if (!HEADER_FORMAT_REGULAR_EXPRESSION.matcher(str).matches()) {
            Logger.warn("CliTelemInfo", "Malformed x-ms-clitelem header");
            return null;
        }
        String[] strArrSplit2 = str.split(",", 5);
        cliTelemInfo.mServerErrorCode = strArrSplit2[1];
        cliTelemInfo.mServerSubErrorCode = strArrSplit2[2];
        cliTelemInfo.mRefreshTokenAge = strArrSplit2[3];
        cliTelemInfo.mSpeRing = strArrSplit2[4];
        return cliTelemInfo;
    }

    public final String getRefreshTokenAge() {
        return this.mRefreshTokenAge;
    }

    public final String getServerErrorCode() {
        return this.mServerErrorCode;
    }

    public final String getServerSubErrorCode() {
        return this.mServerSubErrorCode;
    }

    public final String getSpeRing() {
        return this.mSpeRing;
    }
}
