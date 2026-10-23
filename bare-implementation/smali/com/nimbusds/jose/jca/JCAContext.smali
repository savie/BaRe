.class public Lcom/nimbusds/jose/jca/JCAContext;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private provider:Ljava/security/Provider;

.field private randomGen:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JCAContext;->provider:Ljava/security/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nimbusds/jose/jca/JCAContext;->randomGen:Ljava/security/SecureRandom;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getProvider()Ljava/security/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jca/JCAContext;->provider:Ljava/security/Provider;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jca/JCAContext;->randomGen:Ljava/security/SecureRandom;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/security/SecureRandom;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JCAContext;->provider:Ljava/security/Provider;

    .line 2
    .line 3
    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JCAContext;->randomGen:Ljava/security/SecureRandom;

    .line 2
    .line 3
    return-void
.end method
