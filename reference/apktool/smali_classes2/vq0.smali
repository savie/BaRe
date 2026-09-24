.class public final Lvq0;
.super Lxh8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Lwb6;

.field public final synthetic t:Lzc2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lwb6;Lzc2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvq0;->q:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lvq0;->r:Lwb6;

    .line 7
    .line 8
    iput-object p3, p0, Lvq0;->t:Lzc2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onDataChange(Leb2;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Leb2;->b()Ldb2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v1, p1, Ldb2;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Iterator;

    .line 13
    .line 14
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lhk5;

    .line 25
    .line 26
    iget-object v3, p1, Ldb2;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Leb2;

    .line 29
    .line 30
    iget-object v3, v3, Leb2;->b:Lzc2;

    .line 31
    .line 32
    iget-object v4, v2, Lhk5;->a:Lm61;

    .line 33
    .line 34
    iget-object v4, v4, Lm61;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v2, v2, Lhk5;->b:Lqn5;

    .line 41
    .line 42
    invoke-static {v2}, Lsb4;->d(Lqn5;)Lsb4;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :try_start_0
    invoke-virtual {v3}, Lzc2;->e()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-class v4, Lwb6;

    .line 51
    .line 52
    iget-object v2, v2, Lsb4;->a:Lqn5;

    .line 53
    .line 54
    invoke-interface {v2}, Lqn5;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v4, v2}, Lt62;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lwb6;

    .line 63
    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    if-eqz v2, :cond_0

    .line 74
    .line 75
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, p0, Lvq0;->q:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, p0, Lvq0;->r:Lwb6;

    .line 82
    .line 83
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v0, Lnx;

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-direct {v0, v1}, Lnx;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 v0, 0x5

    .line 101
    invoke-static {p1, v0}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const/16 v0, 0xa

    .line 106
    .line 107
    invoke-static {p1, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {v0}, Lx65;->q0(I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/16 v1, 0x10

    .line 116
    .line 117
    if-ge v0, v1, :cond_3

    .line 118
    .line 119
    move v0, v1

    .line 120
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object v2, v0

    .line 140
    check-cast v2, Lwb6;

    .line 141
    .line 142
    invoke-virtual {v2}, Lwb6;->getOrderId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-nez v2, :cond_4

    .line 147
    .line 148
    const-string v2, "unknown"

    .line 149
    .line 150
    :cond_4
    invoke-static {v2}, Lre3;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Ljava/lang/String;

    .line 183
    .line 184
    iget-object v2, p0, Lvq0;->t:Lzc2;

    .line 185
    .line 186
    invoke-virtual {v2, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v1, v0}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    return-void
.end method
