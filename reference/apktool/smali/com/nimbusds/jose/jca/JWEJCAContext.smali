.class public final Lcom/nimbusds/jose/jca/JWEJCAContext;
.super Lcom/nimbusds/jose/jca/JCAContext;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private ceProvider:Ljava/security/Provider;

.field private keProvider:Ljava/security/Provider;

.field private macProvider:Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/jca/JWEJCAContext;-><init>(Ljava/security/Provider;Ljava/security/Provider;Ljava/security/Provider;Ljava/security/Provider;Ljava/security/SecureRandom;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/security/Provider;Ljava/security/Provider;Ljava/security/Provider;Ljava/security/SecureRandom;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p5}, Lcom/nimbusds/jose/jca/JCAContext;-><init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V

    .line 12
    iput-object p2, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->keProvider:Ljava/security/Provider;

    .line 13
    iput-object p3, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->ceProvider:Ljava/security/Provider;

    .line 14
    iput-object p4, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->macProvider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public getContentEncryptionProvider()Ljava/security/Provider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->ceProvider:Ljava/security/Provider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getKeyEncryptionProvider()Ljava/security/Provider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->keProvider:Ljava/security/Provider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getMACProvider()Ljava/security/Provider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->macProvider:Ljava/security/Provider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public setContentEncryptionProvider(Ljava/security/Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->ceProvider:Ljava/security/Provider;

    .line 2
    .line 3
    return-void
.end method

.method public setKeyEncryptionProvider(Ljava/security/Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->keProvider:Ljava/security/Provider;

    .line 2
    .line 3
    return-void
.end method

.method public setMACProvider(Ljava/security/Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->macProvider:Ljava/security/Provider;

    .line 2
    .line 3
    return-void
.end method
