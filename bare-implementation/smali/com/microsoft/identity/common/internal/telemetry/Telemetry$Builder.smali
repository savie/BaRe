.class public final Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mIsDebugging:Ljava/lang/Boolean;

.field private mTelemetryContext:Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryContext;


# virtual methods
.method public final build()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mIsDebugging:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->access$300(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->access$100()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final withContext(Landroid/content/Context;)V
    .locals 9

    .line 1
    sget v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->a:I

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryContext;

    .line 12
    .line 13
    new-instance v2, Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryPropertiesCache;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryPropertiesCache;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/telemetry/Properties;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "Microsoft.MSAL.device_guid"

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryPropertiesCache;->getOrCreateRandomStableDeviceId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v3, v2}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "Microsoft.MSAL.time_zone"

    .line 39
    .line 40
    invoke-virtual {v1, v3, v2}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Ljd4;->r(Landroid/content/pm/PackageInfo;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 69
    .line 70
    if-nez v8, :cond_1

    .line 71
    .line 72
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 73
    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string v7, ""

    .line 88
    .line 89
    :goto_0
    move-object v0, v7

    .line 90
    :goto_1
    :try_start_1
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const-string v5, "Microsoft.MSAL.application_name"

    .line 97
    .line 98
    invoke-virtual {v1, v5, v0}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "Microsoft.MSAL.application_package"

    .line 102
    .line 103
    invoke-virtual {v1, v0, v7}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "Microsoft.MSAL.application_version"

    .line 107
    .line 108
    invoke-virtual {v1, v0, v3}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "Microsoft.MSAL.application_build"

    .line 112
    .line 113
    invoke-virtual {v1, v0, v4}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catch_0
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 118
    .line 119
    const-string v0, "AndroidTelemetryContext:addApplicationInfo"

    .line 120
    .line 121
    const-string v3, "Unable to find the app\'s package name from PackageManager."

    .line 122
    .line 123
    invoke-static {v0, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 127
    .line 128
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 129
    .line 130
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 131
    .line 132
    const-string v5, "Microsoft.MSAL.device_manufacturer"

    .line 133
    .line 134
    invoke-virtual {v1, v5, v0}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "Microsoft.MSAL.device_model"

    .line 138
    .line 139
    invoke-virtual {v1, v0, v3}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "Microsoft.MSAL.device_name"

    .line 143
    .line 144
    invoke-virtual {v1, v0, v4}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 148
    .line 149
    const-string v3, "android"

    .line 150
    .line 151
    const-string v4, "Microsoft.MSAL.os_name"

    .line 152
    .line 153
    invoke-virtual {v1, v4, v3}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v3, "Microsoft.MSAL.os_version"

    .line 157
    .line 158
    invoke-virtual {v1, v3, v0}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v0, "Microsoft.MSAL.security_patch"

    .line 162
    .line 163
    sget-object v3, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v1, v0, v3}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mTelemetryContext:Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryContext;

    .line 169
    .line 170
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 183
    .line 184
    and-int/lit8 p1, p1, 0x2

    .line 185
    .line 186
    if-eqz p1, :cond_3

    .line 187
    .line 188
    const/4 v2, 0x1

    .line 189
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mIsDebugging:Ljava/lang/Boolean;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    .line 195
    return-void

    .line 196
    :catch_1
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 197
    .line 198
    const-string p1, "Telemetry:withContext"

    .line 199
    .line 200
    const-string v0, "The application is not found from PackageManager."

    .line 201
    .line 202
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 206
    .line 207
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mIsDebugging:Ljava/lang/Boolean;

    .line 208
    .line 209
    return-void

    .line 210
    :cond_4
    const-string p0, "Application context must not be null."

    .line 211
    .line 212
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_5
    const-string p0, "Context must not be null."

    .line 217
    .line 218
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method
