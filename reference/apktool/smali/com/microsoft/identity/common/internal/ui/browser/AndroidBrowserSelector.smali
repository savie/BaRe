.class public final Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;
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
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    return-void
.end method

.method private static matches(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;Lcom/microsoft/identity/common/java/browser/Browser;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getSignatureHashes()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/browser/Browser;->getSignatureHashes()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const-string v2, "Browser: "

    .line 30
    .line 31
    const-string v3, "AndroidBrowserSelector:matches"

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " signature hash not match"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 57
    .line 58
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getVersionLowerBound()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const-string v4, ")"

    .line 71
    .line 72
    const-string v5, " Get: "

    .line 73
    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/browser/Browser;->getVersion()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getVersionLowerBound()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-static {v0, v6}, Lcom/microsoft/identity/common/java/util/FileUtil;->compareSemanticVersion(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v6, -0x1

    .line 89
    if-ne v0, v6, :cond_2

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " version too low (Expected: "

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getVersionLowerBound()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/browser/Browser;->getVersion()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 133
    .line 134
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return v1

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getVersionUpperBound()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    const/4 v6, 0x1

    .line 147
    if-nez v0, :cond_3

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/browser/Browser;->getVersion()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getVersionUpperBound()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-static {v0, v7}, Lcom/microsoft/identity/common/java/util/FileUtil;->compareSemanticVersion(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-ne v0, v6, :cond_3

    .line 162
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, " version too high (Expected: "

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getVersionUpperBound()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/browser/Browser;->getVersion()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 205
    .line 206
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return v1

    .line 210
    :cond_3
    return v6
.end method


# virtual methods
.method public final getBrowsers(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Ljava/util/ArrayList;
    .locals 19

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "http://www.example.com"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android.intent.action.VIEW"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "AndroidBrowserSelector:getBrowsers"

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "Querying preferred browser: "

    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 37
    .line 38
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    :cond_0
    const v3, 0x10040

    .line 49
    .line 50
    .line 51
    move-object/from16 v4, p0

    .line 52
    .line 53
    iget-object v4, v4, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v5, "Querying browsers. Got back "

    .line 62
    .line 63
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, " browsers."

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    sget v6, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 83
    .line 84
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v3, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_7

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 107
    .line 108
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 109
    .line 110
    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    const-string v9, "Browser: "

    .line 115
    .line 116
    if-eqz v8, :cond_2

    .line 117
    .line 118
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 119
    .line 120
    const-string v10, "android.intent.category.BROWSABLE"

    .line 121
    .line 122
    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_2

    .line 127
    .line 128
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 129
    .line 130
    invoke-virtual {v8}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    if-nez v8, :cond_1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 138
    .line 139
    invoke-virtual {v8}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    if-eqz v8, :cond_3

    .line 144
    .line 145
    :cond_2
    :goto_1
    move-object/from16 v18, v0

    .line 146
    .line 147
    move-object/from16 v17, v2

    .line 148
    .line 149
    goto/16 :goto_9

    .line 150
    .line 151
    :cond_3
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 152
    .line 153
    invoke-virtual {v8}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    const/4 v10, 0x0

    .line 158
    move v11, v10

    .line 159
    move v12, v11

    .line 160
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    if-eqz v13, :cond_2

    .line 165
    .line 166
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    check-cast v13, Ljava/lang/String;

    .line 171
    .line 172
    const-string v14, "http"

    .line 173
    .line 174
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    or-int/2addr v11, v14

    .line 179
    const-string v14, "https"

    .line 180
    .line 181
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    or-int/2addr v12, v13

    .line 186
    if-eqz v11, :cond_6

    .line 187
    .line 188
    if-eqz v12, :cond_6

    .line 189
    .line 190
    :try_start_0
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 191
    .line 192
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v4, v8}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    new-instance v11, Landroid/content/Intent;

    .line 199
    .line 200
    const-string v12, "android.support.customtabs.action.CustomTabsService"

    .line 201
    .line 202
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v11, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    if-eqz v11, :cond_4

    .line 215
    .line 216
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    if-nez v11, :cond_4

    .line 221
    .line 222
    const/4 v11, 0x1

    .line 223
    goto :goto_3

    .line 224
    :cond_4
    move v11, v10

    .line 225
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 234
    .line 235
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v13, " supports custom tab: "

    .line 241
    .line 242
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    invoke-static {v1, v12}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance v12, Lcom/microsoft/identity/common/java/browser/Browser;

    .line 256
    .line 257
    iget-object v13, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 258
    .line 259
    new-instance v14, Ljava/util/HashSet;

    .line 260
    .line 261
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-static {v8}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    .line 265
    .line 266
    .line 267
    move-result-object v15

    .line 268
    array-length v10, v15

    .line 269
    const/4 v7, 0x0

    .line 270
    :goto_4
    if-ge v7, v10, :cond_5

    .line 271
    .line 272
    aget-object v16, v15, v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 273
    .line 274
    :try_start_1
    const-string v17, "SHA-512"
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 275
    .line 276
    move-object/from16 v18, v0

    .line 277
    .line 278
    :try_start_2
    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 279
    .line 280
    .line 281
    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 282
    move-object/from16 v17, v2

    .line 283
    .line 284
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    const/16 v2, 0xa

    .line 293
    .line 294
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 299
    .line 300
    .line 301
    add-int/lit8 v7, v7, 0x1

    .line 302
    .line 303
    move-object/from16 v2, v17

    .line 304
    .line 305
    move-object/from16 v0, v18

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :catch_0
    :goto_5
    move-object/from16 v17, v2

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :catch_1
    move-object/from16 v18, v0

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :catch_2
    :goto_6
    :try_start_4
    const-string v0, "Platform does not supportSHA-512 hashing"

    .line 315
    .line 316
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const/4 v7, 0x0

    .line 320
    goto :goto_7

    .line 321
    :cond_5
    move-object/from16 v18, v0

    .line 322
    .line 323
    move-object/from16 v17, v2

    .line 324
    .line 325
    move-object v7, v14

    .line 326
    :goto_7
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 327
    .line 328
    invoke-direct {v12, v13, v7, v0, v11}, Lcom/microsoft/identity/common/java/browser/Browser;-><init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;Z)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    .line 332
    .line 333
    .line 334
    goto :goto_8

    .line 335
    :catch_3
    move-object/from16 v18, v0

    .line 336
    .line 337
    :catch_4
    move-object/from16 v17, v2

    .line 338
    .line 339
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 345
    .line 346
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v2, " cannot be generated without the package info."

    .line 352
    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :goto_8
    move-object/from16 v2, v17

    .line 364
    .line 365
    move-object/from16 v0, v18

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_6
    move-object/from16 v18, v0

    .line 370
    .line 371
    move-object/from16 v17, v2

    .line 372
    .line 373
    move-object/from16 v2, v17

    .line 374
    .line 375
    move-object/from16 v0, v18

    .line 376
    .line 377
    const/4 v10, 0x0

    .line 378
    goto/16 :goto_2

    .line 379
    .line 380
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 386
    .line 387
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v2, " is not a full browser app."

    .line 393
    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    const-string v2, "Found "

    .line 408
    .line 409
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    const/4 v2, 0x0

    .line 427
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    return-object v3
.end method

.method public final selectBrowser(Ljava/util/List;Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Lcom/microsoft/identity/common/java/browser/Browser;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ")",
            "Lcom/microsoft/identity/common/java/browser/Browser;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "AndroidBrowserSelector:select"

    .line 4
    .line 5
    const-string v1, "Select the browser to launch."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, " version: "

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;->getBrowsers(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/microsoft/identity/common/java/browser/Browser;

    .line 34
    .line 35
    invoke-static {p2, v4}, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;->matches(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;Lcom/microsoft/identity/common/java/browser/Browser;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "Preferred Browser\'s package name: "

    .line 44
    .line 45
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/browser/Browser;->getVersion()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 70
    .line 71
    const-string v3, "AndroidBrowserSelector:getPreferredBrowser"

    .line 72
    .line 73
    invoke-static {v3, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move-object v4, v2

    .line 78
    :goto_0
    if-eqz v4, :cond_2

    .line 79
    .line 80
    return-object v4

    .line 81
    :cond_2
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;->getBrowsers(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_5

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lcom/microsoft/identity/common/java/browser/Browser;

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 116
    .line 117
    invoke-static {v4, p2}, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;->matches(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;Lcom/microsoft/identity/common/java/browser/Browser;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_4

    .line 122
    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string p1, "Browser\'s package name: "

    .line 126
    .line 127
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/browser/Browser;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/browser/Browser;->getVersion()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 152
    .line 153
    const-string p1, "AndroidBrowserSelector:getDefaultBrowser"

    .line 154
    .line 155
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    move-object p2, v2

    .line 160
    :goto_1
    if-eqz p2, :cond_6

    .line 161
    .line 162
    return-object p2

    .line 163
    :cond_6
    const-string p0, "No available browser installed on the device."

    .line 164
    .line 165
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-object v2
.end method
