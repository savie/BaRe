.class public final Lwq0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lwq0;

.field public static final b:Lex6;

.field public static final c:Lex6;

.field public static final d:Lix6;

.field public static final e:Lix6;

.field public static final f:Luq0;

.field public static final g:Ldq0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lwq0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwq0;->a:Lwq0;

    .line 7
    .line 8
    new-instance v1, Lex6;

    .line 9
    .line 10
    invoke-direct {v1}, Lzy4;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lwq0;->b:Lex6;

    .line 14
    .line 15
    new-instance v1, Lex6;

    .line 16
    .line 17
    invoke-direct {v1}, Lzy4;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lwq0;->c:Lex6;

    .line 21
    .line 22
    new-instance v1, Lix6;

    .line 23
    .line 24
    invoke-direct {v1}, Lix6;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lwq0;->d:Lix6;

    .line 28
    .line 29
    new-instance v1, Lix6;

    .line 30
    .line 31
    invoke-direct {v1}, Lix6;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lwq0;->e:Lix6;

    .line 35
    .line 36
    new-instance v1, Luq0;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lwq0;->f:Luq0;

    .line 42
    .line 43
    new-instance v1, Lc6;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {v1, v2}, Lc6;-><init>(I)V

    .line 47
    .line 48
    .line 49
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 50
    .line 51
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Ldb;

    .line 56
    .line 57
    invoke-direct {v3, v2}, Ldb;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Lma2;

    .line 61
    .line 62
    const/16 v5, 0xe

    .line 63
    .line 64
    invoke-direct {v4, v5}, Lma2;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v4, v3, Ldb;->a:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object v1, v3, Ldb;->c:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object v1, v3, Ldb;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lc6;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    iget-object v1, v3, Ldb;->a:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Lma2;

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iget-object v1, v3, Ldb;->a:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Lma2;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v1, v3, Ldb;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Lc6;

    .line 93
    .line 94
    iget-object v4, v3, Ldb;->a:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v4, Lma2;

    .line 97
    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    iget-object v1, v3, Ldb;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Lc6;

    .line 103
    .line 104
    invoke-virtual {v3}, Ldb;->a()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_0

    .line 109
    .line 110
    new-instance v5, Lud9;

    .line 111
    .line 112
    invoke-direct {v5, v4, v2, v1, v3}, Lud9;-><init>(Lma2;Landroid/content/Context;Lc6;Ldb;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    new-instance v5, Ldq0;

    .line 117
    .line 118
    invoke-direct {v5, v4, v2, v1, v3}, Ldq0;-><init>(Lma2;Landroid/content/Context;Lc6;Ldb;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v3}, Ldb;->a()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    new-instance v5, Lud9;

    .line 129
    .line 130
    invoke-direct {v5, v4, v2, v3}, Lud9;-><init>(Lma2;Landroid/content/Context;Ldb;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    new-instance v5, Ldq0;

    .line 135
    .line 136
    invoke-direct {v5, v4, v2, v3}, Ldq0;-><init>(Lma2;Landroid/content/Context;Ldb;)V

    .line 137
    .line 138
    .line 139
    :goto_0
    sput-object v5, Lwq0;->g:Ldq0;

    .line 140
    .line 141
    invoke-virtual {v0}, Lwq0;->f()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_3
    const-string v0, "Pending purchases for one-time products must be supported."

    .line 146
    .line 147
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_4
    const-string v0, "Please provide a valid listener for purchases updates."

    .line 152
    .line 153
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public static a(Ljava/util/List;)Lwb6;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v3, v2

    .line 24
    check-cast v3, Lwb6;

    .line 25
    .line 26
    invoke-virtual {v3}, Lwb6;->getPurchaseStateEnum()Lwb6$b;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v4, Lwb6$b;->PURCHASED:Lwb6$b;

    .line 31
    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move-object v1, v0

    .line 61
    check-cast v1, Lwb6;

    .line 62
    .line 63
    invoke-virtual {v1}, Lwb6;->getPurchaseTime()Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    move-object v4, v3

    .line 76
    check-cast v4, Lwb6;

    .line 77
    .line 78
    invoke-virtual {v4}, Lwb6;->getPurchaseTime()Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    cmp-long v6, v1, v4

    .line 87
    .line 88
    if-gez v6, :cond_5

    .line 89
    .line 90
    move-object v0, v3

    .line 91
    move-wide v1, v4

    .line 92
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_4

    .line 97
    .line 98
    :goto_1
    check-cast v0, Lwb6;

    .line 99
    .line 100
    :cond_6
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/ArrayList;Lw76;)V
    .locals 6

    .line 1
    new-instance v0, Lty3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    invoke-static {p1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    new-instance v3, Loe;

    .line 34
    .line 35
    const/16 v4, 0xb

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v3, v4, v5}, Loe;-><init>(IZ)V

    .line 39
    .line 40
    .line 41
    iput-object p0, v3, Loe;->b:Ljava/lang/Object;

    .line 42
    .line 43
    iput-object v2, v3, Loe;->c:Ljava/lang/Object;

    .line 44
    .line 45
    const-string v2, "first_party"

    .line 46
    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    iget-object v2, v3, Loe;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    new-instance v2, Lpc6;

    .line 60
    .line 61
    invoke-direct {v2, v3}, Lpc6;-><init>(Loe;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string p0, "Product id must be provided."

    .line 69
    .line 70
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    const-string p0, "Serialized doc id must be provided for first party products."

    .line 75
    .line 76
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_7

    .line 85
    .line 86
    new-instance p0, Ljava/util/HashSet;

    .line 87
    .line 88
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lpc6;

    .line 106
    .line 107
    iget-object v3, v2, Lpc6;->b:Ljava/lang/String;

    .line 108
    .line 109
    const-string v4, "play_pass_subs"

    .line 110
    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_3

    .line 116
    .line 117
    iget-object v2, v2, Lpc6;->b:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    const/4 p1, 0x1

    .line 128
    if-gt p0, p1, :cond_6

    .line 129
    .line 130
    invoke-static {v1}, Lma9;->o(Ljava/util/ArrayList;)Lma9;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    iput-object p0, v0, Lty3;->a:Ljava/lang/Object;

    .line 135
    .line 136
    if-eqz p0, :cond_5

    .line 137
    .line 138
    new-instance p0, Ljq6;

    .line 139
    .line 140
    invoke-direct {p0, v0}, Ljq6;-><init>(Lty3;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lwq0;->g:Ldq0;

    .line 144
    .line 145
    invoke-virtual {p1, p0, p2}, Ldq0;->c(Ljq6;Lw76;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_5
    const-string p0, "Product list must be set to a non empty list."

    .line 150
    .line 151
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_6
    const-string p0, "All products should be of the same product type."

    .line 156
    .line 157
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_7
    const-string p0, "Product list cannot be empty."

    .line 162
    .line 163
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    new-instance v0, Lfl;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, v1}, Lfl;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const-string v2, "BillingManager"

    .line 22
    .line 23
    const-string v3, "queryPurchasesPlayCache"

    .line 24
    .line 25
    const/16 v4, 0x8

    .line 26
    .line 27
    invoke-static {v2, v3, v1, v0, v4}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/List;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lwb6;

    .line 50
    .line 51
    invoke-virtual {v5}, Lwb6;->getPurchaseStateEnum()Lwb6$b;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    sget-object v7, Lwb6$b;->PURCHASED:Lwb6$b;

    .line 56
    .line 57
    if-ne v6, v7, :cond_0

    .line 58
    .line 59
    invoke-virtual {v5}, Lwb6;->isAcknowledged()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_0

    .line 70
    .line 71
    const-string v6, "Acknowledging purchase"

    .line 72
    .line 73
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Lwb6;->getPurchaseToken()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v6, Lix;

    .line 84
    .line 85
    invoke-direct {v6, v5, v1}, Lix;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    const-string v5, "acknowledgePurchase"

    .line 89
    .line 90
    invoke-static {v2, v5, v1, v6, v4}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lyq0;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    return-object v0

    .line 98
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 99
    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const-string v1, "BM."

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v2, p1

    .line 13
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const-string v1, "BM."

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v2, p1

    .line 13
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static g(Lwb6;Lhq0;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lwb6;->isSpoofedOrderId()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p0, v1

    .line 13
    :goto_0
    if-nez p0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lwb6;->Companion:Lwb6$a;

    .line 16
    .line 17
    invoke-virtual {p0}, Lwb6$a;->default()Lwb6;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    invoke-static {}, Lre3;->k()Lzc2;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "transactions"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v3, "premium"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v3, Lpf;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-direct {v3, p1, v4}, Lpf;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lwb6;->getOrderId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-lez v0, :cond_2

    .line 74
    .line 75
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    move-object v1, p1

    .line 82
    :cond_2
    if-nez v1, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {}, Lre3;->k()Lzc2;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v0, "premium_history"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v0, Lvq0;

    .line 100
    .line 101
    invoke-direct {v0, v1, p0, p1}, Lvq0;-><init>(Ljava/lang/String;Lwb6;Lzc2;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lzc2;->b(Laj8;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized f()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lwq0;->g:Ldq0;

    .line 3
    .line 4
    invoke-virtual {v0}, Ldq0;->v()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    sget-object v1, Lwq0;->c:Lex6;

    .line 13
    .line 14
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lrq0;

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    instance-of v3, v2, Lmq0;

    .line 23
    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    instance-of v2, v2, Loq0;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 34
    :goto_1
    if-eqz v2, :cond_4

    .line 35
    .line 36
    :cond_3
    sget-object v2, Lpq0;->a:Lpq0;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_4
    sget-object v1, Lwq0;->f:Luq0;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ldq0;->d(Leq0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_3

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_2
    const-string v1, "startConnection"

    .line 51
    .line 52
    invoke-static {v0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lwq0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    :goto_2
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    throw v0
.end method
