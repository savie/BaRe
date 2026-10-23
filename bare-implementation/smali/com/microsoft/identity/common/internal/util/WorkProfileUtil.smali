.class public abstract Lcom/microsoft/identity/common/internal/util/WorkProfileUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static synthetic a(Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->isCrossProfileIntentForwarderActivity()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static checkIfIsInPersonalProfileButClouddpcWorkProfileAvailable(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 9
    .line 10
    invoke-interface {v1, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v2, "com.google.android.apps.work.clouddpc.ACTION_DETECT_WORK_PROFILE"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v2, 0x1e

    .line 35
    .line 36
    if-lt v1, v2, :cond_1

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v1, Lw64;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {v1, v2}, Lw64;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v1, Liw8;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 65
    .line 66
    .line 67
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return p0

    .line 69
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Received an exception while trying to check if clouddpc work profile is available: "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 88
    .line 89
    const-string v1, "WorkProfileUtil"

    .line 90
    .line 91
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return v0

    .line 95
    :cond_2
    const-string p0, "context is marked non-null but is null"

    .line 96
    .line 97
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return v0
.end method
