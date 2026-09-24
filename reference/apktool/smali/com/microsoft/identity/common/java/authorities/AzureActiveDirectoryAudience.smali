.class public abstract Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final ALL:Ljava/lang/String; = "common"

.field public static final CONSUMERS:Ljava/lang/String; = "consumers"

.field public static final MSA_MEGA_TENANT_ID:Ljava/lang/String; = "9188040d-6c67-4c5b-b112-36a304b66dad"

.field public static final ORGANIZATIONS:Ljava/lang/String; = "organizations"

.field private static final TAG:Ljava/lang/String; = "AzureActiveDirectoryAudience"


# instance fields
.field private mCloudUrl:Ljava/lang/String;

.field private mTenantId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "tenant_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAzureActiveDirectoryAudience(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    sparse-switch v1, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v1, "consumers"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x2

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v1, "common"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v1, "organizations"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v2, 0x0

    .line 51
    :goto_0
    const-string v0, ":getAzureActiveDirectoryAudience"

    .line 52
    .line 53
    packed-switch v2, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "Audience: AccountsInOneOrganization"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/microsoft/identity/common/java/authorities/AccountsInOneOrganization;

    .line 79
    .line 80
    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/java/authorities/AccountsInOneOrganization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v0, "Audience: AnyPersonalAccount"

    .line 102
    .line 103
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/AnyPersonalAccount;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/AnyPersonalAccount;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v0, "Audience: AllAccounts"

    .line 130
    .line 131
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/AllAccounts;

    .line 135
    .line 136
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/AllAccounts;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-object p1

    .line 140
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string v0, "Audience: AnyOrganizationalAccount"

    .line 158
    .line 159
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/AnyOrganizationalAccount;

    .line 163
    .line 164
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/AnyOrganizationalAccount;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-object p1

    .line 168
    nop

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x7da74660 -> :sswitch_2
        -0x50c0d615 -> :sswitch_1
        -0x191804c3 -> :sswitch_0
    .end sparse-switch

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTenantIdFromOpenIdProviderConfiguration(Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;->getIssuer()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :try_start_0
    new-instance v1, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Led8;->getPathSegments()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    :try_start_1
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :catch_0
    sget-object p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "OpenId Metadata did not contain UUID in the path "

    .line 39
    .line 40
    invoke-static {p0, v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 44
    .line 45
    invoke-direct {p0, v1, v0, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_0
    const-string p0, "inputString is marked non-null but is null"

    .line 50
    .line 51
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    sget-object p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string v1, "OpenId Metadata did not contain a path to the tenant"

    .line 58
    .line 59
    invoke-static {p0, v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 63
    .line 64
    invoke-direct {p0, v1, v0, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :catch_1
    move-exception p0

    .line 69
    const-string v1, "malformed_url"

    .line 70
    .line 71
    const-string v2, "Failed to construct issuerUri"

    .line 72
    .line 73
    invoke-static {v1, v2, p0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_2
    const-string p0, "configuration is marked non-null but is null"

    .line 78
    .line 79
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public static isHomeTenantAlias(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    const-string v1, "common"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    const-string v1, "consumers"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "organizations"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return v0

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_2
    const-string p0, "tenantId is marked non-null but is null"

    .line 33
    .line 34
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0
.end method


# virtual methods
.method public getCloudUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->mCloudUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getDefaultCloudUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    return-object p0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->mTenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTenantUuidForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ServiceException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->mTenantId:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->mTenantId:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ":loadOpenIdProviderConfigurationMetadata"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "Loading OpenId Provider Metadata..."

    .line 34
    .line 35
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfigurationClient;->loadOpenIdProviderConfigurationFromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getTenantIdFromOpenIdProviderConfiguration(Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_0
    const-string p0, "inputString is marked non-null but is null"

    .line 53
    .line 54
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_1
    const-string p0, "authority is marked non-null but is null"

    .line 59
    .line 60
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public setCloudUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->mCloudUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->mTenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
