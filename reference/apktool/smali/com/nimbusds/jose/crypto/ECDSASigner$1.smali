.class Lcom/nimbusds/jose/crypto/ECDSASigner$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/CompletableJWSObjectSigning;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/crypto/ECDSASigner;->sign(Lcom/nimbusds/jose/JWSHeader;[B)Lcom/nimbusds/jose/util/Base64URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nimbusds/jose/crypto/ECDSASigner;

.field final synthetic val$dsa:Ljava/security/Signature;

.field final synthetic val$header:Lcom/nimbusds/jose/JWSHeader;

.field final synthetic val$signingInput:[B


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/crypto/ECDSASigner;Ljava/security/Signature;[BLcom/nimbusds/jose/JWSHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDSASigner$1;->this$0:Lcom/nimbusds/jose/crypto/ECDSASigner;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/ECDSASigner$1;->val$dsa:Ljava/security/Signature;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/nimbusds/jose/crypto/ECDSASigner$1;->val$signingInput:[B

    .line 6
    .line 7
    iput-object p4, p0, Lcom/nimbusds/jose/crypto/ECDSASigner$1;->val$header:Lcom/nimbusds/jose/JWSHeader;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public complete()Lcom/nimbusds/jose/util/Base64URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/ECDSASigner$1;->val$dsa:Ljava/security/Signature;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/crypto/ECDSASigner$1;->val$signingInput:[B

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/ECDSASigner$1;->val$dsa:Ljava/security/Signature;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDSASigner$1;->val$header:Lcom/nimbusds/jose/JWSHeader;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->getSignatureByteArrayLength(Lcom/nimbusds/jose/JWSAlgorithm;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {v0, p0}, Lcom/nimbusds/jose/crypto/impl/ECDSA;->transcodeSignatureToConcat([BI)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public getInitializedSignature()Ljava/security/Signature;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDSASigner$1;->val$dsa:Ljava/security/Signature;

    .line 2
    .line 3
    return-object p0
.end method
