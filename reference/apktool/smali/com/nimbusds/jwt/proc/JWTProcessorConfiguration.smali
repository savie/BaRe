.class public interface abstract Lcom/nimbusds/jwt/proc/JWTProcessorConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/proc/JOSEProcessorConfiguration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/proc/JOSEProcessorConfiguration<",
        "TC;>;"
    }
.end annotation


# virtual methods
.method public abstract getJWTClaimsSetAwareJWSKeySelector()Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract setJWTClaimsSetAwareJWSKeySelector(Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract setJWTClaimsSetVerifier(Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;)V"
        }
    .end annotation
.end method
