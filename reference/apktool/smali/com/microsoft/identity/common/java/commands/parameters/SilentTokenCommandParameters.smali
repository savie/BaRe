.class public Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;
.super Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static builder()Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final canEqual(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    return v0
.end method

.method public final toBuilder()Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters$SilentTokenCommandParametersBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->$fillValuesFrom$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ArgumentException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "SilentTokenCommandParameters"

    .line 11
    .line 12
    const-string v0, "The account set on silent operation parameters is NULL."

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v0, v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;

    .line 23
    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v0, v0, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    sget v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->a:I

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->ensureCloudDiscoveryForAuthority(Ljava/net/URL;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getEnvironment()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloudFromHostName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->getPreferredNetworkHostName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->getAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    if-eqz p0, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    .line 89
    .line 90
    const-string v0, "authority"

    .line 91
    .line 92
    const-string v1, "Authority passed to silent parameters does not match with the cloud associated to the account."

    .line 93
    .line 94
    const-string v2, "acquireTokenSilent"

    .line 95
    .line 96
    invoke-direct {p0, v2, v0, v1}, Lcom/microsoft/identity/common/java/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "SilentTokenCommandParameters:authorityMatchesAccountEnvironment"

    .line 106
    .line 107
    const-string v2, "Unable to perform cloud discovery"

    .line 108
    .line 109
    invoke-static {v1, v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Lcom/microsoft/identity/common/java/exception/TerminalException;

    .line 113
    .line 114
    const-string v2, "Unable to perform cloud discovery in order to validate request authority"

    .line 115
    .line 116
    invoke-direct {v1, p0, v2, v0}, Lcom/microsoft/identity/common/java/exception/TerminalException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :cond_3
    :goto_1
    return-void
.end method
