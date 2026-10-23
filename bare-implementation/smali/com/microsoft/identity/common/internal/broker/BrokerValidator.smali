.class public final Lcom/microsoft/identity/common/internal/broker/BrokerValidator;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/apps/ICallingAppValidator;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;

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
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->access$getProdBrokers$cp()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->context:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final isSignedByKnownKeys(Lcom/microsoft/identity/common/internal/broker/BrokerData;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getSigningCertificateThumbprint()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/microsoft/identity/common/internal/apps/ICallingAppValidator$Companion;->access$getTAG$p()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ":isSignedByKnownKeys"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->context:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/util/PackageUtils;->readCertDataForApp(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/util/PackageUtils;->verifySignatureHash(Ljava/util/ArrayList;Ljava/util/Iterator;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->RE_ENABLE_VALIDATE_SIGNING_CERT_CHAIN_BROKER_APPS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 58
    .line 59
    invoke-interface {p1, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v2, 0x1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-le p1, v2, :cond_0

    .line 71
    .line 72
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/util/PackageUtils;->verifyCertificateChain(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    return v2

    .line 79
    :goto_0
    const-string p1, " signature validation failed. "

    .line 80
    .line 81
    invoke-static {v0, p1}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 97
    .line 98
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    return p0
.end method
