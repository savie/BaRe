.class public final Lds6;
.super Lev6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public c:Ljava/util/EnumSet;


# virtual methods
.method public final a(Lzu6;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lev6;->b:Lzu6;

    .line 2
    .line 3
    iget-object v0, p0, Lev6;->a:Ldv6;

    .line 4
    .line 5
    check-cast v0, Les6;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v1, p1, Low0;->d:I

    .line 11
    .line 12
    iput v1, v0, Les6;->a:I

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    new-array v1, v0, [B

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Low0;->i([BI)Low0;

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x72

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Low0;->f(B)Low0;

    .line 26
    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Low0;->l(J)V

    .line 31
    .line 32
    .line 33
    const/16 v2, 0x18

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Low0;->f(B)Low0;

    .line 36
    .line 37
    .line 38
    const v2, 0xc853

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Low0;->m(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lzu6;->v()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Low0;->f(B)Low0;

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v1, "SMB 2.002"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lds6;->c:Ljava/util/EnumSet;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/4 v4, 0x1

    .line 86
    if-gt v3, v4, :cond_0

    .line 87
    .line 88
    sget-object v3, Lus6;->c:Lus6;

    .line 89
    .line 90
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_1

    .line 95
    .line 96
    :cond_0
    const-string v1, "SMB 2.???"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    const/4 v4, 0x2

    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    add-int/2addr v3, v4

    .line 123
    add-int/2addr v2, v3

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1, v2}, Low0;->k(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p1, v4}, Low0;->f(B)Low0;

    .line 145
    .line 146
    .line 147
    sget-object v2, Lh51;->a:Ljava/nio/charset/Charset;

    .line 148
    .line 149
    invoke-virtual {p1, v1, v2}, Low0;->h(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    iget-object p0, p0, Lev6;->a:Ldv6;

    .line 154
    .line 155
    check-cast p0, Les6;

    .line 156
    .line 157
    iget p1, p1, Low0;->d:I

    .line 158
    .line 159
    iput p1, p0, Les6;->b:I

    .line 160
    .line 161
    return-void

    .line 162
    nop

    .line 163
    :array_0
    .array-data 1
        -0x1t
        0x53t
        0x4dt
        0x42t
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SMB_COM_NEGOTIATE"

    .line 2
    .line 3
    return-object p0
.end method
