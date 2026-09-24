.class public final Llh0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient a:Ly8;

.field public final b:I

.field public final c:Ljava/util/ArrayList;

.field public final d:I

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/TreeMap;

.field public final k:Ljava/util/Stack;

.field public final n:Ljava/util/TreeMap;

.field public p:I

.field public q:Z

.field public transient r:I


# direct methods
.method public constructor <init>(Llh0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly8;

    iget-object v1, p1, Llh0;->a:Ly8;

    .line 210
    iget-object v1, v1, Ly8;->a:Ljava/lang/Object;

    check-cast v1, Lun8;

    .line 211
    invoke-direct {v0, v1}, Ly8;-><init>(Lun8;)V

    iput-object v0, p0, Llh0;->a:Ly8;

    iget v0, p1, Llh0;->b:I

    iput v0, p0, Llh0;->b:I

    iget v0, p1, Llh0;->d:I

    iput v0, p0, Llh0;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llh0;->e:Ljava/util/ArrayList;

    iget-object v1, p1, Llh0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Llh0;->f:Ljava/util/TreeMap;

    iget-object v0, p1, Llh0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Llh0;->f:Ljava/util/TreeMap;

    iget-object v3, p1, Llh0;->f:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Llh0;->k:Ljava/util/Stack;

    iget-object v1, p1, Llh0;->k:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llh0;->c:Ljava/util/ArrayList;

    iget-object v0, p1, Llh0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llh0;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnh0;

    invoke-virtual {v2}, Lnh0;->a()Lnh0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Llh0;->n:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Llh0;->n:Ljava/util/TreeMap;

    iget v0, p1, Llh0;->p:I

    iput v0, p0, Llh0;->p:I

    iget v0, p1, Llh0;->r:I

    iput v0, p0, Llh0;->r:I

    iget-boolean p1, p1, Llh0;->q:Z

    iput-boolean p1, p0, Llh0;->q:Z

    return-void
.end method

.method public constructor <init>(Llh0;Lf1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly8;

    .line 5
    .line 6
    new-instance v1, Lun8;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Lun8;-><init>(Lf1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ly8;-><init>(Lun8;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Llh0;->a:Ly8;

    .line 15
    .line 16
    iget p2, p1, Llh0;->b:I

    .line 17
    .line 18
    iput p2, p0, Llh0;->b:I

    .line 19
    .line 20
    iget p2, p1, Llh0;->d:I

    .line 21
    .line 22
    iput p2, p0, Llh0;->d:I

    .line 23
    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Llh0;->e:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v0, p1, Llh0;->e:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    new-instance p2, Ljava/util/TreeMap;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Llh0;->f:Ljava/util/TreeMap;

    .line 42
    .line 43
    iget-object p2, p1, Llh0;->f:Ljava/util/TreeMap;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Integer;

    .line 64
    .line 65
    iget-object v1, p0, Llh0;->f:Ljava/util/TreeMap;

    .line 66
    .line 67
    iget-object v2, p1, Llh0;->f:Ljava/util/TreeMap;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/util/LinkedList;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/util/LinkedList;

    .line 80
    .line 81
    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance p2, Ljava/util/Stack;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Llh0;->k:Ljava/util/Stack;

    .line 91
    .line 92
    iget-object v0, p1, Llh0;->k:Ljava/util/Stack;

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 95
    .line 96
    .line 97
    new-instance p2, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p2, p0, Llh0;->c:Ljava/util/ArrayList;

    .line 103
    .line 104
    iget-object p2, p1, Llh0;->c:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    .line 116
    iget-object v0, p0, Llh0;->c:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Lnh0;

    .line 123
    .line 124
    invoke-virtual {v1}, Lnh0;->a()Lnh0;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    new-instance p2, Ljava/util/TreeMap;

    .line 133
    .line 134
    iget-object v0, p1, Llh0;->n:Ljava/util/TreeMap;

    .line 135
    .line 136
    invoke-direct {p2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    iput-object p2, p0, Llh0;->n:Ljava/util/TreeMap;

    .line 140
    .line 141
    iget p2, p1, Llh0;->p:I

    .line 142
    .line 143
    iput p2, p0, Llh0;->p:I

    .line 144
    .line 145
    iget v0, p1, Llh0;->r:I

    .line 146
    .line 147
    iput v0, p0, Llh0;->r:I

    .line 148
    .line 149
    iget-boolean p1, p1, Llh0;->q:Z

    .line 150
    .line 151
    iput-boolean p1, p0, Llh0;->q:Z

    .line 152
    .line 153
    iget-object p1, p0, Llh0;->e:Ljava/util/ArrayList;

    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    if-eqz p1, :cond_6

    .line 157
    .line 158
    iget-object p1, p0, Llh0;->f:Ljava/util/TreeMap;

    .line 159
    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    iget-object p1, p0, Llh0;->k:Ljava/util/Stack;

    .line 163
    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    iget-object p1, p0, Llh0;->c:Ljava/util/ArrayList;

    .line 167
    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    iget p0, p0, Llh0;->b:I

    .line 171
    .line 172
    int-to-long p1, p2

    .line 173
    invoke-static {p0, p1, p2}, Ljd4;->u(IJ)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_2

    .line 178
    .line 179
    return-void

    .line 180
    :cond_2
    const-string p0, "index in BDS state out of bounds"

    .line 181
    .line 182
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :cond_3
    const-string p0, "treeHashInstances == null"

    .line 187
    .line 188
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_4
    const-string p0, "stack == null"

    .line 193
    .line 194
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v0

    .line 198
    :cond_5
    const-string p0, "retain == null"

    .line 199
    .line 200
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :cond_6
    const-string p0, "authenticationPath == null"

    .line 205
    .line 206
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0
.end method

.method public constructor <init>(Llh0;[B[BLuq5;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly8;

    iget-object v1, p1, Llh0;->a:Ly8;

    .line 213
    iget-object v1, v1, Ly8;->a:Ljava/lang/Object;

    check-cast v1, Lun8;

    .line 214
    invoke-direct {v0, v1}, Ly8;-><init>(Lun8;)V

    iput-object v0, p0, Llh0;->a:Ly8;

    iget v0, p1, Llh0;->b:I

    iput v0, p0, Llh0;->b:I

    iget v0, p1, Llh0;->d:I

    iput v0, p0, Llh0;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llh0;->e:Ljava/util/ArrayList;

    iget-object v1, p1, Llh0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Llh0;->f:Ljava/util/TreeMap;

    iget-object v0, p1, Llh0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Llh0;->f:Ljava/util/TreeMap;

    iget-object v3, p1, Llh0;->f:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Llh0;->k:Ljava/util/Stack;

    iget-object v1, p1, Llh0;->k:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llh0;->c:Ljava/util/ArrayList;

    iget-object v0, p1, Llh0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llh0;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnh0;

    invoke-virtual {v2}, Lnh0;->a()Lnh0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Llh0;->n:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Llh0;->n:Ljava/util/TreeMap;

    iget v0, p1, Llh0;->p:I

    iput v0, p0, Llh0;->p:I

    iget p1, p1, Llh0;->r:I

    iput p1, p0, Llh0;->r:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Llh0;->q:Z

    invoke-virtual {p0, p2, p3, p4}, Llh0;->b([B[BLuq5;)V

    return-void
.end method

.method public constructor <init>(Lrx8;[B[BLuq5;)V
    .locals 4

    .line 215
    new-instance v0, Ly8;

    .line 216
    iget-object v1, p1, Lrx8;->g:Lun8;

    .line 217
    invoke-direct {v0, v1}, Ly8;-><init>(Lun8;)V

    .line 218
    iget v1, p1, Lrx8;->b:I

    .line 219
    iget p1, p1, Lrx8;->c:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    .line 220
    invoke-direct {p0, v0, v1, p1, v3}, Llh0;-><init>(Ly8;III)V

    invoke-virtual {p0, p2, p3, p4}, Llh0;->a([B[BLuq5;)V

    return-void
.end method

.method public constructor <init>(Ly8;III)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llh0;->a:Ly8;

    iput p2, p0, Llh0;->b:I

    iput p4, p0, Llh0;->r:I

    iput p3, p0, Llh0;->d:I

    if-gt p3, p2, :cond_1

    const/4 p1, 0x2

    if-lt p3, p1, :cond_1

    sub-int/2addr p2, p3

    rem-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llh0;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Llh0;->f:Ljava/util/TreeMap;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Llh0;->k:Ljava/util/Stack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llh0;->c:Ljava/util/ArrayList;

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_0

    iget-object p4, p0, Llh0;->c:Ljava/util/ArrayList;

    new-instance v0, Lnh0;

    invoke-direct {v0, p3}, Lnh0;-><init>(I)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Llh0;->n:Ljava/util/TreeMap;

    iput p1, p0, Llh0;->p:I

    iput-boolean p1, p0, Llh0;->q:Z

    return-void

    :cond_1
    const-string p0, "illegal value for BDS parameter k"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a([B[BLuq5;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-wide v2, v1, Lgx8;->b:J

    .line 6
    .line 7
    iget v4, v1, Lgx8;->a:I

    .line 8
    .line 9
    new-instance v5, Lxp4;

    .line 10
    .line 11
    invoke-direct {v5}, Lxp4;-><init>()V

    .line 12
    .line 13
    .line 14
    iput v4, v5, Lgx8;->c:I

    .line 15
    .line 16
    iput-wide v2, v5, Lgx8;->b:J

    .line 17
    .line 18
    new-instance v6, Lyp4;

    .line 19
    .line 20
    invoke-direct {v6, v5}, Lyp4;-><init>(Lxp4;)V

    .line 21
    .line 22
    .line 23
    new-instance v5, Lz24;

    .line 24
    .line 25
    invoke-direct {v5}, Lz24;-><init>()V

    .line 26
    .line 27
    .line 28
    iput v4, v5, Lgx8;->c:I

    .line 29
    .line 30
    iput-wide v2, v5, Lgx8;->b:J

    .line 31
    .line 32
    new-instance v2, La34;

    .line 33
    .line 34
    invoke-direct {v2, v5}, La34;-><init>(Lz24;)V

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_0
    const/4 v4, 0x1

    .line 39
    iget v5, v0, Llh0;->b:I

    .line 40
    .line 41
    shl-int v7, v4, v5

    .line 42
    .line 43
    iget-object v8, v0, Llh0;->k:Ljava/util/Stack;

    .line 44
    .line 45
    if-ge v3, v7, :cond_7

    .line 46
    .line 47
    new-instance v7, Ltq5;

    .line 48
    .line 49
    invoke-direct {v7}, Ltq5;-><init>()V

    .line 50
    .line 51
    .line 52
    iget v9, v1, Lgx8;->a:I

    .line 53
    .line 54
    iput v9, v7, Lgx8;->c:I

    .line 55
    .line 56
    iget-wide v9, v1, Lgx8;->b:J

    .line 57
    .line 58
    iput-wide v9, v7, Lgx8;->b:J

    .line 59
    .line 60
    iput v3, v7, Ltq5;->e:I

    .line 61
    .line 62
    iget v9, v1, Luq5;->f:I

    .line 63
    .line 64
    iput v9, v7, Ltq5;->f:I

    .line 65
    .line 66
    iget v9, v1, Luq5;->g:I

    .line 67
    .line 68
    iput v9, v7, Ltq5;->g:I

    .line 69
    .line 70
    iget v1, v1, Lgx8;->d:I

    .line 71
    .line 72
    iput v1, v7, Lgx8;->d:I

    .line 73
    .line 74
    new-instance v1, Luq5;

    .line 75
    .line 76
    invoke-direct {v1, v7}, Luq5;-><init>(Ltq5;)V

    .line 77
    .line 78
    .line 79
    iget-object v7, v0, Llh0;->a:Ly8;

    .line 80
    .line 81
    move-object/from16 v9, p2

    .line 82
    .line 83
    invoke-virtual {v7, v9, v1}, Ly8;->f([BLuq5;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    move-object/from16 v11, p1

    .line 88
    .line 89
    invoke-virtual {v7, v10, v11}, Ly8;->g([B[B)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v1}, Ly8;->e(Luq5;)Lty3;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    new-instance v12, Lxp4;

    .line 97
    .line 98
    invoke-direct {v12}, Lxp4;-><init>()V

    .line 99
    .line 100
    .line 101
    iget v13, v6, Lgx8;->a:I

    .line 102
    .line 103
    iput v13, v12, Lgx8;->c:I

    .line 104
    .line 105
    iget-wide v13, v6, Lgx8;->b:J

    .line 106
    .line 107
    iput-wide v13, v12, Lgx8;->b:J

    .line 108
    .line 109
    iput v3, v12, Lxp4;->e:I

    .line 110
    .line 111
    iget v13, v6, Lyp4;->f:I

    .line 112
    .line 113
    iput v13, v12, Lxp4;->f:I

    .line 114
    .line 115
    iget v13, v6, Lyp4;->g:I

    .line 116
    .line 117
    iput v13, v12, Lxp4;->g:I

    .line 118
    .line 119
    iget v6, v6, Lgx8;->d:I

    .line 120
    .line 121
    iput v6, v12, Lgx8;->d:I

    .line 122
    .line 123
    new-instance v6, Lyp4;

    .line 124
    .line 125
    invoke-direct {v6, v12}, Lyp4;-><init>(Lxp4;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v7, v10, v6}, Lxx3;->q(Ly8;Lty3;Lyp4;)Lqx8;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    new-instance v12, Lz24;

    .line 133
    .line 134
    invoke-direct {v12}, Lz24;-><init>()V

    .line 135
    .line 136
    .line 137
    iget v13, v2, Lgx8;->a:I

    .line 138
    .line 139
    iput v13, v12, Lgx8;->c:I

    .line 140
    .line 141
    iget-wide v13, v2, Lgx8;->b:J

    .line 142
    .line 143
    iput-wide v13, v12, Lgx8;->b:J

    .line 144
    .line 145
    iput v3, v12, Lz24;->f:I

    .line 146
    .line 147
    iget v2, v2, Lgx8;->d:I

    .line 148
    .line 149
    iput v2, v12, Lgx8;->d:I

    .line 150
    .line 151
    new-instance v2, La34;

    .line 152
    .line 153
    invoke-direct {v2, v12}, La34;-><init>(Lz24;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    if-nez v12, :cond_6

    .line 161
    .line 162
    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    check-cast v12, Lqx8;

    .line 167
    .line 168
    iget v12, v12, Lqx8;->a:I

    .line 169
    .line 170
    iget v13, v10, Lqx8;->a:I

    .line 171
    .line 172
    if-ne v12, v13, :cond_6

    .line 173
    .line 174
    shl-int v12, v4, v13

    .line 175
    .line 176
    div-int v12, v3, v12

    .line 177
    .line 178
    if-ne v12, v4, :cond_0

    .line 179
    .line 180
    iget-object v14, v0, Llh0;->e:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_0
    iget v14, v0, Llh0;->d:I

    .line 186
    .line 187
    const/4 v15, 0x3

    .line 188
    if-ne v12, v15, :cond_3

    .line 189
    .line 190
    sub-int v15, v5, v14

    .line 191
    .line 192
    if-ge v13, v15, :cond_2

    .line 193
    .line 194
    iget-object v15, v0, Llh0;->c:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    check-cast v15, Lnh0;

    .line 201
    .line 202
    iput-object v10, v15, Lnh0;->a:Lqx8;

    .line 203
    .line 204
    iput v13, v15, Lnh0;->c:I

    .line 205
    .line 206
    move-object/from16 v16, v1

    .line 207
    .line 208
    iget v1, v15, Lnh0;->b:I

    .line 209
    .line 210
    if-ne v13, v1, :cond_1

    .line 211
    .line 212
    iput-boolean v4, v15, Lnh0;->f:Z

    .line 213
    .line 214
    :cond_1
    :goto_2
    const/4 v1, 0x3

    .line 215
    goto :goto_3

    .line 216
    :cond_2
    move-object/from16 v16, v1

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_3
    move-object/from16 v16, v1

    .line 220
    .line 221
    move v1, v15

    .line 222
    :goto_3
    if-lt v12, v1, :cond_5

    .line 223
    .line 224
    and-int/lit8 v1, v12, 0x1

    .line 225
    .line 226
    if-ne v1, v4, :cond_5

    .line 227
    .line 228
    sub-int v1, v5, v14

    .line 229
    .line 230
    if-lt v13, v1, :cond_5

    .line 231
    .line 232
    add-int/lit8 v1, v5, -0x2

    .line 233
    .line 234
    if-gt v13, v1, :cond_5

    .line 235
    .line 236
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    iget-object v12, v0, Llh0;->f:Ljava/util/TreeMap;

    .line 241
    .line 242
    invoke-virtual {v12, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-nez v1, :cond_4

    .line 247
    .line 248
    new-instance v1, Ljava/util/LinkedList;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    invoke-virtual {v12, v13, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v12, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Ljava/util/LinkedList;

    .line 273
    .line 274
    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :cond_5
    :goto_4
    new-instance v1, Lz24;

    .line 278
    .line 279
    invoke-direct {v1}, Lz24;-><init>()V

    .line 280
    .line 281
    .line 282
    iget v12, v2, Lgx8;->a:I

    .line 283
    .line 284
    iput v12, v1, Lgx8;->c:I

    .line 285
    .line 286
    iget-wide v12, v2, Lgx8;->b:J

    .line 287
    .line 288
    iput-wide v12, v1, Lgx8;->b:J

    .line 289
    .line 290
    iget v12, v2, La34;->e:I

    .line 291
    .line 292
    iput v12, v1, Lz24;->e:I

    .line 293
    .line 294
    iget v12, v2, La34;->f:I

    .line 295
    .line 296
    sub-int/2addr v12, v4

    .line 297
    div-int/lit8 v12, v12, 0x2

    .line 298
    .line 299
    iput v12, v1, Lz24;->f:I

    .line 300
    .line 301
    iget v2, v2, Lgx8;->d:I

    .line 302
    .line 303
    iput v2, v1, Lgx8;->d:I

    .line 304
    .line 305
    new-instance v2, La34;

    .line 306
    .line 307
    invoke-direct {v2, v1}, La34;-><init>(Lz24;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Lqx8;

    .line 315
    .line 316
    invoke-static {v7, v1, v10, v2}, Lxx3;->y(Ly8;Lqx8;Lqx8;Lgx8;)Lqx8;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    new-instance v10, Lqx8;

    .line 321
    .line 322
    iget v12, v1, Lqx8;->a:I

    .line 323
    .line 324
    add-int/2addr v12, v4

    .line 325
    iget-object v1, v1, Lqx8;->b:[B

    .line 326
    .line 327
    invoke-static {v1}, Ljd4;->g([B)[B

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-direct {v10, v1, v12}, Lqx8;-><init>([BI)V

    .line 332
    .line 333
    .line 334
    new-instance v1, Lz24;

    .line 335
    .line 336
    invoke-direct {v1}, Lz24;-><init>()V

    .line 337
    .line 338
    .line 339
    iget v12, v2, Lgx8;->a:I

    .line 340
    .line 341
    iput v12, v1, Lgx8;->c:I

    .line 342
    .line 343
    iget-wide v12, v2, Lgx8;->b:J

    .line 344
    .line 345
    iput-wide v12, v1, Lgx8;->b:J

    .line 346
    .line 347
    iget v12, v2, La34;->e:I

    .line 348
    .line 349
    add-int/2addr v12, v4

    .line 350
    iput v12, v1, Lz24;->e:I

    .line 351
    .line 352
    iget v12, v2, La34;->f:I

    .line 353
    .line 354
    iput v12, v1, Lz24;->f:I

    .line 355
    .line 356
    iget v2, v2, Lgx8;->d:I

    .line 357
    .line 358
    iput v2, v1, Lgx8;->d:I

    .line 359
    .line 360
    new-instance v2, La34;

    .line 361
    .line 362
    invoke-direct {v2, v1}, La34;-><init>(Lz24;)V

    .line 363
    .line 364
    .line 365
    move-object/from16 v1, v16

    .line 366
    .line 367
    goto/16 :goto_1

    .line 368
    .line 369
    :cond_6
    move-object/from16 v16, v1

    .line 370
    .line 371
    invoke-virtual {v8, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    add-int/lit8 v3, v3, 0x1

    .line 375
    .line 376
    move-object/from16 v1, v16

    .line 377
    .line 378
    goto/16 :goto_0

    .line 379
    .line 380
    :cond_7
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    check-cast v0, Lqx8;

    .line 385
    .line 386
    return-void
.end method

.method public final b([B[BLuq5;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-wide v4, v3, Lgx8;->b:J

    .line 10
    .line 11
    iget v6, v3, Lgx8;->a:I

    .line 12
    .line 13
    iget-boolean v7, v0, Llh0;->q:Z

    .line 14
    .line 15
    if-nez v7, :cond_15

    .line 16
    .line 17
    iget v7, v0, Llh0;->p:I

    .line 18
    .line 19
    iget v8, v0, Llh0;->r:I

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    sub-int/2addr v8, v9

    .line 23
    if-gt v7, v8, :cond_14

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    move v10, v8

    .line 27
    :goto_0
    iget v11, v0, Llh0;->b:I

    .line 28
    .line 29
    if-ge v10, v11, :cond_1

    .line 30
    .line 31
    shr-int v12, v7, v10

    .line 32
    .line 33
    and-int/2addr v12, v9

    .line 34
    if-nez v12, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v10, v8

    .line 41
    :goto_1
    iget v7, v0, Llh0;->p:I

    .line 42
    .line 43
    add-int/lit8 v12, v10, 0x1

    .line 44
    .line 45
    shr-int/2addr v7, v12

    .line 46
    and-int/2addr v7, v9

    .line 47
    iget-object v12, v0, Llh0;->n:Ljava/util/TreeMap;

    .line 48
    .line 49
    iget-object v13, v0, Llh0;->e:Ljava/util/ArrayList;

    .line 50
    .line 51
    if-nez v7, :cond_2

    .line 52
    .line 53
    add-int/lit8 v7, v11, -0x1

    .line 54
    .line 55
    if-ge v10, v7, :cond_2

    .line 56
    .line 57
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v14

    .line 65
    check-cast v14, Lqx8;

    .line 66
    .line 67
    invoke-virtual {v12, v7, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v14, v0, Llh0;->c:Ljava/util/ArrayList;

    .line 71
    .line 72
    iget v15, v0, Llh0;->d:I

    .line 73
    .line 74
    move/from16 v16, v9

    .line 75
    .line 76
    iget-object v9, v0, Llh0;->a:Ly8;

    .line 77
    .line 78
    if-nez v10, :cond_4

    .line 79
    .line 80
    new-instance v10, Ltq5;

    .line 81
    .line 82
    invoke-direct {v10}, Ltq5;-><init>()V

    .line 83
    .line 84
    .line 85
    iput v6, v10, Lgx8;->c:I

    .line 86
    .line 87
    iput-wide v4, v10, Lgx8;->b:J

    .line 88
    .line 89
    iget v12, v0, Llh0;->p:I

    .line 90
    .line 91
    iput v12, v10, Ltq5;->e:I

    .line 92
    .line 93
    iget v12, v3, Luq5;->f:I

    .line 94
    .line 95
    iput v12, v10, Ltq5;->f:I

    .line 96
    .line 97
    iget v12, v3, Luq5;->g:I

    .line 98
    .line 99
    iput v12, v10, Ltq5;->g:I

    .line 100
    .line 101
    iget v3, v3, Lgx8;->d:I

    .line 102
    .line 103
    iput v3, v10, Lgx8;->d:I

    .line 104
    .line 105
    new-instance v3, Luq5;

    .line 106
    .line 107
    invoke-direct {v3, v10}, Luq5;-><init>(Ltq5;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v2, v3}, Ly8;->f([BLuq5;)[B

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v9, v10, v1}, Ly8;->g([B[B)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v3}, Ly8;->e(Luq5;)Lty3;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    new-instance v12, Lxp4;

    .line 122
    .line 123
    invoke-direct {v12}, Lxp4;-><init>()V

    .line 124
    .line 125
    .line 126
    iput v6, v12, Lgx8;->c:I

    .line 127
    .line 128
    iput-wide v4, v12, Lgx8;->b:J

    .line 129
    .line 130
    iget v4, v0, Llh0;->p:I

    .line 131
    .line 132
    iput v4, v12, Lxp4;->e:I

    .line 133
    .line 134
    iput v8, v12, Lxp4;->f:I

    .line 135
    .line 136
    iput v8, v12, Lxp4;->g:I

    .line 137
    .line 138
    iput v8, v12, Lgx8;->d:I

    .line 139
    .line 140
    new-instance v4, Lyp4;

    .line 141
    .line 142
    invoke-direct {v4, v12}, Lyp4;-><init>(Lxp4;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v9, v10, v4}, Lxx3;->q(Ly8;Lty3;Lyp4;)Lqx8;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v13, v8, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    :cond_3
    move/from16 v7, v16

    .line 153
    .line 154
    goto/16 :goto_d

    .line 155
    .line 156
    :cond_4
    new-instance v7, Lz24;

    .line 157
    .line 158
    invoke-direct {v7}, Lz24;-><init>()V

    .line 159
    .line 160
    .line 161
    iput v6, v7, Lgx8;->c:I

    .line 162
    .line 163
    iput-wide v4, v7, Lgx8;->b:J

    .line 164
    .line 165
    add-int/lit8 v4, v10, -0x1

    .line 166
    .line 167
    iput v4, v7, Lz24;->e:I

    .line 168
    .line 169
    iget v5, v0, Llh0;->p:I

    .line 170
    .line 171
    shr-int/2addr v5, v10

    .line 172
    iput v5, v7, Lz24;->f:I

    .line 173
    .line 174
    iput v8, v7, Lgx8;->d:I

    .line 175
    .line 176
    new-instance v5, La34;

    .line 177
    .line 178
    invoke-direct {v5, v7}, La34;-><init>(Lz24;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v2, v3}, Ly8;->f([BLuq5;)[B

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v9, v6, v1}, Ly8;->g([B[B)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    check-cast v6, Lqx8;

    .line 193
    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v12, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Lqx8;

    .line 203
    .line 204
    invoke-static {v9, v6, v7, v5}, Lxx3;->y(Ly8;Lqx8;Lqx8;Lgx8;)Lqx8;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    new-instance v6, Lqx8;

    .line 209
    .line 210
    iget v7, v5, Lqx8;->a:I

    .line 211
    .line 212
    add-int/lit8 v7, v7, 0x1

    .line 213
    .line 214
    iget-object v5, v5, Lqx8;->b:[B

    .line 215
    .line 216
    invoke-static {v5}, Ljd4;->g([B)[B

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-direct {v6, v5, v7}, Lqx8;-><init>([BI)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v13, v10, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v12, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move v4, v8

    .line 234
    :goto_2
    if-ge v4, v10, :cond_6

    .line 235
    .line 236
    sub-int v5, v11, v15

    .line 237
    .line 238
    if-ge v4, v5, :cond_5

    .line 239
    .line 240
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    check-cast v5, Lnh0;

    .line 245
    .line 246
    iget-object v5, v5, Lnh0;->a:Lqx8;

    .line 247
    .line 248
    :goto_3
    invoke-virtual {v13, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_5
    iget-object v5, v0, Llh0;->f:Ljava/util/TreeMap;

    .line 253
    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Ljava/util/LinkedList;

    .line 263
    .line 264
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    check-cast v5, Lqx8;

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_6
    sub-int v4, v11, v15

    .line 275
    .line 276
    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    move v5, v8

    .line 281
    :goto_5
    if-ge v5, v4, :cond_3

    .line 282
    .line 283
    iget v6, v0, Llh0;->p:I

    .line 284
    .line 285
    add-int/lit8 v6, v6, 0x1

    .line 286
    .line 287
    shl-int v7, v16, v5

    .line 288
    .line 289
    mul-int/lit8 v7, v7, 0x3

    .line 290
    .line 291
    add-int/2addr v7, v6

    .line 292
    shl-int v6, v16, v11

    .line 293
    .line 294
    if-ge v7, v6, :cond_7

    .line 295
    .line 296
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    check-cast v6, Lnh0;

    .line 301
    .line 302
    const/4 v10, 0x0

    .line 303
    iput-object v10, v6, Lnh0;->a:Lqx8;

    .line 304
    .line 305
    iget v12, v6, Lnh0;->b:I

    .line 306
    .line 307
    iput v12, v6, Lnh0;->c:I

    .line 308
    .line 309
    iput v7, v6, Lnh0;->d:I

    .line 310
    .line 311
    move/from16 v7, v16

    .line 312
    .line 313
    iput-boolean v7, v6, Lnh0;->e:Z

    .line 314
    .line 315
    iput-boolean v8, v6, Lnh0;->f:Z

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_7
    move/from16 v7, v16

    .line 319
    .line 320
    const/4 v10, 0x0

    .line 321
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 322
    .line 323
    move/from16 v16, v7

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :goto_7
    sub-int v4, v11, v15

    .line 327
    .line 328
    shr-int/2addr v4, v7

    .line 329
    if-ge v8, v4, :cond_13

    .line 330
    .line 331
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    move-object v5, v10

    .line 336
    :cond_8
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    if-eqz v6, :cond_c

    .line 341
    .line 342
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    check-cast v6, Lnh0;

    .line 347
    .line 348
    iget-boolean v7, v6, Lnh0;->f:Z

    .line 349
    .line 350
    if-nez v7, :cond_8

    .line 351
    .line 352
    iget-boolean v7, v6, Lnh0;->e:Z

    .line 353
    .line 354
    if-nez v7, :cond_9

    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_9
    if-nez v5, :cond_a

    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_a
    invoke-virtual {v6}, Lnh0;->b()I

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    invoke-virtual {v5}, Lnh0;->b()I

    .line 365
    .line 366
    .line 367
    move-result v12

    .line 368
    if-ge v7, v12, :cond_b

    .line 369
    .line 370
    :goto_9
    move-object v5, v6

    .line 371
    goto :goto_8

    .line 372
    :cond_b
    invoke-virtual {v6}, Lnh0;->b()I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    invoke-virtual {v5}, Lnh0;->b()I

    .line 377
    .line 378
    .line 379
    move-result v12

    .line 380
    if-ne v7, v12, :cond_8

    .line 381
    .line 382
    iget v7, v6, Lnh0;->d:I

    .line 383
    .line 384
    iget v12, v5, Lnh0;->d:I

    .line 385
    .line 386
    if-ge v7, v12, :cond_8

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_c
    if-eqz v5, :cond_12

    .line 390
    .line 391
    iget v4, v5, Lnh0;->b:I

    .line 392
    .line 393
    iget-boolean v6, v5, Lnh0;->f:Z

    .line 394
    .line 395
    if-nez v6, :cond_11

    .line 396
    .line 397
    iget-boolean v6, v5, Lnh0;->e:Z

    .line 398
    .line 399
    if-eqz v6, :cond_11

    .line 400
    .line 401
    new-instance v6, Ltq5;

    .line 402
    .line 403
    invoke-direct {v6}, Ltq5;-><init>()V

    .line 404
    .line 405
    .line 406
    iget v7, v3, Lgx8;->a:I

    .line 407
    .line 408
    iput v7, v6, Lgx8;->c:I

    .line 409
    .line 410
    iget-wide v12, v3, Lgx8;->b:J

    .line 411
    .line 412
    iput-wide v12, v6, Lgx8;->b:J

    .line 413
    .line 414
    iget v7, v5, Lnh0;->d:I

    .line 415
    .line 416
    iput v7, v6, Ltq5;->e:I

    .line 417
    .line 418
    iget v12, v3, Luq5;->f:I

    .line 419
    .line 420
    iput v12, v6, Ltq5;->f:I

    .line 421
    .line 422
    iget v12, v3, Luq5;->g:I

    .line 423
    .line 424
    iput v12, v6, Ltq5;->g:I

    .line 425
    .line 426
    iget v12, v3, Lgx8;->d:I

    .line 427
    .line 428
    iput v12, v6, Lgx8;->d:I

    .line 429
    .line 430
    new-instance v12, Luq5;

    .line 431
    .line 432
    invoke-direct {v12, v6}, Luq5;-><init>(Ltq5;)V

    .line 433
    .line 434
    .line 435
    move v6, v11

    .line 436
    iget-wide v10, v12, Lgx8;->b:J

    .line 437
    .line 438
    new-instance v13, Lxp4;

    .line 439
    .line 440
    invoke-direct {v13}, Lxp4;-><init>()V

    .line 441
    .line 442
    .line 443
    move-object/from16 p3, v3

    .line 444
    .line 445
    iget v3, v12, Lgx8;->a:I

    .line 446
    .line 447
    iput v3, v13, Lgx8;->c:I

    .line 448
    .line 449
    iput-wide v10, v13, Lgx8;->b:J

    .line 450
    .line 451
    iput v7, v13, Lxp4;->e:I

    .line 452
    .line 453
    move/from16 v17, v6

    .line 454
    .line 455
    new-instance v6, Lyp4;

    .line 456
    .line 457
    invoke-direct {v6, v13}, Lyp4;-><init>(Lxp4;)V

    .line 458
    .line 459
    .line 460
    new-instance v13, Lz24;

    .line 461
    .line 462
    invoke-direct {v13}, Lz24;-><init>()V

    .line 463
    .line 464
    .line 465
    iput v3, v13, Lgx8;->c:I

    .line 466
    .line 467
    iput-wide v10, v13, Lgx8;->b:J

    .line 468
    .line 469
    iput v7, v13, Lz24;->f:I

    .line 470
    .line 471
    new-instance v3, La34;

    .line 472
    .line 473
    invoke-direct {v3, v13}, La34;-><init>(Lz24;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9, v2, v12}, Ly8;->f([BLuq5;)[B

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    invoke-virtual {v9, v7, v1}, Ly8;->g([B[B)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v9, v12}, Ly8;->e(Luq5;)Lty3;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    invoke-static {v9, v7, v6}, Lxx3;->q(Ly8;Lty3;Lyp4;)Lqx8;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    :goto_a
    iget v7, v3, Lgx8;->d:I

    .line 492
    .line 493
    iget-wide v10, v3, Lgx8;->b:J

    .line 494
    .line 495
    iget-object v12, v0, Llh0;->k:Ljava/util/Stack;

    .line 496
    .line 497
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 498
    .line 499
    .line 500
    move-result v13

    .line 501
    iget v1, v3, La34;->f:I

    .line 502
    .line 503
    move/from16 v18, v1

    .line 504
    .line 505
    iget v1, v3, La34;->e:I

    .line 506
    .line 507
    iget v3, v3, Lgx8;->a:I

    .line 508
    .line 509
    if-nez v13, :cond_d

    .line 510
    .line 511
    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v13

    .line 515
    check-cast v13, Lqx8;

    .line 516
    .line 517
    iget v13, v13, Lqx8;->a:I

    .line 518
    .line 519
    iget v2, v6, Lqx8;->a:I

    .line 520
    .line 521
    if-ne v13, v2, :cond_d

    .line 522
    .line 523
    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    check-cast v2, Lqx8;

    .line 528
    .line 529
    iget v2, v2, Lqx8;->a:I

    .line 530
    .line 531
    if-eq v2, v4, :cond_d

    .line 532
    .line 533
    new-instance v2, Lz24;

    .line 534
    .line 535
    invoke-direct {v2}, Lz24;-><init>()V

    .line 536
    .line 537
    .line 538
    iput v3, v2, Lgx8;->c:I

    .line 539
    .line 540
    iput-wide v10, v2, Lgx8;->b:J

    .line 541
    .line 542
    iput v1, v2, Lz24;->e:I

    .line 543
    .line 544
    add-int/lit8 v1, v18, -0x1

    .line 545
    .line 546
    div-int/lit8 v1, v1, 0x2

    .line 547
    .line 548
    iput v1, v2, Lz24;->f:I

    .line 549
    .line 550
    iput v7, v2, Lgx8;->d:I

    .line 551
    .line 552
    new-instance v1, La34;

    .line 553
    .line 554
    invoke-direct {v1, v2}, La34;-><init>(Lz24;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    check-cast v2, Lqx8;

    .line 562
    .line 563
    invoke-static {v9, v2, v6, v1}, Lxx3;->y(Ly8;Lqx8;Lqx8;Lgx8;)Lqx8;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    new-instance v6, Lqx8;

    .line 568
    .line 569
    iget v3, v2, Lqx8;->a:I

    .line 570
    .line 571
    const/16 v16, 0x1

    .line 572
    .line 573
    add-int/lit8 v3, v3, 0x1

    .line 574
    .line 575
    iget-object v2, v2, Lqx8;->b:[B

    .line 576
    .line 577
    invoke-static {v2}, Ljd4;->g([B)[B

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-direct {v6, v2, v3}, Lqx8;-><init>([BI)V

    .line 582
    .line 583
    .line 584
    new-instance v2, Lz24;

    .line 585
    .line 586
    invoke-direct {v2}, Lz24;-><init>()V

    .line 587
    .line 588
    .line 589
    iget v3, v1, Lgx8;->a:I

    .line 590
    .line 591
    iput v3, v2, Lgx8;->c:I

    .line 592
    .line 593
    iget-wide v10, v1, Lgx8;->b:J

    .line 594
    .line 595
    iput-wide v10, v2, Lgx8;->b:J

    .line 596
    .line 597
    iget v3, v1, La34;->e:I

    .line 598
    .line 599
    add-int/lit8 v3, v3, 0x1

    .line 600
    .line 601
    iput v3, v2, Lz24;->e:I

    .line 602
    .line 603
    iget v3, v1, La34;->f:I

    .line 604
    .line 605
    iput v3, v2, Lz24;->f:I

    .line 606
    .line 607
    iget v1, v1, Lgx8;->d:I

    .line 608
    .line 609
    iput v1, v2, Lgx8;->d:I

    .line 610
    .line 611
    new-instance v3, La34;

    .line 612
    .line 613
    invoke-direct {v3, v2}, La34;-><init>(Lz24;)V

    .line 614
    .line 615
    .line 616
    move-object/from16 v1, p1

    .line 617
    .line 618
    move-object/from16 v2, p2

    .line 619
    .line 620
    goto/16 :goto_a

    .line 621
    .line 622
    :cond_d
    iget-object v2, v5, Lnh0;->a:Lqx8;

    .line 623
    .line 624
    if-nez v2, :cond_e

    .line 625
    .line 626
    iput-object v6, v5, Lnh0;->a:Lqx8;

    .line 627
    .line 628
    move/from16 v19, v8

    .line 629
    .line 630
    goto :goto_b

    .line 631
    :cond_e
    iget v13, v2, Lqx8;->a:I

    .line 632
    .line 633
    move/from16 v19, v8

    .line 634
    .line 635
    iget v8, v6, Lqx8;->a:I

    .line 636
    .line 637
    if-ne v13, v8, :cond_f

    .line 638
    .line 639
    new-instance v8, Lz24;

    .line 640
    .line 641
    invoke-direct {v8}, Lz24;-><init>()V

    .line 642
    .line 643
    .line 644
    iput v3, v8, Lgx8;->c:I

    .line 645
    .line 646
    iput-wide v10, v8, Lgx8;->b:J

    .line 647
    .line 648
    iput v1, v8, Lz24;->e:I

    .line 649
    .line 650
    add-int/lit8 v1, v18, -0x1

    .line 651
    .line 652
    div-int/lit8 v1, v1, 0x2

    .line 653
    .line 654
    iput v1, v8, Lz24;->f:I

    .line 655
    .line 656
    iput v7, v8, Lgx8;->d:I

    .line 657
    .line 658
    new-instance v1, La34;

    .line 659
    .line 660
    invoke-direct {v1, v8}, La34;-><init>(Lz24;)V

    .line 661
    .line 662
    .line 663
    invoke-static {v9, v2, v6, v1}, Lxx3;->y(Ly8;Lqx8;Lqx8;Lgx8;)Lqx8;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    new-instance v6, Lqx8;

    .line 668
    .line 669
    iget-object v2, v5, Lnh0;->a:Lqx8;

    .line 670
    .line 671
    iget v2, v2, Lqx8;->a:I

    .line 672
    .line 673
    const/16 v16, 0x1

    .line 674
    .line 675
    add-int/lit8 v2, v2, 0x1

    .line 676
    .line 677
    iget-object v1, v1, Lqx8;->b:[B

    .line 678
    .line 679
    invoke-static {v1}, Ljd4;->g([B)[B

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-direct {v6, v1, v2}, Lqx8;-><init>([BI)V

    .line 684
    .line 685
    .line 686
    iput-object v6, v5, Lnh0;->a:Lqx8;

    .line 687
    .line 688
    goto :goto_b

    .line 689
    :cond_f
    invoke-virtual {v12, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    :goto_b
    iget-object v1, v5, Lnh0;->a:Lqx8;

    .line 693
    .line 694
    iget v1, v1, Lqx8;->a:I

    .line 695
    .line 696
    if-ne v1, v4, :cond_10

    .line 697
    .line 698
    const/4 v7, 0x1

    .line 699
    iput-boolean v7, v5, Lnh0;->f:Z

    .line 700
    .line 701
    goto :goto_c

    .line 702
    :cond_10
    const/4 v7, 0x1

    .line 703
    iget v1, v6, Lqx8;->a:I

    .line 704
    .line 705
    iput v1, v5, Lnh0;->c:I

    .line 706
    .line 707
    iget v1, v5, Lnh0;->d:I

    .line 708
    .line 709
    add-int/2addr v1, v7

    .line 710
    iput v1, v5, Lnh0;->d:I

    .line 711
    .line 712
    goto :goto_c

    .line 713
    :cond_11
    const-string v0, "finished or not initialized"

    .line 714
    .line 715
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    return-void

    .line 719
    :cond_12
    move-object/from16 p3, v3

    .line 720
    .line 721
    move/from16 v19, v8

    .line 722
    .line 723
    move/from16 v17, v11

    .line 724
    .line 725
    :goto_c
    add-int/lit8 v8, v19, 0x1

    .line 726
    .line 727
    move-object/from16 v1, p1

    .line 728
    .line 729
    move-object/from16 v2, p2

    .line 730
    .line 731
    move-object/from16 v3, p3

    .line 732
    .line 733
    move/from16 v11, v17

    .line 734
    .line 735
    const/4 v7, 0x1

    .line 736
    :goto_d
    const/4 v10, 0x0

    .line 737
    goto/16 :goto_7

    .line 738
    .line 739
    :cond_13
    iget v1, v0, Llh0;->p:I

    .line 740
    .line 741
    const/16 v16, 0x1

    .line 742
    .line 743
    add-int/lit8 v1, v1, 0x1

    .line 744
    .line 745
    iput v1, v0, Llh0;->p:I

    .line 746
    .line 747
    return-void

    .line 748
    :cond_14
    const-string v0, "index out of bounds"

    .line 749
    .line 750
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    return-void

    .line 754
    :cond_15
    const-string v0, "index already used"

    .line 755
    .line 756
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    return-void
.end method
