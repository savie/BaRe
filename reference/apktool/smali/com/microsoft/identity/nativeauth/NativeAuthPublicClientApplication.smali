.class public final Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplication;
.super Lcom/microsoft/identity/client/PublicClientApplication;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplication;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplication;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lzm5;->a()Lfs7;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcn2;->a:Lrf2;

    .line 17
    .line 18
    sget-object v1, Lse2;->c:Lse2;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lod2;->u(Lmx1;Lox1;)Lox1;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ll73;->c(Lox1;)Ldv1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getEnvironment()Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->setEnvironment(Lcom/microsoft/identity/common/java/authorities/Environment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->addKnownAuthorities(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getLoggerConfiguration()Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->getLogLevel()Lcom/microsoft/identity/client/Logger$LogLevel;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->isPiiEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->isLogcatEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {}, Lcom/microsoft/identity/client/Logger;->getInstance()Lcom/microsoft/identity/client/Logger;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Lcom/microsoft/identity/client/Logger;->setLogLevel(Lcom/microsoft/identity/client/Logger$LogLevel;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/client/Logger;->setEnablePII(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Lcom/microsoft/identity/client/Logger;->setEnableLogcatLog(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {p1}, Lcom/microsoft/identity/client/PublicClientApplication;->checkInternetPermission(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize$1(Ljava/io/File;)Z

    .line 63
    .line 64
    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplication;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ".initializeApplication"

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    new-instance p1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 99
    .line 100
    new-instance v0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "com.microsoft.identity.client.native_auth_credential_cache"

    .line 106
    .line 107
    invoke-direct {p1, p0, v1, v0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
