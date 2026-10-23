.class public final Luz7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lvc9;

.field public b:Lvc9;

.field public c:Lvc9;

.field public d:Lla;

.field public e:I


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Luz7;->c:Lvc9;

    .line 2
    .line 3
    iget-object v1, p0, Luz7;->a:Lvc9;

    .line 4
    .line 5
    :cond_0
    :goto_0
    iget v2, p0, Luz7;->e:I

    .line 6
    .line 7
    iget v3, v1, Lvc9;->b:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_8

    .line 10
    .line 11
    iget-object v4, v1, Lvc9;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, [C

    .line 14
    .line 15
    add-int/lit8 v5, v2, 0x1

    .line 16
    .line 17
    iput v5, p0, Luz7;->e:I

    .line 18
    .line 19
    aget-char v6, v4, v2

    .line 20
    .line 21
    const/16 v7, 0x24

    .line 22
    .line 23
    if-ne v6, v7, :cond_7

    .line 24
    .line 25
    if-ge v5, v3, :cond_7

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x2

    .line 28
    .line 29
    iput v2, p0, Luz7;->e:I

    .line 30
    .line 31
    aget-char v2, v4, v5

    .line 32
    .line 33
    const/16 v3, 0x7b

    .line 34
    .line 35
    if-ne v2, v3, :cond_6

    .line 36
    .line 37
    iget-object v2, p0, Luz7;->b:Lvc9;

    .line 38
    .line 39
    :goto_1
    iget v3, p0, Luz7;->e:I

    .line 40
    .line 41
    iget v4, v1, Lvc9;->b:I

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    const-string v6, "${"

    .line 45
    .line 46
    if-ge v3, v4, :cond_5

    .line 47
    .line 48
    iget-object v4, v1, Lvc9;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, [C

    .line 51
    .line 52
    add-int/lit8 v7, v3, 0x1

    .line 53
    .line 54
    iput v7, p0, Luz7;->e:I

    .line 55
    .line 56
    aget-char v3, v4, v3

    .line 57
    .line 58
    const/16 v4, 0x7d

    .line 59
    .line 60
    if-ne v3, v4, :cond_4

    .line 61
    .line 62
    iget v3, v2, Lvc9;->b:I

    .line 63
    .line 64
    if-lez v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Lvc9;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-object v4, p0, Luz7;->d:Lla;

    .line 71
    .line 72
    iget-object v7, v4, Lla;->a:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v7, Lai5;

    .line 75
    .line 76
    iget-object v7, v7, Lai5;->e:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v7, Li87;

    .line 79
    .line 80
    iget-object v7, v7, Li87;->a:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-eqz v7, :cond_1

    .line 87
    .line 88
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    iget-object v4, v4, Lla;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v4, Lx44;

    .line 96
    .line 97
    iget-object v4, v4, Lx44;->k:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, Lfk8;

    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    :goto_2
    if-nez v4, :cond_2

    .line 106
    .line 107
    invoke-virtual {v0, v6}, Lvc9;->b(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3}, Lvc9;->b(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v3, "}"

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Lvc9;->b(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_2
    invoke-virtual {v0, v4}, Lvc9;->b(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_3
    iput v5, v2, Lvc9;->b:I

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_4
    iget v4, v2, Lvc9;->b:I

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    invoke-virtual {v2, v4}, Lvc9;->e(I)V

    .line 130
    .line 131
    .line 132
    iget-object v4, v2, Lvc9;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v4, [C

    .line 135
    .line 136
    iget v5, v2, Lvc9;->b:I

    .line 137
    .line 138
    add-int/lit8 v6, v5, 0x1

    .line 139
    .line 140
    iput v6, v2, Lvc9;->b:I

    .line 141
    .line 142
    aput-char v3, v4, v5

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    :goto_4
    iget v3, v2, Lvc9;->b:I

    .line 146
    .line 147
    if-lez v3, :cond_0

    .line 148
    .line 149
    invoke-virtual {v0, v6}, Lvc9;->b(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v3, v2, Lvc9;->c:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v3, [C

    .line 155
    .line 156
    iget v2, v2, Lvc9;->b:I

    .line 157
    .line 158
    iget v4, v0, Lvc9;->b:I

    .line 159
    .line 160
    add-int/2addr v4, v2

    .line 161
    invoke-virtual {v0, v4}, Lvc9;->e(I)V

    .line 162
    .line 163
    .line 164
    iget-object v4, v0, Lvc9;->c:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v4, [C

    .line 167
    .line 168
    iget v6, v0, Lvc9;->b:I

    .line 169
    .line 170
    invoke-static {v3, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    .line 172
    .line 173
    iget v3, v0, Lvc9;->b:I

    .line 174
    .line 175
    add-int/2addr v3, v2

    .line 176
    iput v3, v0, Lvc9;->b:I

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_6
    iput v5, p0, Luz7;->e:I

    .line 181
    .line 182
    :cond_7
    iget v2, v0, Lvc9;->b:I

    .line 183
    .line 184
    add-int/lit8 v2, v2, 0x1

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Lvc9;->e(I)V

    .line 187
    .line 188
    .line 189
    iget-object v2, v0, Lvc9;->c:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v2, [C

    .line 192
    .line 193
    iget v3, v0, Lvc9;->b:I

    .line 194
    .line 195
    add-int/lit8 v4, v3, 0x1

    .line 196
    .line 197
    iput v4, v0, Lvc9;->b:I

    .line 198
    .line 199
    aput-char v6, v2, v3

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_8
    return-void
.end method
