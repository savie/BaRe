.class public final Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static bouncyCastleProvider:Ljava/security/Provider;


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
    sget-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;->bouncyCastleProvider:Ljava/security/Provider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lqu0;

    .line 6
    .line 7
    invoke-direct {v0}, Lqu0;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;->bouncyCastleProvider:Ljava/security/Provider;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;->bouncyCastleProvider:Ljava/security/Provider;

    .line 13
    .line 14
    return-object v0
.end method
