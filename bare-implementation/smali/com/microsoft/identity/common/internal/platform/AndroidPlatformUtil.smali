.class public final Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/IPlatformUtil;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mActivity:Landroid/app/Activity;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "mContext is marked non-null but is null"

    .line 12
    .line 13
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public static isInManagedProfile(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x1e

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    const-string v0, "user"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/os/UserManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const-string v1, "device_policy"

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/content/ComponentName;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p0, v2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :cond_2
    return v0

    .line 66
    :cond_3
    const-string p0, "appContext is marked non-null but is null"

    .line 67
    .line 68
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v0
.end method


# virtual methods
.method public final getInstalledCompanyPortalVersion()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "com.microsoft.windowsintune.companyportal"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :catch_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final onReturnCommandResult(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/BaseCommand;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mActivity:Landroid/app/Activity;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    check-cast p1, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->getHandleNullTaskAffinity()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_5

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string p1, "activity"

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Landroid/app/ActivityManager;

    .line 57
    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0, p1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    const-string p0, "ActivityManager was null; Unable to bring task for the foreground."

    .line 69
    .line 70
    const-string p1, "AndroidPlatformUtil:optionallyReorderTasks"

    .line 71
    .line 72
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catch_0
    const-string p0, "Unable to get ActivityInfo for activity provided to start authorization."

    .line 77
    .line 78
    const-string p1, "AndroidPlatformUtil:hasTaskAffinity"

    .line 79
    .line 80
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    const-string p0, "Activity cannot be null in an interactive session."

    .line 85
    .line 86
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_2
    return-void
.end method

.method public final throwIfNetworkNotAvailable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->isNetworkDisabledFromOptimizations()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "device_network_not_available_doze_mode"

    .line 19
    .line 20
    const-string v0, "Connection is not available to refresh token because power optimization is enabled. And the device is in doze mode or the app is standby"

    .line 21
    .line 22
    invoke-static {p1, v0, p0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :goto_0
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->DISABLE_NETWORK_CONNECTIVITY_CHECK:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 31
    .line 32
    invoke-interface {p1, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->isConnectionAvailable()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    :goto_1
    return-void

    .line 46
    :cond_3
    const-string p1, "device_network_not_available"

    .line 47
    .line 48
    const-string v0, "Connection is not available to refresh token"

    .line 49
    .line 50
    invoke-static {p1, v0, p0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
