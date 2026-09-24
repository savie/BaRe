.class public final Lcom/microsoft/identity/common/internal/broker/PackageHelper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x8000000

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x40

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    .line 9
    if-lt v1, v2, :cond_3

    .line 10
    .line 11
    invoke-static {p0}, Ld6;->c(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {p0}, Ld6;->c(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 39
    .line 40
    return-object p0
.end method

.method private static getSigningCertificateThumbprintForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aget-object p0, p0, v0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "SHA-512"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "SHA"

    .line 19
    .line 20
    :goto_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 p1, 0x2

    .line 36
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 43
    .line 44
    const-string p1, "CallerInfo:getSigningCertificateThumbprintForPackage"

    .line 45
    .line 46
    const-string v0, "Digest SHA algorithm does not exists. "

    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    invoke-static {p1, v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method


# virtual methods
.method public final getSha1SignatureForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSigningCertificateThumbprintForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 15
    .line 16
    const-string p1, "CallerInfo:getSha1SignatureForPackage"

    .line 17
    .line 18
    const-string v0, "Calling App\'s package does not exist in PackageManager. "

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-static {p1, v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final getSha512SignatureForPackage()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "com.microsoft.skype.teams.ipphone"

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSigningCertificateThumbprintForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 17
    .line 18
    const-string v0, "CallerInfo:getSha512SignatureForPackage"

    .line 19
    .line 20
    const-string v1, "Calling App\'s package does not exist in PackageManager. "

    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    invoke-static {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final isPackageInstalledAndEnabled(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    const-string v0, "CallerInfo:isPackageInstalledAndEnabled"

    .line 4
    .line 5
    const-string v1, "Unable to read enabled setting for package: "

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " applicationInfo is null"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 32
    .line 33
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sget-object v5, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->USE_ENABLED_SETTING_FOR_PACKAGE_CHECK:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 42
    .line 43
    invoke-interface {v4, v5}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 44
    .line 45
    .line 46
    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    iget-boolean v1, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    if-eq p0, v3, :cond_1

    .line 57
    .line 58
    const/4 v4, 0x2

    .line 59
    if-eq p0, v4, :cond_3

    .line 60
    .line 61
    const/4 v4, 0x3

    .line 62
    if-eq p0, v4, :cond_3

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    if-eq p0, v2, :cond_1

    .line 66
    .line 67
    move v2, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v2, v3

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 84
    .line 85
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-boolean v2, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-boolean v2, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    .line 93
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " is installed. enabled? ["

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, "]"

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 119
    .line 120
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return v2

    .line 124
    :catch_1
    const-string p0, " is not found"

    .line 125
    .line 126
    invoke-static {p1, p0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 131
    .line 132
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return v2
.end method
