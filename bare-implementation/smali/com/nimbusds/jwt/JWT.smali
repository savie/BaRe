.class public interface abstract Lcom/nimbusds/jwt/JWT;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getHeader()Lcom/nimbusds/jose/Header;
.end method

.method public abstract getJWTClaimsSet()Lcom/nimbusds/jwt/JWTClaimsSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract getParsedParts()[Lcom/nimbusds/jose/util/Base64URL;
.end method

.method public abstract getParsedString()Ljava/lang/String;
.end method

.method public abstract serialize()Ljava/lang/String;
.end method
