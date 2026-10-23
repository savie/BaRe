.class public abstract Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKeyPivProviderManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static addPivProvider(Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;Lvz0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;",
            "Lvz0;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "YKPiv"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "YubiKeyPivProviderManager:addPivProvider"

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setExistingPivProviderPresent(Z)V

    .line 16
    .line 17
    .line 18
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 19
    .line 20
    const-string p0, "Existing PivProvider was present in Security static list."

    .line 21
    .line 22
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setExistingPivProviderPresent(Z)V

    .line 28
    .line 29
    .line 30
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 31
    .line 32
    const-string p0, "Security static list does not have existing PivProvider."

    .line 33
    .line 34
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance p0, Lt16;

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lt16;-><init>(Lvz0;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 43
    .line 44
    .line 45
    const-string p0, "An instance of PivProvider was added to Security static list."

    .line 46
    .line 47
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static removePivProvider()V
    .locals 2

    .line 1
    const-string v0, "YKPiv"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 14
    .line 15
    const-string v0, "YubiKeyPivProviderManager"

    .line 16
    .line 17
    const-string v1, "An instance of PivProvider was removed from Security static list."

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
