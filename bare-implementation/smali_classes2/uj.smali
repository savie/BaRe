.class public final Luj;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcy0;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/List;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxj;Ljava/util/Map;Ljava/util/List;I)V
    .locals 1

    .line 1
    and-int/lit8 v0, p8, 0x10

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p5, Lyj;->j:Lyj;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p8, 0x20

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object p6, Lpv2;->a:Lpv2;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 v0, p8, 0x40

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    sget-object p7, Lov2;->a:Lov2;

    .line 18
    .line 19
    :cond_2
    and-int/lit16 p8, p8, 0x80

    .line 20
    .line 21
    if-eqz p8, :cond_3

    .line 22
    .line 23
    const/4 p8, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    const/4 p8, 0x0

    .line 26
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Luj;->a:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p2, p0, Luj;->b:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p3, p0, Luj;->c:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p4, p0, Luj;->d:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p5, p0, Luj;->e:Lcy0;

    .line 41
    .line 42
    iput-object p6, p0, Luj;->f:Ljava/util/Map;

    .line 43
    .line 44
    iput-object p7, p0, Luj;->g:Ljava/util/List;

    .line 45
    .line 46
    iput-boolean p8, p0, Luj;->h:Z

    .line 47
    .line 48
    return-void
.end method

.method public static b(Landroid/content/Context;Le90;)Landroid/content/Intent;
    .locals 4

    .line 1
    invoke-static {p0}, Lzm5;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lk90;

    .line 8
    .line 9
    new-instance v2, Lrf9;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    invoke-direct {v2, v0, v3}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lwj;

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lwj;-><init>(Lbw0;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, v0}, Lk90;-><init>(Landroid/content/Context;Lwj;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v1, p1}, Lk90;->b(Le90;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Lk90;->a()V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {v1}, Lk90;->a()V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :catch_0
    invoke-virtual {v1}, Lk90;->a()V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v0, Lk90;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lk90;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v0, p1}, Lk90;->b(Le90;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    invoke-virtual {v0}, Lk90;->a()V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    invoke-virtual {v0}, Lk90;->a()V

    .line 54
    .line 55
    .line 56
    throw p0
.end method


# virtual methods
.method public final a()Lc90;
    .locals 6

    .line 1
    new-instance v0, Lc90;

    .line 2
    .line 3
    new-instance v1, Ll90;

    .line 4
    .line 5
    iget-object v2, p0, Luj;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Luj;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v1, v2, v3, v4, v4}, Ll90;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Luj;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v3, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v3, v0, Lc90;->l:Ljava/util/Map;

    .line 36
    .line 37
    iput-object v1, v0, Lc90;->a:Ll90;

    .line 38
    .line 39
    const-string v1, "client ID cannot be null or empty"

    .line 40
    .line 41
    iget-object v3, p0, Luj;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v3, v1}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, v0, Lc90;->b:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "expected response type cannot be null or empty"

    .line 49
    .line 50
    const-string v3, "code"

    .line 51
    .line 52
    invoke-static {v3, v1}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v3, v0, Lc90;->d:Ljava/lang/String;

    .line 56
    .line 57
    const-string v1, "redirect URI cannot be null or empty"

    .line 58
    .line 59
    invoke-static {v2, v1}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, v0, Lc90;->e:Landroid/net/Uri;

    .line 63
    .line 64
    new-instance v1, Ljava/security/SecureRandom;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 67
    .line 68
    .line 69
    const/16 v2, 0x10

    .line 70
    .line 71
    new-array v3, v2, [B

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0xb

    .line 77
    .line 78
    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    const-string v5, "state cannot be empty if defined"

    .line 85
    .line 86
    invoke-static {v3, v5}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    iput-object v3, v0, Lc90;->g:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v3, Ljava/security/SecureRandom;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 94
    .line 95
    .line 96
    new-array v2, v2, [B

    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    const-string v3, "nonce cannot be empty if defined"

    .line 108
    .line 109
    invoke-static {v2, v3}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    iput-object v2, v0, Lc90;->h:Ljava/lang/String;

    .line 113
    .line 114
    sget-object v2, Ldk1;->a:Ljava/util/regex/Pattern;

    .line 115
    .line 116
    new-instance v2, Ljava/security/SecureRandom;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 119
    .line 120
    .line 121
    const/16 v3, 0x40

    .line 122
    .line 123
    new-array v3, v3, [B

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lc90;->b(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Luj;->g:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_2

    .line 142
    .line 143
    invoke-static {v1}, Lsz8;->J(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iput-object v1, v0, Lc90;->f:Ljava/lang/String;

    .line 148
    .line 149
    :cond_2
    iget-boolean v1, p0, Luj;->h:Z

    .line 150
    .line 151
    if-nez v1, :cond_3

    .line 152
    .line 153
    invoke-virtual {v0, v4}, Lc90;->b(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    iget-object p0, p0, Luj;->f:Ljava/util/Map;

    .line 157
    .line 158
    sget-object v1, Le90;->s:Ljava/util/Set;

    .line 159
    .line 160
    invoke-static {p0, v1}, Lji8;->e(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    iput-object p0, v0, Lc90;->l:Ljava/util/Map;

    .line 165
    .line 166
    return-object v0
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)Lvj;
    .locals 11

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v1, Ll90;

    .line 5
    .line 6
    iget-object v0, p0, Luj;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Luj;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v1, v0, v2, v3, v3}, Ll90;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "clientId cannot be null or empty"

    .line 23
    .line 24
    iget-object v2, p0, Luj;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v0}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "grantType cannot be null or empty"

    .line 35
    .line 36
    const-string v4, "refresh_token"

    .line 37
    .line 38
    invoke-static {v4, v3}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "refresh token cannot be empty if defined"

    .line 42
    .line 43
    invoke-static {p2, v3}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v3, v0

    .line 47
    new-instance v0, Ll58;

    .line 48
    .line 49
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    move-object v8, p2

    .line 59
    invoke-direct/range {v0 .. v10}, Ll58;-><init>(Ll90;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, v0}, Luj;->d(Landroid/content/Context;Ll58;)Lvj;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final d(Landroid/content/Context;Ll58;)Lvj;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Llh6;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Llh6;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v4, Lk90;

    .line 18
    .line 19
    invoke-direct {v4, p1}, Lk90;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Luj;->e:Lcy0;

    .line 23
    .line 24
    instance-of p1, p0, Lxj;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Ldu9;

    .line 29
    .line 30
    check-cast p0, Lxj;

    .line 31
    .line 32
    iget-object p0, p0, Lxj;->j:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {p1, v1}, Ldu9;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object p0, p1, Ldu9;->b:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object p1, Lyj;->j:Lyj;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_5

    .line 47
    .line 48
    sget-object p1, Lq34;->d:Lq34;

    .line 49
    .line 50
    :goto_0
    new-instance p0, Ltj;

    .line 51
    .line 52
    invoke-direct {p0, v2, v3, v0}, Ltj;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p2, p1, p0}, Lk90;->c(Ll58;Lt91;Lj90;)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    .line 60
    const-wide/16 p1, 0x1e

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 63
    .line 64
    .line 65
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v4}, Lk90;->a()V

    .line 69
    .line 70
    .line 71
    iget-object p0, v3, Llh6;->a:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Lz80;

    .line 74
    .line 75
    if-nez p0, :cond_3

    .line 76
    .line 77
    iget-object p0, v2, Llh6;->a:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Ln58;

    .line 80
    .line 81
    if-eqz p0, :cond_2

    .line 82
    .line 83
    new-instance p1, Lvj;

    .line 84
    .line 85
    iget-object p2, p0, Ln58;->c:Ljava/lang/String;

    .line 86
    .line 87
    if-nez p2, :cond_1

    .line 88
    .line 89
    const-string p2, ""

    .line 90
    .line 91
    :cond_1
    iget-object v0, p0, Ln58;->d:Ljava/lang/Long;

    .line 92
    .line 93
    iget-object v1, p0, Ln58;->f:Ljava/lang/String;

    .line 94
    .line 95
    iget-object p0, p0, Ln58;->h:Ljava/util/Map;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, p2, v0, v1, p0}, Lvj;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_2
    const-string p0, "OAuth token response is missing"

    .line 105
    .line 106
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 p0, 0x0

    .line 110
    return-object p0

    .line 111
    :cond_3
    throw p0

    .line 112
    :cond_4
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    .line 113
    .line 114
    const-string p1, "OAuth token request timed out"

    .line 115
    .line 116
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    new-instance p0, Lmn5;

    .line 123
    .line 124
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 125
    .line 126
    .line 127
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :goto_1
    invoke-virtual {v4}, Lk90;->a()V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Luj;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Luj;

    .line 10
    .line 11
    iget-object v0, p0, Luj;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Luj;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Luj;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Luj;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Luj;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p1, Luj;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Luj;->d:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p1, Luj;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object v0, p0, Luj;->e:Lcy0;

    .line 56
    .line 57
    iget-object v1, p1, Luj;->e:Lcy0;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    iget-object v0, p0, Luj;->f:Ljava/util/Map;

    .line 67
    .line 68
    iget-object v1, p1, Luj;->f:Ljava/util/Map;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    iget-object v0, p0, Luj;->g:Ljava/util/List;

    .line 78
    .line 79
    iget-object v1, p1, Luj;->g:Ljava/util/List;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_8

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_8
    iget-boolean p0, p0, Luj;->h:Z

    .line 89
    .line 90
    iget-boolean p1, p1, Luj;->h:Z

    .line 91
    .line 92
    if-eq p0, p1, :cond_9

    .line 93
    .line 94
    :goto_0
    const/4 p0, 0x0

    .line 95
    return p0

    .line 96
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 97
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Luj;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Luj;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Luj;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Luj;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Luj;->e:Lcy0;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, v0

    .line 35
    mul-int/2addr v2, v1

    .line 36
    iget-object v0, p0, Luj;->f:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v2

    .line 43
    mul-int/2addr v0, v1

    .line 44
    iget-object v2, p0, Luj;->g:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-boolean p0, p0, Luj;->h:Z

    .line 51
    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    add-int/2addr p0, v0

    .line 57
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", tokenEndpoint="

    .line 2
    .line 3
    const-string v1, ", clientId="

    .line 4
    .line 5
    const-string v2, "AppAuthCloudProvider(authorizationEndpoint="

    .line 6
    .line 7
    iget-object v3, p0, Luj;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Luj;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ", redirectUri="

    .line 16
    .line 17
    const-string v2, ", tokenAuthentication="

    .line 18
    .line 19
    iget-object v3, p0, Luj;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Luj;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Luj;->e:Lcy0;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", authorizationAdditionalParameters="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Luj;->f:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", scopes="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Luj;->g:Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", usesPkce="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-boolean p0, p0, Luj;->h:Z

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, ")"

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method
