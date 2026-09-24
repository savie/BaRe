package com.microsoft.identity.common.java.providers.microsoft;

import com.microsoft.identity.common.java.providers.oauth2.TokenErrorResponse;
import defpackage.y77;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MicrosoftTokenErrorResponse extends TokenErrorResponse {

    @y77("correlation_id")
    private String mCorrelationId;

    @y77("error_codes")
    private List<Long> mErrorCodes;

    @y77("oAuth_metadata")
    private String mOAuthErrorMetadata;

    @y77("timestamp")
    private String mTimeStamp;

    @y77("trace_id")
    private String mTraceId;
}
