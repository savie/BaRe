.class Lcom/nimbusds/jose/crypto/RSASSASigner$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/CompletableJWSObjectSigning;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nimbusds/jose/crypto/RSASSASigner;->sign(Lcom/nimbusds/jose/JWSHeader;[B)Lcom/nimbusds/jose/util/Base64URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nimbusds/jose/crypto/RSASSASigner;

.field final synthetic val$signer:Ljava/security/Signature;

.field final synthetic val$signingInput:[B


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/crypto/RSASSASigner;Ljava/security/Signature;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/RSASSASigner$1;->this$0:Lcom/nimbusds/jose/crypto/RSASSASigner;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/RSASSASigner$1;->val$signer:Ljava/security/Signature;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/nimbusds/jose/crypto/RSASSASigner$1;->val$signingInput:[B

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/RSASSASigner$1;->this$0:Lcom/nimbusds/jose/crypto/RSASSASigner;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/crypto/RSASSASigner$1;->val$signingInput:[B

    .line 4
    .line 5
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/RSASSASigner$1;->val$signer:Ljava/security/Signature;

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Lcom/nimbusds/jose/crypto/RSASSASigner;->access$000(Lcom/nimbusds/jose/crypto/RSASSASigner;[BLjava/security/Signature;)Lcom/nimbusds/jose/util/Base64URL;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getInitializedSignature()Ljava/security/Signature;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/RSASSASigner$1;->val$signer:Ljava/security/Signature;

    .line 2
    .line 3
    return-object p0
.end method
