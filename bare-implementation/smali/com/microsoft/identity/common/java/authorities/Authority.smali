.class public abstract Lcom/microsoft/identity/common/java/authorities/Authority;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final AAD_NA:Ljava/lang/String; = "AAD_NA"

.field private static final ADFS_PATH_SEGMENT:Ljava/lang/String; = "adfs"

.field public static final B2C:Ljava/lang/String; = "B2C"

.field private static final B2C_PATH_SEGMENT:Ljava/lang/String; = "tfp"

.field public static final CIAM:Ljava/lang/String; = "CIAM"

.field private static final TAG:Ljava/lang/String; = "Authority"

.field private static final knownAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/authorities/Authority;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field protected mAuthorityTypeString:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "type"
    .end annotation
.end field

.field protected mAuthorityUrlString:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "authority_url"
    .end annotation
.end field

.field protected mIsDefault:Z
    .annotation runtime Ly77;
        value = "default"
    .end annotation
.end field

.field public mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;
    .annotation runtime Ly77;
        value = "slice"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/authorities/Authority;->knownAuthorities:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/microsoft/identity/common/java/authorities/Authority;->sLock:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mIsDefault:Z

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->setSlice(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->setDataCenter(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 35
    .line 36
    return-void
.end method

.method public static addKnownAuthorities(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/authorities/Authority;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/authorities/Authority;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/Authority;->knownAuthorities:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public static clearKnownAuthorities()V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/authorities/Authority;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/Authority;->knownAuthorities:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method private static createAadAuthority(Lcom/microsoft/identity/common/java/util/CommonURIBuilder;Ljava/util/ArrayList;)Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;
    .locals 3

    .line 1
    invoke-virtual {p0}, Led8;->getPort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const-string v2, "://"

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Led8;->getScheme()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Led8;->getHost()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ":"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Led8;->getPort()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Led8;->getScheme()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Led8;->getHost()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_0
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->getAzureActiveDirectoryAudience(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;-><init>(Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;)V

    .line 89
    .line 90
    .line 91
    return-object p1
.end method

.method public static getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object p0

    return-object p0
.end method

.method public static getAuthorityFromAuthorityUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Led8;->getPathSegments()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, "ciamlogin.com"

    .line 16
    .line 17
    if-eqz v3, :cond_a

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    if-ne v3, v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    const-string v5, ""

    .line 34
    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    if-eqz p0, :cond_9

    .line 44
    .line 45
    invoke-static {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getEquivalentConfiguredAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-static {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getEquivalentConfiguredAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v3, v0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    .line 56
    .line 57
    const-string v4, "B2C"

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_1
    const-string v4, "CIAM"

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_2
    const-string v4, "AAD_NA"

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    instance-of v0, v0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    if-nez p1, :cond_3

    .line 98
    .line 99
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_3
    new-instance v0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;

    .line 106
    .line 107
    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_4
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/authorities/Authority;->createAadAuthority(Lcom/microsoft/identity/common/java/util/CommonURIBuilder;Ljava/util/ArrayList;)Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Ljava/lang/String;

    .line 121
    .line 122
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string v0, "adfs"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const-string v3, ":getAuthorityFromAuthorityUrl"

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-object v0, Lcom/microsoft/identity/common/java/authorities/Authority;->TAG:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v0, "Authority type is ADFS"

    .line 156
    .line 157
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/ActiveDirectoryFederationServicesAuthority;

    .line 161
    .line 162
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/ActiveDirectoryFederationServicesAuthority;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-object p1

    .line 166
    :cond_6
    const-string v0, "tfp"

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    sget-object v0, Lcom/microsoft/identity/common/java/authorities/Authority;->TAG:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string v0, "Authority type is B2C"

    .line 192
    .line 193
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;

    .line 197
    .line 198
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-object p1

    .line 202
    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_8

    .line 207
    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    sget-object v0, Lcom/microsoft/identity/common/java/authorities/Authority;->TAG:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const-string v0, "Authority type is CIAM"

    .line 226
    .line 227
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;

    .line 231
    .line 232
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-object p1

    .line 236
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    sget-object p1, Lcom/microsoft/identity/common/java/authorities/Authority;->TAG:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    const-string p1, "Authority type default: AAD"

    .line 254
    .line 255
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/authorities/Authority;->createAadAuthority(Lcom/microsoft/identity/common/java/util/CommonURIBuilder;Ljava/util/ArrayList;)Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    return-object p0

    .line 263
    :cond_9
    const-string p0, "authorityStr is marked non-null but is null"

    .line 264
    .line 265
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-object v0

    .line 269
    :cond_a
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_b

    .line 274
    .line 275
    new-instance p1, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;

    .line 276
    .line 277
    invoke-static {p0}, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;->getTenantNameVariantUrlFromAuthorityWithoutPath(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-object p1

    .line 285
    :cond_b
    new-instance p0, Lcom/microsoft/identity/common/java/authorities/UnknownAuthority;

    .line 286
    .line 287
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/authorities/UnknownAuthority;-><init>()V

    .line 288
    .line 289
    .line 290
    return-object p0

    .line 291
    :catch_0
    const-string p0, "Invalid authority URL"

    .line 292
    .line 293
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-object v0
.end method

.method private static getEquivalentConfiguredAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Authority;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/Authority;->sLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    sget-object v2, Lcom/microsoft/identity/common/java/authorities/Authority;->knownAuthorities:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 31
    .line 32
    iget-object v4, v3, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityUrlString:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    new-instance v4, Ljava/net/URL;

    .line 41
    .line 42
    iget-object v5, v3, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityUrlString:Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    move-object v0, v3

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    monitor-exit v1

    .line 62
    return-object v0

    .line 63
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/Authority;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v2, "Error parsing authority"

    .line 69
    .line 70
    invoke-static {p0, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->errorPII(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public static getKnownAuthorityResult(Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/Authority;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":getKnownAuthorityResult"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Getting known authority result..."

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    :try_start_0
    sget v2, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->a:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v1

    .line 36
    :goto_0
    invoke-static {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->ensureCloudDiscoveryForAuthority(Ljava/net/URL;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "Cloud discovery complete."

    .line 40
    .line 41
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    move-object v2, v1

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v2

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "Cloud discovery failed, will check hardcoded/configured authorities. Error: "

    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v0, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->isKnownAuthority(Lcom/microsoft/identity/common/java/authorities/Authority;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_1

    .line 73
    .line 74
    const-string p0, "Authority is known."

    .line 75
    .line 76
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;-><init>(ZLcom/microsoft/identity/common/java/exception/ClientException;)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_1
    const/4 p0, 0x0

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    new-instance v0, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;

    .line 90
    .line 91
    invoke-direct {v0, p0, v2}, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;-><init>(ZLcom/microsoft/identity/common/java/exception/ClientException;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_2
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 96
    .line 97
    const-string v2, "unknown_authority"

    .line 98
    .line 99
    const-string v3, "Provided authority is not known.  MSAL will only make requests to known authorities"

    .line 100
    .line 101
    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;

    .line 105
    .line 106
    invoke-direct {v1, p0, v0}, Lcom/microsoft/identity/common/java/authorities/Authority$KnownAuthorityResult;-><init>(ZLcom/microsoft/identity/common/java/exception/ClientException;)V

    .line 107
    .line 108
    .line 109
    return-object v1
.end method

.method public static isKnownAuthority(Lcom/microsoft/identity/common/java/authorities/Authority;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/Authority;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, ":isKnownAuthority"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "Authority is null"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    const-string p0, "Authority URL is null"

    .line 30
    .line 31
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    sget-object v2, Lcom/microsoft/identity/common/java/authorities/Authority;->sLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v2

    .line 38
    :try_start_0
    sget-object v3, Lcom/microsoft/identity/common/java/authorities/Authority;->knownAuthorities:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x1

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 56
    .line 57
    iget-object v6, v4, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityUrlString:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    iget-object v4, v4, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityUrlString:Ljava/lang/String;

    .line 68
    .line 69
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 70
    .line 71
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v7, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    move v3, v5

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v3, v1

    .line 94
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->hasCloudHost(Ljava/net/URL;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez v3, :cond_4

    .line 100
    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    :cond_4
    move v1, v5

    .line 104
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v4, "Authority is known to developer? ["

    .line 107
    .line 108
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v3, "]"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v3, "Authority is known to Microsoft? ["

    .line 129
    .line 130
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p0, "]"

    .line 137
    .line 138
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return v1

    .line 149
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p0
.end method


# virtual methods
.method public abstract createOAuth2Strategy(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p1, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityUri()Ljava/net/URI;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityUri()Ljava/net/URI;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public getAuthorityTypeString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAuthorityURL()Ljava/net/URL;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityUri()Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "Authority URI is not a URL."

    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getAuthorityUri()Ljava/net/URI;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityUrlString:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Authority URL is not a URI."

    .line 13
    .line 14
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getDefault()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mIsDefault:Z

    .line 2
    .line 3
    return p0
.end method

.method public getSlice()Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityUri()Ljava/net/URI;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/net/URI;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
.end method

.method public setDefault(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mIsDefault:Z

    .line 6
    .line 7
    return-void
.end method

.method public setSlice(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 2
    .line 3
    return-void
.end method
