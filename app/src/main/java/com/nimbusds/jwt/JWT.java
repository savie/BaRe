package com.nimbusds.jwt;

import com.nimbusds.jose.Header;
import com.nimbusds.jose.util.Base64URL;
import java.io.Serializable;
import java.text.ParseException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface JWT extends Serializable {
    Header getHeader();

    JWTClaimsSet getJWTClaimsSet() throws ParseException;

    Base64URL[] getParsedParts();

    String getParsedString();

    String serialize();
}
