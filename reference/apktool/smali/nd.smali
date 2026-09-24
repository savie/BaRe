.class public final Lnd;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Llc8;

.field public final f:Lh81;

.field public final k:Z


# direct methods
.method public constructor <init>(Las5;Llc8;Lh81;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lnd;->e:Llc8;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    :cond_0
    iput-object p3, p0, Lnd;->f:Lh81;

    .line 11
    .line 12
    iput-boolean p4, p0, Lnd;->k:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final H(Lqc8;Lgc8;)Ljava/util/Map;
    .locals 9

    .line 1
    invoke-virtual {p2}, Lgc8;->t0()Lgc8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p2, p2, Lgc8;->f:Ljava/lang/Class;

    .line 10
    .line 11
    new-instance v1, Lib;

    .line 12
    .line 13
    invoke-virtual {v0}, Lgc8;->n0()Ljc8;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/16 v3, 0xd

    .line 18
    .line 19
    iget-object v4, p0, Lnd;->e:Llc8;

    .line 20
    .line 21
    invoke-direct {v1, v3, v4, v2}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Lnd;->H(Lqc8;Lgc8;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    array-length v2, v1

    .line 33
    const/4 v3, 0x0

    .line 34
    move v4, v3

    .line 35
    :goto_0
    if-ge v4, v2, :cond_6

    .line 36
    .line 37
    aget-object v5, v1, v4

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 65
    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    :cond_4
    new-instance v6, Lmd;

    .line 72
    .line 73
    invoke-direct {v6, p1, v5}, Lmd;-><init>(Lqc8;Ljava/lang/reflect/Field;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v7, p0, Lnd;->k:Z

    .line 77
    .line 78
    if-eqz v7, :cond_5

    .line 79
    .line 80
    sget-object v7, Lvd;->j:Lvd;

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {p0, v7, v8}, Lol1;->e(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    iput-object v7, v6, Lmd;->c:Lcy0;

    .line 91
    .line 92
    :cond_5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    if-eqz v0, :cond_c

    .line 103
    .line 104
    iget-object p1, p0, Lnd;->f:Lh81;

    .line 105
    .line 106
    if-eqz p1, :cond_c

    .line 107
    .line 108
    invoke-interface {p1, p2}, Lh81;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_c

    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    invoke-static {p1, p2, v1}, Lu81;->i(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_c

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Ljava/lang/Class;

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    array-length v1, p2

    .line 140
    move v2, v3

    .line 141
    :goto_3
    if-ge v2, v1, :cond_7

    .line 142
    .line 143
    aget-object v4, p2, v2

    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_8

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_9

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_a

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_a
    :goto_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    check-cast v5, Lmd;

    .line 179
    .line 180
    if-eqz v5, :cond_b

    .line 181
    .line 182
    iget-object v6, v5, Lmd;->c:Lcy0;

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {p0, v6, v4}, Lol1;->e(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    iput-object v4, v5, Lmd;->c:Lcy0;

    .line 193
    .line 194
    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_c
    return-object v0
.end method
