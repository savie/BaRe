.class public final Lcom/google/gson/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lvt1;

.field public final d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final e:Ljava/util/List;

.field public final f:Lcom/google/gson/internal/Excluder;

.field public final g:I

.field public final h:Ljava/util/HashMap;

.field public final i:Z

.field public final j:Z

.field public final k:Lxq3;

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:Ljava/util/List;

.field public final q:Ljava/util/List;

.field public final r:I

.field public final s:I

.field public final t:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 133
    sget-object v0, Lt14;->s:Lt14;

    invoke-direct {p0, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    return-void
.end method

.method public constructor <init>(Lt14;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/gson/a;->a:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/gson/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    iget-object v0, p1, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/gson/a;->f:Lcom/google/gson/internal/Excluder;

    .line 21
    .line 22
    iget v0, p1, Lt14;->m:I

    .line 23
    .line 24
    iput v0, p0, Lcom/google/gson/a;->g:I

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    iget-object v1, p1, Lt14;->b:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/gson/a;->h:Ljava/util/HashMap;

    .line 34
    .line 35
    iget-boolean v1, p1, Lt14;->e:Z

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/google/gson/a;->i:Z

    .line 38
    .line 39
    iget-boolean v1, p1, Lt14;->h:Z

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/google/gson/a;->j:Z

    .line 42
    .line 43
    iget-object v1, p1, Lt14;->i:Lxq3;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/google/gson/a;->k:Lxq3;

    .line 46
    .line 47
    iget-boolean v1, p1, Lt14;->j:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/google/gson/a;->l:Z

    .line 50
    .line 51
    iget v2, p1, Lt14;->l:I

    .line 52
    .line 53
    iput v2, p0, Lcom/google/gson/a;->o:I

    .line 54
    .line 55
    iget v2, p1, Lt14;->f:I

    .line 56
    .line 57
    iput v2, p0, Lcom/google/gson/a;->m:I

    .line 58
    .line 59
    iget v2, p1, Lt14;->g:I

    .line 60
    .line 61
    iput v2, p0, Lcom/google/gson/a;->n:I

    .line 62
    .line 63
    iget-object v2, p1, Lt14;->c:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-static {v2}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/google/gson/a;->p:Ljava/util/List;

    .line 70
    .line 71
    iget-object v2, p1, Lt14;->d:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-static {v2}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iput-object v2, p0, Lcom/google/gson/a;->q:Ljava/util/List;

    .line 78
    .line 79
    iget v2, p1, Lt14;->n:I

    .line 80
    .line 81
    iput v2, p0, Lcom/google/gson/a;->r:I

    .line 82
    .line 83
    iget v2, p1, Lt14;->o:I

    .line 84
    .line 85
    iput v2, p0, Lcom/google/gson/a;->s:I

    .line 86
    .line 87
    iget-object v2, p1, Lt14;->k:Ljava/util/ArrayDeque;

    .line 88
    .line 89
    invoke-static {v2}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput-object v2, p0, Lcom/google/gson/a;->t:Ljava/util/List;

    .line 94
    .line 95
    sget-object v3, Lt14;->s:Lt14;

    .line 96
    .line 97
    if-ne p1, v3, :cond_0

    .line 98
    .line 99
    sget-object p1, Lt14;->q:Lvt1;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/google/gson/a;->c:Lvt1;

    .line 102
    .line 103
    sget-object p1, Lt14;->r:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/google/gson/a;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 106
    .line 107
    sget-object p1, Lt14;->t:Ljava/util/List;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/google/gson/a;->e:Ljava/util/List;

    .line 110
    .line 111
    return-void

    .line 112
    :cond_0
    new-instance v3, Lvt1;

    .line 113
    .line 114
    invoke-direct {v3, v0, v1, v2}, Lvt1;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    .line 115
    .line 116
    .line 117
    iput-object v3, p0, Lcom/google/gson/a;->c:Lvt1;

    .line 118
    .line 119
    new-instance v0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 120
    .line 121
    invoke-direct {v0, v3}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lvt1;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lcom/google/gson/a;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 125
    .line 126
    invoke-virtual {p1, v3, v0}, Lt14;->a(Lvt1;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/google/gson/a;->e:Ljava/util/List;

    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public final a(Ltl4;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "AssertionError (GSON 2.14.0): "

    .line 2
    .line 3
    const-string v1, "Type adapter \'"

    .line 4
    .line 5
    invoke-virtual {p1}, Ltl4;->getStrictness()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Ltl4;->getStrictness()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    if-ne v3, v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v5}, Ltl4;->setStrictness(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ltl4;->peek()I

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/gson/a;->d(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/gson/b;->read(Ltl4;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Lk55;->J(Ljava/lang/Class;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v4, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, "\' returned wrong type; requested "

    .line 60
    .line 61
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, " but got instance of "

    .line 72
    .line 73
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p0, "\nVerify that the adapter was registered for the correct type."

    .line 84
    .line 85
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-direct {v4, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_5

    .line 98
    :catch_0
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :catch_1
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :catch_2
    move-exception p0

    .line 103
    goto :goto_3

    .line 104
    :catch_3
    move-exception p0

    .line 105
    goto :goto_4

    .line 106
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Ltl4;->setStrictness(I)V

    .line 107
    .line 108
    .line 109
    return-object v3

    .line 110
    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p2, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw p2

    .line 132
    :goto_2
    new-instance p2, Lkm4;

    .line 133
    .line 134
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    throw p2

    .line 138
    :goto_3
    new-instance p2, Lkm4;

    .line 139
    .line 140
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_4
    if-eqz v5, :cond_3

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Ltl4;->setStrictness(I)V

    .line 147
    .line 148
    .line 149
    const/4 p0, 0x0

    .line 150
    return-object p0

    .line 151
    :cond_3
    :try_start_2
    new-instance p2, Lkm4;

    .line 152
    .line 153
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :goto_5
    invoke-virtual {p1, v2}, Ltl4;->setStrictness(I)V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method public final b(Ljava/io/Reader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ltl4;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ltl4;-><init>(Ljava/io/Reader;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    invoke-virtual {v0, p1}, Ltl4;->setStrictness(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/a;->a(Ltl4;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Ltl4;->peek()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/16 p2, 0xa

    .line 21
    .line 22
    if-ne p1, p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lkm4;

    .line 26
    .line 27
    const-string p1, "JSON document was not fully consumed."

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
    :try_end_0
    .catch Lm55; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Lik4;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :catch_1
    move-exception p0

    .line 41
    new-instance p1, Lkm4;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    :goto_0
    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/a;->b(Ljava/io/Reader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final d(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;
    .locals 9

    .line 1
    const-string v0, "type must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/gson/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/gson/b;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/gson/a;->a:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    new-instance v2, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/google/gson/b;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    return-object v3

    .line 46
    :cond_2
    const/4 v3, 0x0

    .line 47
    :goto_0
    :try_start_0
    new-instance v4, Lcom/google/gson/Gson$FutureTypeAdapter;

    .line 48
    .line 49
    invoke-direct {v4}, Lcom/google/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v5, p0, Lcom/google/gson/a;->e:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/4 v6, 0x0

    .line 62
    move-object v7, v6

    .line 63
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_5

    .line 68
    .line 69
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Lxb8;

    .line 74
    .line 75
    invoke-interface {v7, p0, p1}, Lxb8;->create(Lcom/google/gson/a;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    iget-object p0, v4, Lcom/google/gson/Gson$FutureTypeAdapter;->a:Lcom/google/gson/b;

    .line 82
    .line 83
    if-nez p0, :cond_4

    .line 84
    .line 85
    iput-object v7, v4, Lcom/google/gson/Gson$FutureTypeAdapter;->a:Lcom/google/gson/b;

    .line 86
    .line 87
    invoke-interface {v2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    .line 94
    .line 95
    const-string p1, "Delegate is already set"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 104
    .line 105
    .line 106
    :cond_6
    if-eqz v7, :cond_8

    .line 107
    .line 108
    if-eqz v3, :cond_7

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 111
    .line 112
    .line 113
    :cond_7
    return-object v7

    .line 114
    :cond_8
    const-string p0, "GSON (2.14.0) cannot handle "

    .line 115
    .line 116
    invoke-static {p1, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v6

    .line 120
    :goto_2
    if-eqz v3, :cond_9

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 123
    .line 124
    .line 125
    :cond_9
    throw p0
.end method

.method public final e(Ljava/lang/Class;)Lcom/google/gson/b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/gson/a;->d(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final f(Lxb8;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;
    .locals 6

    .line 1
    const-string v0, "skipPast must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "type must not be null"

    .line 7
    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/gson/a;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    sget-object v2, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->c:Lxb8;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne p1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lxb8;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    if-ne v4, p1, :cond_5

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-class v4, Lri4;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lri4;

    .line 46
    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-interface {v4}, Lri4;->value()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-class v5, Lxb8;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v5, v0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->a:Lvt1;

    .line 64
    .line 65
    invoke-static {v4}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v5, v4, v3}, Lvt1;->b(Lcom/google/gson/reflect/TypeToken;Z)Ler5;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v4}, Ler5;->construct()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lxb8;

    .line 78
    .line 79
    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lxb8;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    move-object v4, v1

    .line 88
    :cond_4
    if-ne v4, p1, :cond_5

    .line 89
    .line 90
    :goto_0
    move-object p1, v0

    .line 91
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/gson/a;->e:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v1, 0x0

    .line 98
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_8

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lxb8;

    .line 109
    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    if-ne v2, p1, :cond_6

    .line 113
    .line 114
    move v1, v3

    .line 115
    goto :goto_2

    .line 116
    :cond_7
    invoke-interface {v2, p0, p2}, Lxb8;->create(Lcom/google/gson/a;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    return-object v2

    .line 123
    :cond_8
    if-nez v1, :cond_9

    .line 124
    .line 125
    invoke-virtual {p0, p2}, Lcom/google/gson/a;->d(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :cond_9
    const-string p0, "GSON cannot serialize or deserialize "

    .line 131
    .line 132
    invoke-static {p2, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/4 p0, 0x0

    .line 136
    return-object p0
.end method

.method public final g(Ljava/io/Writer;)Lnn4;
    .locals 1

    .line 1
    new-instance v0, Lnn4;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnn4;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/gson/a;->k:Lxq3;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lnn4;->v(Lxq3;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/google/gson/a;->j:Z

    .line 12
    .line 13
    iput-boolean p1, v0, Lnn4;->p:Z

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-virtual {v0, p1}, Lnn4;->z(I)V

    .line 17
    .line 18
    .line 19
    iget-boolean p0, p0, Lcom/google/gson/a;->i:Z

    .line 20
    .line 21
    iput-boolean p0, v0, Lnn4;->r:Z

    .line 22
    .line 23
    return-object v0
.end method

.method public final h(Lqj4;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lqp7;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lqp7;-><init>(Ljava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/google/gson/a;->g(Ljava/io/Writer;)Lnn4;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/a;->k(Lqj4;Lnn4;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Lik4;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lel4;->a:Lel4;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/gson/a;->h(Lqj4;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lqp7;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lqp7;-><init>(Ljava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/google/gson/a;->g(Ljava/io/Writer;)Lnn4;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/gson/a;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnn4;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Lik4;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final k(Lqj4;Lnn4;)V
    .locals 5

    .line 1
    const-string v0, "AssertionError (GSON 2.14.0): "

    .line 2
    .line 3
    iget v1, p2, Lnn4;->n:I

    .line 4
    .line 5
    iget-boolean v2, p2, Lnn4;->p:Z

    .line 6
    .line 7
    iget-boolean v3, p2, Lnn4;->r:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/google/gson/a;->j:Z

    .line 10
    .line 11
    iput-boolean v4, p2, Lnn4;->p:Z

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/google/gson/a;->i:Z

    .line 14
    .line 15
    iput-boolean p0, p2, Lnn4;->r:Z

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    if-ne v1, p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    iput p0, p2, Lnn4;->n:I

    .line 22
    .line 23
    :cond_0
    :try_start_0
    sget-object p0, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->a:Lcom/google/gson/internal/bind/JsonElementTypeAdapter;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->c(Lqj4;Lnn4;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v1}, Lnn4;->z(I)V

    .line 32
    .line 33
    .line 34
    iput-boolean v2, p2, Lnn4;->p:Z

    .line 35
    .line 36
    iput-boolean v3, p2, Lnn4;->r:Z

    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p0

    .line 65
    new-instance p1, Lik4;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_0
    invoke-virtual {p2, v1}, Lnn4;->z(I)V

    .line 72
    .line 73
    .line 74
    iput-boolean v2, p2, Lnn4;->p:Z

    .line 75
    .line 76
    iput-boolean v3, p2, Lnn4;->r:Z

    .line 77
    .line 78
    throw p0
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnn4;)V
    .locals 5

    .line 1
    const-string v0, "AssertionError (GSON 2.14.0): "

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/gson/a;->d(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget v1, p3, Lnn4;->n:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput v2, p3, Lnn4;->n:I

    .line 18
    .line 19
    :cond_0
    iget-boolean v2, p3, Lnn4;->p:Z

    .line 20
    .line 21
    iget-boolean v3, p3, Lnn4;->r:Z

    .line 22
    .line 23
    iget-boolean v4, p0, Lcom/google/gson/a;->j:Z

    .line 24
    .line 25
    iput-boolean v4, p3, Lnn4;->p:Z

    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/google/gson/a;->i:Z

    .line 28
    .line 29
    iput-boolean p0, p3, Lnn4;->r:Z

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/google/gson/b;->write(Lnn4;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v1}, Lnn4;->z(I)V

    .line 35
    .line 36
    .line 37
    iput-boolean v2, p3, Lnn4;->p:Z

    .line 38
    .line 39
    iput-boolean v3, p3, Lnn4;->r:Z

    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :catch_1
    move-exception p0

    .line 68
    new-instance p1, Lik4;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    invoke-virtual {p3, v1}, Lnn4;->z(I)V

    .line 75
    .line 76
    .line 77
    iput-boolean v2, p3, Lnn4;->p:Z

    .line 78
    .line 79
    iput-boolean v3, p3, Lnn4;->r:Z

    .line 80
    .line 81
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{serializeNulls:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/google/gson/a;->i:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",factories:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/gson/a;->e:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",instanceCreators:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/google/gson/a;->c:Lvt1;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "}"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
