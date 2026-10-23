.class public final Lcom/pcloud/sdk/AuthorizationActivity;
.super Landroid/app/Activity;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Landroid/net/Uri;


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Lf90;

.field public c:Lr80;

.field public d:Lgh;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "https://my.pcloud.com/oauth2/authorize"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/pcloud/sdk/AuthorizationActivity;->f:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->d:Lgh;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->e:Z

    .line 9
    .line 10
    return-void
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-wide p0

    .line 10
    :catch_0
    const-string v0, "\' is not a valid value for \'"

    .line 11
    .line 12
    const-string v1, "\'."

    .line 13
    .line 14
    const-string v2, "\'"

    .line 15
    .line 16
    invoke-static {v2, p0, v0, p1, v1}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 p0, 0x0

    .line 24
    .line 25
    return-wide p0
.end method

.method public static c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "Missing \'"

    .line 11
    .line 12
    const-string v0, "\' response parameter."

    .line 13
    .line 14
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Ls80;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ls80;-><init>(Lcom/pcloud/sdk/AuthorizationActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 14

    .line 1
    const-string v0, "access_token"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_6

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v3, "pcloud-oauth://"

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_6

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    :try_start_0
    sget-object v3, Lii8;->a:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    new-instance v3, Ljava/util/TreeMap;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "&"

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    array-length v4, p1

    .line 55
    move v5, v1

    .line 56
    :goto_0
    if-ge v5, v4, :cond_1

    .line 57
    .line 58
    aget-object v6, p1, v5

    .line 59
    .line 60
    const/16 v7, 0x3d

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    add-int/lit8 v7, v7, 0x1

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v3, v8, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 83
    .line 84
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const-string v1, "code"

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    if-nez p1, :cond_3

    .line 92
    .line 93
    :try_start_1
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    sget-object p1, Lh90;->c:Lh90;

    .line 101
    .line 102
    invoke-virtual {p0, p1, v4}, Lcom/pcloud/sdk/AuthorizationActivity;->e(Lh90;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    move-object p1, v0

    .line 108
    goto :goto_3

    .line 109
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->b:Lf90;

    .line 110
    .line 111
    iget p1, p1, Lf90;->a:I

    .line 112
    .line 113
    const/4 v5, 0x2

    .line 114
    if-ne p1, v5, :cond_4

    .line 115
    .line 116
    invoke-static {v3, v0}, Lcom/pcloud/sdk/AuthorizationActivity;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    move-object v6, p1

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    move-object v6, v4

    .line 123
    :goto_2
    iget-object p1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->b:Lf90;

    .line 124
    .line 125
    iget p1, p1, Lf90;->a:I

    .line 126
    .line 127
    if-ne p1, v2, :cond_5

    .line 128
    .line 129
    invoke-static {v3, v1}, Lcom/pcloud/sdk/AuthorizationActivity;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    :cond_5
    move-object v11, v4

    .line 134
    const-string p1, "userid"

    .line 135
    .line 136
    invoke-static {v3, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->b(Ljava/util/Map;Ljava/lang/String;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v7

    .line 140
    const-string p1, "locationid"

    .line 141
    .line 142
    invoke-static {v3, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->b(Ljava/util/Map;Ljava/lang/String;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v9

    .line 146
    const-string p1, "hostname"

    .line 147
    .line 148
    invoke-static {v3, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    new-instance v3, Lv80;

    .line 153
    .line 154
    iget-object v4, p0, Lcom/pcloud/sdk/AuthorizationActivity;->b:Lf90;

    .line 155
    .line 156
    sget-object v5, Lh90;->a:Lh90;

    .line 157
    .line 158
    const/4 v13, 0x0

    .line 159
    invoke-direct/range {v3 .. v13}, Lv80;-><init>(Lf90;Lh90;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance p1, Landroid/content/Intent;

    .line 163
    .line 164
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v0, "com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_RESULT"

    .line 168
    .line 169
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const/4 v0, -0x1

    .line 173
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    .line 178
    .line 179
    return v2

    .line 180
    :goto_3
    sget-object v0, Lh90;->d:Lh90;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p0, v0, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->e(Lh90;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return v2

    .line 190
    :cond_6
    return v1
.end method

.method public final e(Lh90;Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Lv80;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->b:Lf90;

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const/4 v9, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    const-wide/16 v6, 0x0

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    move-object v10, p2

    .line 14
    invoke-direct/range {v0 .. v10}, Lv80;-><init>(Lf90;Lh90;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string p2, "com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_RESULT"

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    sget-object p2, Lh90;->b:Lh90;

    .line 28
    .line 29
    if-ne v2, p2, :cond_0

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p2, -0x1

    .line 34
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final f(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lgh;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lgh;->a:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v1, La72;

    .line 15
    .line 16
    invoke-direct {v1, v0}, La72;-><init>(Lgh;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lgh;->b:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->d:Lgh;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, v0, Lgh;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, La72;

    .line 30
    .line 31
    invoke-static {p0, v1, v2}, Li72;->a(Landroid/content/Context;Ljava/lang/String;Lj72;)Z

    .line 32
    .line 33
    .line 34
    new-instance v1, Lh72;

    .line 35
    .line 36
    iget-object v0, v0, Lgh;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lka;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lh72;-><init>(Lka;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Lh72;->a:Landroid/content/Intent;

    .line 44
    .line 45
    const-string v2, "android.support.customtabs.extra.TITLE_VISIBILITY"

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lh72;->a()Lix0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, v0, Lix0;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Landroid/content/Intent;

    .line 58
    .line 59
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const/high16 p2, 0x40000000    # 2.0f

    .line 63
    .line 64
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    iget-object p1, v0, Lix0;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->e:Z

    .line 82
    .line 83
    new-instance p1, Lr80;

    .line 84
    .line 85
    invoke-direct {p1, p0}, Lr80;-><init>(Lcom/pcloud/sdk/AuthorizationActivity;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->c:Lr80;

    .line 89
    .line 90
    invoke-static {p0}, Lnz4;->e(Landroid/app/Activity;)Lnz4;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->c:Lr80;

    .line 95
    .line 96
    new-instance p2, Landroid/content/IntentFilter;

    .line 97
    .line 98
    const-string v0, "CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION"

    .line 99
    .line 100
    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0, p2}, Lnz4;->f(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lh90;->b:Lh90;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/pcloud/sdk/AuthorizationActivity;->e(Lh90;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    if-eqz p1, :cond_b

    .line 33
    .line 34
    const-string v0, "com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_REQUEST"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_b

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lf90;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->b:Lf90;

    .line 49
    .line 50
    const p1, 0x7f0d001d

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 54
    .line 55
    .line 56
    const p1, 0x7f0a05ef

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/webkit/WebView;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->b:Lf90;

    .line 68
    .line 69
    iget v0, p1, Lf90;->a:I

    .line 70
    .line 71
    iget-object v2, p1, Lf90;->c:Ljava/util/Set;

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    if-ne v0, v3, :cond_1

    .line 75
    .line 76
    const-string v0, "code"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "token"

    .line 80
    .line 81
    :goto_0
    sget-object v3, Lcom/pcloud/sdk/AuthorizationActivity;->f:Landroid/net/Uri;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v4, "response_type"

    .line 88
    .line 89
    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v3, "client_id"

    .line 94
    .line 95
    iget-object v4, p1, Lf90;->b:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v4, "pcloud-oauth://"

    .line 104
    .line 105
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const-string v4, "redirect_uri"

    .line 120
    .line 121
    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-boolean p1, p1, Lf90;->e:Z

    .line 126
    .line 127
    if-eqz p1, :cond_2

    .line 128
    .line 129
    const-string p1, "force_reapprove"

    .line 130
    .line 131
    const-string v3, "true"

    .line 132
    .line 133
    invoke-virtual {v0, p1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_5

    .line 141
    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_4

    .line 156
    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_3

    .line 171
    .line 172
    const-string v3, ","

    .line 173
    .line 174
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_4
    const-string v2, "permissions"

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    .line 186
    .line 187
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->b:Lf90;

    .line 192
    .line 193
    iget-object v0, v0, Lf90;->d:Ljava/util/List;

    .line 194
    .line 195
    sget-object v2, Lii8;->a:Ljava/util/List;

    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    const/4 v3, 0x0

    .line 202
    if-eqz v2, :cond_6

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    new-instance v2, Landroid/content/Intent;

    .line 206
    .line 207
    const-string v4, "android.support.customtabs.action.CustomTabsService"

    .line 208
    .line 209
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-eqz v1, :cond_9

    .line 221
    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_9

    .line 231
    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Ljava/lang/String;

    .line 237
    .line 238
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_7

    .line 247
    .line 248
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 253
    .line 254
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 255
    .line 256
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-eqz v6, :cond_8

    .line 263
    .line 264
    iget-object v3, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 265
    .line 266
    :cond_9
    :goto_2
    if-eqz v3, :cond_a

    .line 267
    .line 268
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/pcloud/sdk/AuthorizationActivity;->f(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :catch_0
    invoke-virtual {p0, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->a(Landroid/net/Uri;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_a
    invoke-virtual {p0, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->a(Landroid/net/Uri;)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :cond_b
    const-string p0, "AuthorizationActivity must be launched with an Intent created via the AuthorizationActivity.createIntent() methods."

    .line 281
    .line 282
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->d:Lgh;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, v0, Lgh;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, La72;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lgh;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v1, v0, Lgh;->c:Ljava/lang/Object;

    .line 21
    .line 22
    :cond_0
    iput-object v1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->d:Lgh;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->c:Lr80;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {p0}, Lnz4;->e(Landroid/app/Activity;)Lnz4;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/pcloud/sdk/AuthorizationActivity;->c:Lr80;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lnz4;->h(Landroid/content/BroadcastReceiver;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/pcloud/sdk/AuthorizationActivity;->c:Lr80;

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_REQUEST"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lf90;

    .line 15
    .line 16
    const-string v2, "AuthorizationActivity.EXTRA_URL"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/net/Uri;

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const-string v0, "AuthorizationActivity.REFRESH_ACTION"

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    new-instance p1, Landroid/content/Intent;

    .line 47
    .line 48
    const-string v0, "CustomTabActivity.DESTROY_ACTION"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lnz4;->e(Landroid/app/Activity;)Lnz4;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lnz4;->g(Landroid/content/Intent;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->d(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    const-string v0, "CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION"

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->d(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void

    .line 88
    :cond_2
    if-nez v0, :cond_3

    .line 89
    .line 90
    const-string p1, "Missing intent extra ARGUMENT_AUTH_REQUEST"

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const-string p1, "Missing intent extra EXTRA_REDIRECT_URL"

    .line 94
    .line 95
    :goto_0
    sget-object v0, Lh90;->d:Lh90;

    .line 96
    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/pcloud/sdk/AuthorizationActivity;->e(Lh90;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->e:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lh90;->b:Lh90;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/pcloud/sdk/AuthorizationActivity;->e(Lh90;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->e:Z

    .line 24
    .line 25
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/pcloud/sdk/AuthorizationActivity;->a:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 7
    .line 8
    .line 9
    return-void
.end method
