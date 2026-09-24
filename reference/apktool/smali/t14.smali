.class public final Lt14;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final p:Lxq3;

.field public static final q:Lvt1;

.field public static final r:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public static final s:Lt14;

.field public static final t:Ljava/util/List;

.field public static final u:I

.field public static final v:I

.field public static final w:I


# instance fields
.field public a:Lcom/google/gson/internal/Excluder;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Z

.field public final f:I

.field public final g:I

.field public h:Z

.field public i:Lxq3;

.field public final j:Z

.field public final k:Ljava/util/ArrayDeque;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lxq3;->d:Lxq3;

    .line 2
    .line 3
    sput-object v0, Lt14;->p:Lxq3;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput v0, Lt14;->u:I

    .line 7
    .line 8
    sput v0, Lt14;->v:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    sput v1, Lt14;->w:I

    .line 12
    .line 13
    new-instance v1, Lvt1;

    .line 14
    .line 15
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 16
    .line 17
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 18
    .line 19
    invoke-direct {v1, v2, v0, v3}, Lvt1;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lt14;->q:Lvt1;

    .line 23
    .line 24
    new-instance v0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lvt1;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lt14;->r:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 30
    .line 31
    new-instance v2, Lt14;

    .line 32
    .line 33
    invoke-direct {v2}, Lt14;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lt14;->s:Lt14;

    .line 37
    .line 38
    invoke-virtual {v2, v1, v0}, Lt14;->a(Lvt1;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lt14;->t:Ljava/util/List;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Lcom/google/gson/internal/Excluder;->d:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    const/4 v0, 0x1

    .line 134
    iput v0, p0, Lt14;->l:I

    .line 135
    sget v1, Lt14;->u:I

    iput v1, p0, Lt14;->m:I

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lt14;->b:Ljava/util/HashMap;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lt14;->c:Ljava/util/ArrayList;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lt14;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lt14;->e:Z

    const/4 v1, 0x2

    .line 140
    iput v1, p0, Lt14;->f:I

    .line 141
    iput v1, p0, Lt14;->g:I

    .line 142
    iput-boolean v0, p0, Lt14;->h:Z

    .line 143
    sget-object v1, Lt14;->p:Lxq3;

    iput-object v1, p0, Lt14;->i:Lxq3;

    .line 144
    iput-boolean v0, p0, Lt14;->j:Z

    .line 145
    sget v0, Lt14;->v:I

    iput v0, p0, Lt14;->n:I

    .line 146
    sget v0, Lt14;->w:I

    iput v0, p0, Lt14;->o:I

    .line 147
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lt14;->k:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/gson/internal/Excluder;->d:Lcom/google/gson/internal/Excluder;

    .line 5
    .line 6
    iput-object v0, p0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lt14;->l:I

    .line 10
    .line 11
    sget v1, Lt14;->u:I

    .line 12
    .line 13
    iput v1, p0, Lt14;->m:I

    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lt14;->b:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lt14;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lt14;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    iput-boolean v4, p0, Lt14;->e:Z

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    iput v4, p0, Lt14;->f:I

    .line 41
    .line 42
    iput v4, p0, Lt14;->g:I

    .line 43
    .line 44
    iput-boolean v0, p0, Lt14;->h:Z

    .line 45
    .line 46
    sget-object v4, Lt14;->p:Lxq3;

    .line 47
    .line 48
    iput-object v4, p0, Lt14;->i:Lxq3;

    .line 49
    .line 50
    iput-boolean v0, p0, Lt14;->j:Z

    .line 51
    .line 52
    sget v0, Lt14;->v:I

    .line 53
    .line 54
    iput v0, p0, Lt14;->n:I

    .line 55
    .line 56
    sget v0, Lt14;->w:I

    .line 57
    .line 58
    iput v0, p0, Lt14;->o:I

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lt14;->k:Ljava/util/ArrayDeque;

    .line 66
    .line 67
    iget-object v4, p1, Lcom/google/gson/a;->f:Lcom/google/gson/internal/Excluder;

    .line 68
    .line 69
    iput-object v4, p0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 70
    .line 71
    iget v4, p1, Lcom/google/gson/a;->g:I

    .line 72
    .line 73
    iput v4, p0, Lt14;->m:I

    .line 74
    .line 75
    iget-object v4, p1, Lcom/google/gson/a;->h:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v1, p1, Lcom/google/gson/a;->i:Z

    .line 81
    .line 82
    iput-boolean v1, p0, Lt14;->e:Z

    .line 83
    .line 84
    iget-boolean v1, p1, Lcom/google/gson/a;->j:Z

    .line 85
    .line 86
    iput-boolean v1, p0, Lt14;->h:Z

    .line 87
    .line 88
    iget-object v1, p1, Lcom/google/gson/a;->k:Lxq3;

    .line 89
    .line 90
    iput-object v1, p0, Lt14;->i:Lxq3;

    .line 91
    .line 92
    iget v1, p1, Lcom/google/gson/a;->o:I

    .line 93
    .line 94
    iput v1, p0, Lt14;->l:I

    .line 95
    .line 96
    iget v1, p1, Lcom/google/gson/a;->m:I

    .line 97
    .line 98
    iput v1, p0, Lt14;->f:I

    .line 99
    .line 100
    iget v1, p1, Lcom/google/gson/a;->n:I

    .line 101
    .line 102
    iput v1, p0, Lt14;->g:I

    .line 103
    .line 104
    iget-object v1, p1, Lcom/google/gson/a;->p:Ljava/util/List;

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    iget-object v1, p1, Lcom/google/gson/a;->q:Ljava/util/List;

    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    .line 113
    .line 114
    iget-boolean v1, p1, Lcom/google/gson/a;->l:Z

    .line 115
    .line 116
    iput-boolean v1, p0, Lt14;->j:Z

    .line 117
    .line 118
    iget v1, p1, Lcom/google/gson/a;->r:I

    .line 119
    .line 120
    iput v1, p0, Lt14;->n:I

    .line 121
    .line 122
    iget v1, p1, Lcom/google/gson/a;->s:I

    .line 123
    .line 124
    iput v1, p0, Lt14;->o:I

    .line 125
    .line 126
    iget-object p0, p1, Lcom/google/gson/a;->t:Ljava/util/List;

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public static b(Ljava/util/AbstractCollection;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    instance-of v0, p0, Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p0, Ljava/util/List;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method


# virtual methods
.method public final a(Lvt1;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/gson/internal/bind/b;->B:Lxb8;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lt14;->n:I

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->a(I)Lxb8;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lt14;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v1, p0, Lt14;->d:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    sget-boolean v1, Lcom/google/gson/internal/sql/a;->a:Z

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    const/4 v3, 0x0

    .line 67
    iget v4, p0, Lt14;->f:I

    .line 68
    .line 69
    iget v5, p0, Lt14;->g:I

    .line 70
    .line 71
    if-ne v4, v2, :cond_2

    .line 72
    .line 73
    if-eq v5, v2, :cond_4

    .line 74
    .line 75
    :cond_2
    sget-object v6, Lcom/google/gson/internal/bind/a;->b:Lde2;

    .line 76
    .line 77
    invoke-virtual {v6, v4, v5}, Lcom/google/gson/internal/bind/a;->a(II)Lxb8;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    sget-object v7, Lcom/google/gson/internal/sql/a;->c:Ljk7;

    .line 84
    .line 85
    invoke-virtual {v7, v4, v5}, Lcom/google/gson/internal/bind/a;->a(II)Lxb8;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    sget-object v8, Lcom/google/gson/internal/sql/a;->b:Lik7;

    .line 90
    .line 91
    invoke-virtual {v8, v4, v5}, Lcom/google/gson/internal/bind/a;->a(II)Lxb8;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move-object v4, v3

    .line 97
    move-object v7, v4

    .line 98
    :goto_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_4
    sget-object v1, Lcom/google/gson/internal/bind/b;->r:Lxb8;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    sget-object v1, Lcom/google/gson/internal/bind/b;->g:Lxb8;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    sget-object v1, Lcom/google/gson/internal/bind/b;->d:Lxb8;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    sget-object v1, Lcom/google/gson/internal/bind/b;->e:Lxb8;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    sget-object v1, Lcom/google/gson/internal/bind/b;->f:Lxb8;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    sget-object v1, Lcom/google/gson/internal/bind/b;->k:Lcom/google/gson/b;

    .line 135
    .line 136
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 137
    .line 138
    const-class v5, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-static {v4, v5, v1}, Lcom/google/gson/internal/bind/b;->g(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)Lxb8;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    const-class v4, Ljava/lang/Double;

    .line 148
    .line 149
    sget-object v5, Lcom/google/gson/internal/bind/b;->m:Lcom/google/gson/b;

    .line 150
    .line 151
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 152
    .line 153
    invoke-static {v6, v4, v5}, Lcom/google/gson/internal/bind/b;->g(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)Lxb8;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    const-class v4, Ljava/lang/Float;

    .line 161
    .line 162
    sget-object v5, Lcom/google/gson/internal/bind/b;->l:Lcom/google/gson/b;

    .line 163
    .line 164
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 165
    .line 166
    invoke-static {v6, v4, v5}, Lcom/google/gson/internal/bind/b;->g(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)Lxb8;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    iget v4, p0, Lt14;->o:I

    .line 174
    .line 175
    if-ne v4, v2, :cond_5

    .line 176
    .line 177
    sget-object v2, Lcom/google/gson/internal/bind/NumberTypeAdapter;->b:Lxb8;

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_5
    invoke-static {v4}, Lcom/google/gson/internal/bind/NumberTypeAdapter;->a(I)Lxb8;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    sget-object v2, Lcom/google/gson/internal/bind/b;->h:Lxb8;

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    sget-object v2, Lcom/google/gson/internal/bind/b;->i:Lxb8;

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 198
    .line 199
    invoke-static {v1}, Lcom/google/gson/internal/bind/b;->c(Lcom/google/gson/b;)Lcom/google/gson/b;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v2, v4}, Lcom/google/gson/internal/bind/b;->f(Ljava/lang/Class;Lcom/google/gson/b;)Lxb8;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 211
    .line 212
    invoke-static {v1}, Lcom/google/gson/internal/bind/b;->d(Lcom/google/gson/b;)Lcom/google/gson/b;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {v2, v1}, Lcom/google/gson/internal/bind/b;->f(Ljava/lang/Class;Lcom/google/gson/b;)Lxb8;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    sget-object v1, Lcom/google/gson/internal/bind/b;->j:Lxb8;

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    sget-object v1, Lcom/google/gson/internal/bind/b;->n:Lxb8;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    sget-object v1, Lcom/google/gson/internal/bind/b;->s:Lxb8;

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    sget-object v1, Lcom/google/gson/internal/bind/b;->t:Lxb8;

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    sget-object v1, Lcom/google/gson/internal/bind/b;->o:Lxb8;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    sget-object v1, Lcom/google/gson/internal/bind/b;->p:Lxb8;

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    sget-object v1, Lcom/google/gson/internal/bind/b;->q:Lxb8;

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    sget-object v1, Lcom/google/gson/internal/bind/b;->u:Lxb8;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    sget-object v1, Lcom/google/gson/internal/bind/b;->v:Lxb8;

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    sget-object v1, Lcom/google/gson/internal/bind/b;->x:Lxb8;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    sget-object v1, Lcom/google/gson/internal/bind/b;->y:Lxb8;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    sget-object v1, Lcom/google/gson/internal/bind/b;->A:Lxb8;

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    sget-object v1, Lcom/google/gson/internal/bind/b;->w:Lxb8;

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    sget-object v1, Lcom/google/gson/internal/bind/b;->b:Lxb8;

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    sget-object v1, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->c:Lxb8;

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    sget-object v1, Lcom/google/gson/internal/bind/b;->z:Lxb8;

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    :try_start_0
    const-class v1, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;

    .line 304
    .line 305
    sget-object v2, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->a:Lcom/google/gson/b;

    .line 306
    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    check-cast v1, Lac8;

    .line 316
    .line 317
    check-cast v1, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;

    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    sget-object v3, Lcom/google/gson/internal/bind/JavaTimeTypeAdapters;->j:Lxb8;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .line 324
    :catch_0
    if-eqz v3, :cond_6

    .line 325
    .line 326
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    :cond_6
    sget-object v1, Lcom/google/gson/internal/sql/a;->d:Ljava/util/List;

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    .line 333
    .line 334
    sget-object v1, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->c:Lxb8;

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    sget-object v1, Lcom/google/gson/internal/bind/b;->a:Lxb8;

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    new-instance v1, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    .line 345
    .line 346
    invoke-direct {v1, p1}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lvt1;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    new-instance v1, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    .line 353
    .line 354
    invoke-direct {v1, p1}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lvt1;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    sget-object v1, Lcom/google/gson/internal/bind/b;->C:Lxb8;

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    .line 369
    .line 370
    iget-object v5, p0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 371
    .line 372
    iget-object v1, p0, Lt14;->k:Ljava/util/ArrayDeque;

    .line 373
    .line 374
    invoke-static {v1}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    iget v4, p0, Lt14;->m:I

    .line 379
    .line 380
    move-object v3, p1

    .line 381
    move-object v6, p2

    .line 382
    invoke-direct/range {v2 .. v7}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lvt1;ILcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/List;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 389
    .line 390
    .line 391
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Ldm4;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    instance-of v1, p1, Lpj4;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    instance-of v1, p1, Lhd4;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    instance-of v1, p1, Lcom/google/gson/b;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, " does not implement any supported type adapter class or interface"

    .line 33
    .line 34
    const-string p2, "Class "

    .line 35
    .line 36
    invoke-static {p0, p1, p2}, Lz5;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 41
    .line 42
    if-eq p2, v1, :cond_6

    .line 43
    .line 44
    instance-of v1, p1, Lhd4;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lt14;->b:Ljava/util/HashMap;

    .line 49
    .line 50
    move-object v2, p1

    .line 51
    check-cast v2, Lhd4;

    .line 52
    .line 53
    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p0, p0, Lt14;->c:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    instance-of v0, p1, Lpj4;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    :cond_3
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0, p1}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lxb8;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_4
    instance-of v0, p1, Lcom/google/gson/b;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p1, Lcom/google/gson/b;

    .line 84
    .line 85
    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/b;->e(Lcom/google/gson/b;Lcom/google/gson/reflect/TypeToken;)Lxb8;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_5
    return-void

    .line 93
    :cond_6
    const-string p0, "Cannot override built-in adapter for "

    .line 94
    .line 95
    invoke-static {p2, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
