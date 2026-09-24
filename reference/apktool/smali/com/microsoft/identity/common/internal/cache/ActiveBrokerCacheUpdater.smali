.class public final Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cache:Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

.field private final isValidBroker:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;

    .line 2
    .line 3
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln81;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater$1;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater$1;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;->isValidBroker:Lmt3;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;->cache:Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final updateCachedActiveBrokerFromResultBundle(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, ":updateCachedActiveBrokerFromResultBundle"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v1, "broker.discovery.disabled"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;->cache:Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 29
    .line 30
    const-string p0, "Got a response indicating that the broker discovery is disabled.Will also wipe the local active broker cache,and skip broker discovery via IPC (only fall back to AccountManager) for the next 60 minutes."

    .line 31
    .line 32
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->clearCachedActiveBroker()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->setShouldUseAccountManagerForTheNextMilliseconds()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const-string v1, "active.broker.package.name"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v3, "active.broker.signing.certificate.thumbprint"

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-eqz p1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    new-instance v3, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-direct {v3, v1, p1, v4}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater;->isValidBroker:Lmt3;

    .line 79
    .line 80
    check-cast p0, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater$1;

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/internal/cache/ActiveBrokerCacheUpdater$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_4

    .line 93
    .line 94
    const-string p0, "Cannot find an installed "

    .line 95
    .line 96
    const-string p1, " with a matching signing certificate thumbprint."

    .line 97
    .line 98
    invoke-static {p0, v1, p1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 103
    .line 104
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->setCachedActiveBroker(Lcom/microsoft/identity/common/internal/broker/BrokerData;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    :goto_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 113
    .line 114
    const-string p0, "A response was received without active broker information."

    .line 115
    .line 116
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
