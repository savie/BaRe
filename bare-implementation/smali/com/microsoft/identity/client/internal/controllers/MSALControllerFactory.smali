.class public final Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final applicationConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

.field private final applicationContext:Landroid/content/Context;

.field private final authority:Lcom/microsoft/identity/common/java/authorities/Authority;

.field private final discoveryClient:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

.field private final platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

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
    sput-object v0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/authorities/Authority;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/authorities/Authority;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->applicationContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->applicationConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 29
    .line 30
    sget p1, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory;->a:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClientFactory$Companion;->getInstanceForClientSdk(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->discoveryClient:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 37
    .line 38
    return-void
.end method

.method private final brokerEligible()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ":brokerEligible"

    .line 7
    .line 8
    sget-object v2, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v2, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->applicationConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getUseBroker()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 27
    .line 28
    instance-of v1, v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, ":powerOptimizationEnabled"

    .line 34
    .line 35
    invoke-static {v2, v1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object p0, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->applicationContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "power"

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    check-cast p0, Landroid/os/PowerManager;

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "Is power optimization on? ["

    .line 63
    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x5d

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 80
    .line 81
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    if-eqz p0, :cond_1

    .line 85
    .line 86
    const-string p0, "Is the power optimization enabled? [true]"

    .line 87
    .line 88
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    const/4 p0, 0x1

    .line 92
    return p0

    .line 93
    :cond_2
    :goto_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 94
    .line 95
    const-string p0, "Eligible to call broker? [false]. App does not ask for Broker or the authority is not AAD authority."

    .line 96
    .line 97
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 p0, 0x0

    .line 101
    return p0
.end method

.method private final getActiveBrokerPackageName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, ":getActiveBrokerPackageName"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->discoveryClient:Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/activebrokerdiscovery/BrokerDiscoveryClient;->getActiveBroker()Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 28
    .line 29
    const-string p0, "Broker application is not installed."

    .line 30
    .line 31
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method


# virtual methods
.method public final getAllControllers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/controllers/BaseController;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getActiveBrokerPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->brokerEligible()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    new-instance v2, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->applicationContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 30
    .line 31
    invoke-direct {v2, v3, p0, v0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    new-instance p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final getDefaultController()Lcom/microsoft/identity/common/java/controllers/BaseController;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getActiveBrokerPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->brokerEligible()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->applicationContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 25
    .line 26
    invoke-direct {v1, v2, p0, v0}, Lcom/microsoft/identity/common/internal/controllers/BrokerMsalController;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    :goto_0
    new-instance p0, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/LocalMSALController;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method
