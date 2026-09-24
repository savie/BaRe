.class public final Lsv5;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public final f:Ldd1;

.field public final g:Lov5;

.field public final h:Ljava/lang/String;

.field public final i:Lix6;

.field public final j:Lix6;

.field public final k:Lix6;

.field public final l:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->PCloud:Ldd1;

    .line 5
    .line 6
    iput-object v0, p0, Lsv5;->f:Ldd1;

    .line 7
    .line 8
    new-instance v0, Lov5;

    .line 9
    .line 10
    invoke-direct {v0}, Lov5;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lsv5;->g:Lov5;

    .line 14
    .line 15
    const-string v0, "Dc7RUkyzltJ"

    .line 16
    .line 17
    iput-object v0, p0, Lsv5;->h:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lix6;

    .line 20
    .line 21
    invoke-direct {v0}, Lix6;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lsv5;->i:Lix6;

    .line 25
    .line 26
    new-instance v0, Lix6;

    .line 27
    .line 28
    invoke-direct {v0}, Lix6;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lsv5;->j:Lix6;

    .line 32
    .line 33
    new-instance v0, Lix6;

    .line 34
    .line 35
    invoke-direct {v0}, Lix6;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lsv5;->k:Lix6;

    .line 39
    .line 40
    new-instance v0, Lix6;

    .line 41
    .line 42
    invoke-direct {v0}, Lix6;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lsv5;->l:Lix6;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final j()Landroid/content/Intent;
    .locals 8

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "android.intent.action.VIEW"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "android.intent.category.BROWSABLE"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "http"

    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v3, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 72
    .line 73
    new-instance v6, Landroid/content/Intent;

    .line 74
    .line 75
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v7, "android.support.customtabs.action.CustomTabsService"

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 84
    .line 85
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-eqz v6, :cond_0

    .line 95
    .line 96
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    const/16 v1, 0xa

    .line 103
    .line 104
    invoke-static {v3, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_2

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 126
    .line 127
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 128
    .line 129
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    sget-object v1, Lf90;->f:Ljava/util/List;

    .line 136
    .line 137
    new-instance v1, Ld90;

    .line 138
    .line 139
    invoke-direct {v1}, Ld90;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object v2, v1, Ld90;->d:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    .line 149
    .line 150
    const/4 v0, 0x2

    .line 151
    iput v0, v1, Ld90;->a:I

    .line 152
    .line 153
    iget-object p0, p0, Lsv5;->h:Ljava/lang/String;

    .line 154
    .line 155
    iput-object p0, v1, Ld90;->b:Ljava/lang/String;

    .line 156
    .line 157
    if-eqz p0, :cond_3

    .line 158
    .line 159
    new-instance p0, Lf90;

    .line 160
    .line 161
    invoke-direct {p0, v1}, Lf90;-><init>(Ld90;)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 165
    .line 166
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sget-object v1, Lcom/pcloud/sdk/AuthorizationActivity;->f:Landroid/net/Uri;

    .line 171
    .line 172
    new-instance v1, Landroid/content/Intent;

    .line 173
    .line 174
    const-class v2, Lcom/pcloud/sdk/AuthorizationActivity;

    .line 175
    .line 176
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_REQUEST"

    .line 180
    .line 181
    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    return-object v1

    .line 185
    :cond_3
    const-string p0, "setClientId() not called."

    .line 186
    .line 187
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object v4
.end method
