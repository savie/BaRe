.class public final Lcom/nimbusds/jose/crypto/bc/BouncyCastleFIPSProviderSingleton;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static bouncyCastleFIPSProvider:Ljava/security/Provider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Ljava/security/Provider;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleFIPSProviderSingleton;->bouncyCastleFIPSProvider:Ljava/security/Provider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BCFIPS"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleFIPSProviderSingleton;->bouncyCastleFIPSProvider:Ljava/security/Provider;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleFIPSProviderSingleton;->bouncyCastleFIPSProvider:Ljava/security/Provider;

    .line 14
    .line 15
    return-object v0
.end method
