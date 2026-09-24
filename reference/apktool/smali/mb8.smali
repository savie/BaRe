.class public final Lmb8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final l:[Ljava/lang/String;


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Z

.field public final e:Loh1;

.field public final f:Ljava/util/LinkedHashMap;

.field public final g:[Ljava/lang/String;

.field public final h:Lds5;

.field public final i:Lkm8;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Lbt3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "UPDATE"

    .line 2
    .line 3
    const-string v1, "DELETE"

    .line 4
    .line 5
    const-string v2, "INSERT"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lmb8;->l:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;ZLoh1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmb8;->a:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 5
    .line 6
    iput-object p2, p0, Lmb8;->b:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    iput-object p3, p0, Lmb8;->c:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    iput-boolean p5, p0, Lmb8;->d:Z

    .line 11
    .line 12
    iput-object p6, p0, Lmb8;->e:Loh1;

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lmb8;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    new-instance p1, Lpu;

    .line 23
    .line 24
    const/16 p3, 0x10

    .line 25
    .line 26
    invoke-direct {p1, p3}, Lpu;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lmb8;->k:Lbt3;

    .line 30
    .line 31
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lmb8;->f:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    array-length p1, p4

    .line 39
    new-array p3, p1, [Ljava/lang/String;

    .line 40
    .line 41
    :goto_0
    if-ge p2, p1, :cond_2

    .line 42
    .line 43
    aget-object p5, p4, p2

    .line 44
    .line 45
    sget-object p6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {p5, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p5

    .line 51
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lmb8;->f:Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lmb8;->b:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    aget-object v1, p4, p2

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p6

    .line 79
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    const/4 p6, 0x0

    .line 84
    :goto_1
    if-nez p6, :cond_1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    move-object p5, p6

    .line 88
    :goto_2
    aput-object p5, p3, p2

    .line 89
    .line 90
    add-int/lit8 p2, p2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iput-object p3, p0, Lmb8;->g:[Ljava/lang/String;

    .line 94
    .line 95
    iget-object p1, p0, Lmb8;->b:Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Ljava/util/Map$Entry;

    .line 116
    .line 117
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    check-cast p3, Ljava/lang/String;

    .line 122
    .line 123
    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 124
    .line 125
    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object p5, p0, Lmb8;->f:Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    invoke-interface {p5, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p5

    .line 138
    if-eqz p5, :cond_3

    .line 139
    .line 140
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    check-cast p2, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object p4, p0, Lmb8;->f:Ljava/util/LinkedHashMap;

    .line 154
    .line 155
    invoke-static {p4, p3}, Lx65;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    new-instance p1, Lds5;

    .line 164
    .line 165
    iget-object p2, p0, Lmb8;->g:[Ljava/lang/String;

    .line 166
    .line 167
    array-length p2, p2

    .line 168
    invoke-direct {p1, p2}, Lds5;-><init>(I)V

    .line 169
    .line 170
    .line 171
    iput-object p1, p0, Lmb8;->h:Lds5;

    .line 172
    .line 173
    new-instance p1, Lkm8;

    .line 174
    .line 175
    iget-object p2, p0, Lmb8;->g:[Ljava/lang/String;

    .line 176
    .line 177
    array-length p2, p2

    .line 178
    invoke-direct {p1, p2}, Lkm8;-><init>(I)V

    .line 179
    .line 180
    .line 181
    iput-object p1, p0, Lmb8;->i:Lkm8;

    .line 182
    .line 183
    return-void
.end method

.method public static final a(Lmb8;Lt26;Lkv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lfb8;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, Lfb8;

    .line 10
    .line 11
    iget v1, v0, Lfb8;->d:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lfb8;->d:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lfb8;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Lfb8;-><init>(Lmb8;Lkv1;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p0, v0, Lfb8;->b:Ljava/lang/Object;

    .line 29
    .line 30
    iget p2, v0, Lfb8;->d:I

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    const/4 v2, 0x1

    .line 34
    sget-object v3, Lyx1;->a:Lyx1;

    .line 35
    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    if-eq p2, v2, :cond_2

    .line 39
    .line 40
    if-ne p2, v1, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Lfb8;->a:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Ljava/util/Set;

    .line 45
    .line 46
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_2
    iget-object p1, v0, Lfb8;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lt26;

    .line 60
    .line 61
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance p0, Lsl;

    .line 69
    .line 70
    const/16 p2, 0xa

    .line 71
    .line 72
    invoke-direct {p0, p2}, Lsl;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object p1, v0, Lfb8;->a:Ljava/lang/Object;

    .line 76
    .line 77
    iput v2, v0, Lfb8;->d:I

    .line 78
    .line 79
    const-string p2, "SELECT * FROM room_table_modification_log WHERE invalidated = 1"

    .line 80
    .line 81
    invoke-interface {p1, p2, p0, v0}, Lt26;->c(Ljava/lang/String;Lmt3;Lkv1;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-ne p0, v3, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_1
    check-cast p0, Ljava/util/Set;

    .line 89
    .line 90
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_5

    .line 95
    .line 96
    iput-object p0, v0, Lfb8;->a:Ljava/lang/Object;

    .line 97
    .line 98
    iput v1, v0, Lfb8;->d:I

    .line 99
    .line 100
    const-string p2, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"

    .line 101
    .line 102
    invoke-static {p1, p2, v0}, Lod2;->e(Lt26;Ljava/lang/String;Lkv1;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v3, :cond_5

    .line 107
    .line 108
    :goto_2
    return-object v3

    .line 109
    :cond_5
    return-object p0
.end method

.method public static final b(Lmb8;Lkv1;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lmb8;->a:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 2
    .line 3
    instance-of v1, p1, Lgb8;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lgb8;

    .line 9
    .line 10
    iget v2, v1, Lgb8;->d:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lgb8;->d:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lgb8;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lgb8;-><init>(Lmb8;Lkv1;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v1, Lgb8;->b:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lgb8;->d:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v5, :cond_1

    .line 37
    .line 38
    iget-object v0, v1, Lgb8;->a:Lh80;

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v0, Leo6;->f:Lh80;

    .line 57
    .line 58
    invoke-virtual {p1}, Lh80;->c()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sget-object v6, Lsv2;->a:Lsv2;

    .line 63
    .line 64
    if-eqz v2, :cond_c

    .line 65
    .line 66
    :try_start_1
    iget-object v2, p0, Lmb8;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 69
    .line 70
    .line 71
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Lh80;->k()V

    .line 75
    .line 76
    .line 77
    return-object v6

    .line 78
    :cond_3
    :try_start_2
    iget-object v2, p0, Lmb8;->k:Lbt3;

    .line 79
    .line 80
    invoke-interface {v2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    if-nez v2, :cond_4

    .line 91
    .line 92
    invoke-virtual {p1}, Lh80;->k()V

    .line 93
    .line 94
    .line 95
    return-object v6

    .line 96
    :cond_4
    :try_start_3
    new-instance v2, Ls10;

    .line 97
    .line 98
    const/4 v6, 0x3

    .line 99
    invoke-direct {v2, p0, v3, v6}, Ls10;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 100
    .line 101
    .line 102
    iput-object p1, v1, Lgb8;->a:Lh80;

    .line 103
    .line 104
    iput v5, v1, Lgb8;->d:I

    .line 105
    .line 106
    invoke-virtual {v0, v4, v2, v1}, Leo6;->k(ZLqt3;Lkv1;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    sget-object v1, Lyx1;->a:Lyx1;

    .line 111
    .line 112
    if-ne v0, v1, :cond_5

    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_5
    move-object v10, v0

    .line 116
    move-object v0, p1

    .line 117
    move-object p1, v10

    .line 118
    :goto_1
    :try_start_4
    check-cast p1, Ljava/util/Set;

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_b

    .line 125
    .line 126
    iget-object v1, p0, Lmb8;->i:Lkm8;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_6
    iget-object v1, v1, Lkm8;->a:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, Lkm7;

    .line 141
    .line 142
    :cond_7
    invoke-virtual {v1}, Lkm7;->d()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    move-object v3, v2

    .line 147
    check-cast v3, [I

    .line 148
    .line 149
    array-length v6, v3

    .line 150
    new-array v7, v6, [I

    .line 151
    .line 152
    move v8, v4

    .line 153
    :goto_2
    if-ge v8, v6, :cond_9

    .line 154
    .line 155
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-eqz v9, :cond_8

    .line 164
    .line 165
    aget v9, v3, v8

    .line 166
    .line 167
    add-int/2addr v9, v5

    .line 168
    goto :goto_3

    .line 169
    :cond_8
    aget v9, v3, v8

    .line 170
    .line 171
    :goto_3
    aput v9, v7, v8

    .line 172
    .line 173
    add-int/lit8 v8, v8, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_9
    sget-object v3, Lly8;->c:Ldu9;

    .line 177
    .line 178
    if-nez v2, :cond_a

    .line 179
    .line 180
    move-object v2, v3

    .line 181
    :cond_a
    invoke-virtual {v1, v2, v7}, Lkm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_7

    .line 186
    .line 187
    :goto_4
    iget-object p0, p0, Lmb8;->e:Loh1;

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Loh1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    .line 191
    .line 192
    :cond_b
    invoke-virtual {v0}, Lh80;->k()V

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :catchall_1
    move-exception p0

    .line 197
    move-object v0, p1

    .line 198
    :goto_5
    invoke-virtual {v0}, Lh80;->k()V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_c
    return-object v6
.end method

.method public static final c(Lmb8;Lg98;ILkv1;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    instance-of v4, v3, Lib8;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    move-object v4, v3

    .line 17
    check-cast v4, Lib8;

    .line 18
    .line 19
    iget v5, v4, Lib8;->p:I

    .line 20
    .line 21
    const/high16 v6, -0x80000000

    .line 22
    .line 23
    and-int v7, v5, v6

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    sub-int/2addr v5, v6

    .line 28
    iput v5, v4, Lib8;->p:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v4, Lib8;

    .line 32
    .line 33
    invoke-direct {v4, v0, v3}, Lib8;-><init>(Lmb8;Lkv1;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v3, v4, Lib8;->k:Ljava/lang/Object;

    .line 37
    .line 38
    iget v5, v4, Lib8;->p:I

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v7, 0x1

    .line 42
    sget-object v8, Lyx1;->a:Lyx1;

    .line 43
    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    if-eq v5, v7, :cond_2

    .line 47
    .line 48
    if-ne v5, v6, :cond_1

    .line 49
    .line 50
    iget v1, v4, Lib8;->f:I

    .line 51
    .line 52
    iget v2, v4, Lib8;->e:I

    .line 53
    .line 54
    iget v5, v4, Lib8;->d:I

    .line 55
    .line 56
    iget-object v9, v4, Lib8;->c:[Ljava/lang/String;

    .line 57
    .line 58
    iget-object v10, v4, Lib8;->b:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v11, v4, Lib8;->a:Lt26;

    .line 61
    .line 62
    invoke-static {v3}, Llg7;->H(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move/from16 p3, v7

    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    return-object v0

    .line 76
    :cond_2
    iget v1, v4, Lib8;->d:I

    .line 77
    .line 78
    iget-object v2, v4, Lib8;->a:Lt26;

    .line 79
    .line 80
    invoke-static {v3}, Llg7;->H(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object/from16 v16, v2

    .line 84
    .line 85
    move v2, v1

    .line 86
    move-object/from16 v1, v16

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {v3}, Llg7;->H(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v5, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    .line 95
    .line 96
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v5, ", 0)"

    .line 103
    .line 104
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iput-object v1, v4, Lib8;->a:Lt26;

    .line 112
    .line 113
    iput v2, v4, Lib8;->d:I

    .line 114
    .line 115
    iput v7, v4, Lib8;->p:I

    .line 116
    .line 117
    invoke-static {v1, v3, v4}, Lod2;->e(Lt26;Ljava/lang/String;Lkv1;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-ne v3, v8, :cond_4

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_4
    :goto_1
    iget-object v3, v0, Lmb8;->g:[Ljava/lang/String;

    .line 125
    .line 126
    aget-object v3, v3, v2

    .line 127
    .line 128
    sget-object v5, Lmb8;->l:[Ljava/lang/String;

    .line 129
    .line 130
    const/4 v9, 0x0

    .line 131
    const/4 v10, 0x3

    .line 132
    move-object v11, v5

    .line 133
    move v5, v2

    .line 134
    move v2, v9

    .line 135
    move-object v9, v11

    .line 136
    move-object v11, v1

    .line 137
    move v1, v10

    .line 138
    move-object v10, v3

    .line 139
    :goto_2
    if-ge v2, v1, :cond_7

    .line 140
    .line 141
    aget-object v3, v9, v2

    .line 142
    .line 143
    iget-boolean v12, v0, Lmb8;->d:Z

    .line 144
    .line 145
    if-eqz v12, :cond_5

    .line 146
    .line 147
    const-string v12, "TEMP"

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    const-string v12, ""

    .line 151
    .line 152
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v14, "room_table_modification_trigger_"

    .line 155
    .line 156
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const/16 v14, 0x5f

    .line 163
    .line 164
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    const-string v14, " TRIGGER IF NOT EXISTS `"

    .line 175
    .line 176
    const-string v15, "` AFTER "

    .line 177
    .line 178
    move/from16 p3, v7

    .line 179
    .line 180
    const-string v7, "CREATE "

    .line 181
    .line 182
    invoke-static {v7, v12, v14, v13, v15}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    const-string v12, " ON `"

    .line 187
    .line 188
    const-string v13, "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = "

    .line 189
    .line 190
    invoke-static {v7, v3, v12, v10, v13}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v3, " AND invalidated = 0; END"

    .line 194
    .line 195
    invoke-static {v7, v5, v3}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    iput-object v11, v4, Lib8;->a:Lt26;

    .line 200
    .line 201
    iput-object v10, v4, Lib8;->b:Ljava/lang/String;

    .line 202
    .line 203
    iput-object v9, v4, Lib8;->c:[Ljava/lang/String;

    .line 204
    .line 205
    iput v5, v4, Lib8;->d:I

    .line 206
    .line 207
    iput v2, v4, Lib8;->e:I

    .line 208
    .line 209
    iput v1, v4, Lib8;->f:I

    .line 210
    .line 211
    iput v6, v4, Lib8;->p:I

    .line 212
    .line 213
    invoke-static {v11, v3, v4}, Lod2;->e(Lt26;Ljava/lang/String;Lkv1;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-ne v3, v8, :cond_6

    .line 218
    .line 219
    :goto_4
    return-object v8

    .line 220
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 221
    .line 222
    move/from16 v7, p3

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_7
    sget-object v0, Lbe8;->a:Lbe8;

    .line 226
    .line 227
    return-object v0
.end method

.method public static final d(Lmb8;Lg98;ILkv1;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p3, Ljb8;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p3

    .line 9
    check-cast v0, Ljb8;

    .line 10
    .line 11
    iget v1, v0, Ljb8;->n:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Ljb8;->n:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljb8;

    .line 24
    .line 25
    invoke-direct {v0, p0, p3}, Ljb8;-><init>(Lmb8;Lkv1;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p3, v0, Ljb8;->f:Ljava/lang/Object;

    .line 29
    .line 30
    iget v1, v0, Ljb8;->n:I

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    iget p0, v0, Ljb8;->e:I

    .line 38
    .line 39
    iget p1, v0, Ljb8;->d:I

    .line 40
    .line 41
    iget-object p2, v0, Ljb8;->c:[Ljava/lang/String;

    .line 42
    .line 43
    iget-object v1, v0, Ljb8;->b:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, v0, Ljb8;->a:Lt26;

    .line 46
    .line 47
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object p3, p2

    .line 51
    move-object p2, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    return-object p0

    .line 60
    :cond_2
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lmb8;->g:[Ljava/lang/String;

    .line 64
    .line 65
    aget-object p0, p0, p2

    .line 66
    .line 67
    sget-object p2, Lmb8;->l:[Ljava/lang/String;

    .line 68
    .line 69
    const/4 p3, 0x0

    .line 70
    const/4 v1, 0x3

    .line 71
    move v6, v1

    .line 72
    move-object v1, p0

    .line 73
    move p0, v6

    .line 74
    move-object v6, p2

    .line 75
    move-object p2, p1

    .line 76
    move p1, p3

    .line 77
    move-object p3, v6

    .line 78
    :goto_1
    if-ge p1, p0, :cond_4

    .line 79
    .line 80
    aget-object v3, p3, p1

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v5, "room_table_modification_trigger_"

    .line 85
    .line 86
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const/16 v5, 0x5f

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const-string v4, "DROP TRIGGER IF EXISTS `"

    .line 105
    .line 106
    const/16 v5, 0x60

    .line 107
    .line 108
    invoke-static {v5, v4, v3}, Lu48;->j(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iput-object p2, v0, Ljb8;->a:Lt26;

    .line 113
    .line 114
    iput-object v1, v0, Ljb8;->b:Ljava/lang/String;

    .line 115
    .line 116
    iput-object p3, v0, Ljb8;->c:[Ljava/lang/String;

    .line 117
    .line 118
    iput p1, v0, Ljb8;->d:I

    .line 119
    .line 120
    iput p0, v0, Ljb8;->e:I

    .line 121
    .line 122
    iput v2, v0, Ljb8;->n:I

    .line 123
    .line 124
    invoke-static {p2, v3, v0}, Lod2;->e(Lt26;Ljava/lang/String;Lkv1;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    sget-object v4, Lyx1;->a:Lyx1;

    .line 129
    .line 130
    if-ne v3, v4, :cond_3

    .line 131
    .line 132
    return-object v4

    .line 133
    :cond_3
    :goto_2
    add-int/2addr p1, v2

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 136
    .line 137
    return-object p0
.end method


# virtual methods
.method public final e(Lkv1;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lkb8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lkb8;

    .line 7
    .line 8
    iget v1, v0, Lkb8;->d:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkb8;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkb8;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lkb8;-><init>(Lmb8;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lkb8;->b:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lkb8;->d:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lkb8;->a:Lh80;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lmb8;->a:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 53
    .line 54
    iget-object v1, p1, Leo6;->f:Lh80;

    .line 55
    .line 56
    invoke-virtual {v1}, Lh80;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    :try_start_1
    new-instance v4, Lj41;

    .line 63
    .line 64
    const/4 v5, 0x3

    .line 65
    invoke-direct {v4, p0, v2, v5}, Lj41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 66
    .line 67
    .line 68
    iput-object v1, v0, Lkb8;->a:Lh80;

    .line 69
    .line 70
    iput v3, v0, Lkb8;->d:I

    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    invoke-virtual {p1, p0, v4, v0}, Leo6;->k(ZLqt3;Lkv1;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    sget-object p1, Lyx1;->a:Lyx1;

    .line 78
    .line 79
    if-ne p0, p1, :cond_3

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_3
    move-object p0, v1

    .line 83
    :goto_1
    invoke-virtual {p0}, Lh80;->k()V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    move-object p0, v1

    .line 89
    :goto_2
    invoke-virtual {p0}, Lh80;->k()V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_4
    :goto_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 94
    .line 95
    return-object p0
.end method

.method public final f([Ljava/lang/String;)Lpw5;
    .locals 7

    .line 1
    new-instance v0, Lw97;

    .line 2
    .line 3
    invoke-direct {v0}, Lw97;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    aget-object v4, p1, v3

    .line 12
    .line 13
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v6, p0, Lmb8;->c:Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/util/Set;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lw97;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v0, v4}, Lw97;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v0}, Lsz8;->e(Lw97;)Lw97;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-array v0, v2, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, [Ljava/lang/String;

    .line 53
    .line 54
    array-length v0, p1

    .line 55
    new-array v1, v0, [I

    .line 56
    .line 57
    :goto_2
    if-ge v2, v0, :cond_3

    .line 58
    .line 59
    aget-object v3, p1, v2

    .line 60
    .line 61
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Lmb8;->f:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/Integer;

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    aput v3, v1, v2

    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    const-string p0, "There is no table with name "

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 p0, 0x0

    .line 99
    return-object p0

    .line 100
    :cond_3
    new-instance p0, Lpw5;

    .line 101
    .line 102
    invoke-direct {p0, p1, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object p0
.end method
