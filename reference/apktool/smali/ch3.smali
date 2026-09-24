.class public final Lch3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lch3;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lch3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lch3;->a:Lch3;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lch3;->b:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method

.method public static a(Lh97;)Lah3;
    .locals 2

    .line 1
    sget-object v0, Lch3;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Lah3;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string v0, "Cannot get dependency "

    .line 16
    .line 17
    const-string v1, ". Dependencies should be added at class load time."

    .line 18
    .line 19
    invoke-static {p0, v1, v0}, Lf6;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final b(Lkv1;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lbh3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lbh3;

    .line 7
    .line 8
    iget v1, v0, Lbh3;->n:I

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
    iput v1, v0, Lbh3;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lbh3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lbh3;-><init>(Lch3;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lbh3;->f:Ljava/lang/Object;

    .line 26
    .line 27
    iget p1, v0, Lbh3;->n:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    if-ne p1, v2, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lbh3;->e:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v3, v0, Lbh3;->d:Ljava/util/Map;

    .line 38
    .line 39
    check-cast v3, Ljava/util/Map;

    .line 40
    .line 41
    iget-object v4, v0, Lbh3;->c:Lh97;

    .line 42
    .line 43
    iget-object v5, v0, Lbh3;->b:Ljava/util/Iterator;

    .line 44
    .line 45
    check-cast v5, Ljava/util/Iterator;

    .line 46
    .line 47
    iget-object v6, v0, Lbh3;->a:Ljava/util/Map;

    .line 48
    .line 49
    check-cast v6, Ljava/util/Map;

    .line 50
    .line 51
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_2
    invoke-static {p0}, Llg7;->H(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lch3;->b:Ljava/util/Map;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v3}, Lx65;->q0(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-direct {p1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    move-object v5, p0

    .line 91
    move-object v3, p1

    .line 92
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Lh97;

    .line 113
    .line 114
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Lah3;

    .line 119
    .line 120
    new-instance v6, Lfj;

    .line 121
    .line 122
    const/16 v7, 0x17

    .line 123
    .line 124
    invoke-direct {v6, p0, v7}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    move-object p0, v3

    .line 128
    check-cast p0, Ljava/util/Map;

    .line 129
    .line 130
    iput-object p0, v0, Lbh3;->a:Ljava/util/Map;

    .line 131
    .line 132
    move-object v7, v5

    .line 133
    check-cast v7, Ljava/util/Iterator;

    .line 134
    .line 135
    iput-object v7, v0, Lbh3;->b:Ljava/util/Iterator;

    .line 136
    .line 137
    iput-object v4, v0, Lbh3;->c:Lh97;

    .line 138
    .line 139
    iput-object p0, v0, Lbh3;->d:Ljava/util/Map;

    .line 140
    .line 141
    iput-object p1, v0, Lbh3;->e:Ljava/lang/Object;

    .line 142
    .line 143
    iput v2, v0, Lbh3;->n:I

    .line 144
    .line 145
    new-instance p0, Loe4;

    .line 146
    .line 147
    const/4 v7, 0x0

    .line 148
    invoke-direct {p0, v6, v1, v7}, Loe4;-><init>(Lyt3;Ljv1;I)V

    .line 149
    .line 150
    .line 151
    sget-object v6, Llv2;->a:Llv2;

    .line 152
    .line 153
    invoke-static {v6, p0, v0}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    sget-object v6, Lyx1;->a:Lyx1;

    .line 158
    .line 159
    if-ne p0, v6, :cond_3

    .line 160
    .line 161
    return-object v6

    .line 162
    :cond_3
    move-object v6, v3

    .line 163
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-static {v4}, Lch3;->a(Lh97;)Lah3;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    iget-object p0, p0, Lah3;->b:Loy1;

    .line 171
    .line 172
    if-eqz p0, :cond_4

    .line 173
    .line 174
    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-object v3, v6

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    const-string p0, "Subscriber "

    .line 180
    .line 181
    const-string p1, " has not been registered."

    .line 182
    .line 183
    invoke-static {v4, p1, p0}, Lf6;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v1

    .line 187
    :cond_5
    return-object v3
.end method
