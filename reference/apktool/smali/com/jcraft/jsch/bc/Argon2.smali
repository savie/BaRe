.class public Lcom/jcraft/jsch/bc/Argon2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KDF;


# instance fields
.field public a:Lm40;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getKey([BI)[B
    .locals 0

    .line 1
    new-array p2, p2, [B

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jcraft/jsch/bc/Argon2;->a:Lm40;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lm40;->c([B[B)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final initWithPPKv3Header(Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "Invalid argon2 params."

    .line 4
    .line 5
    :try_start_0
    const-string v2, "Key-Derivation"

    .line 6
    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "Argon2-Salt"

    .line 14
    .line 15
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x2

    .line 30
    rem-int/2addr v4, v5

    .line 31
    if-nez v4, :cond_4

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const v6, -0x5b3b15e8

    .line 38
    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    if-eq v4, v6, :cond_1

    .line 42
    .line 43
    const v6, 0x36dd0fc7

    .line 44
    .line 45
    .line 46
    if-eq v4, v6, :cond_0

    .line 47
    .line 48
    const v6, 0x36dd0fcc

    .line 49
    .line 50
    .line 51
    if-ne v4, v6, :cond_3

    .line 52
    .line 53
    const-string v4, "Argon2i"

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    move v9, v2

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_0
    const-string v4, "Argon2d"

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    move v9, v7

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-string v4, "Argon2id"

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    move v9, v5

    .line 86
    :goto_0
    const-string v2, "Argon2-Memory"

    .line 87
    .line 88
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    const-string v2, "Argon2-Passes"

    .line 99
    .line 100
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    const-string v2, "Argon2-Parallelism"

    .line 111
    .line 112
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    div-int/2addr v0, v5

    .line 127
    new-array v2, v0, [B

    .line 128
    .line 129
    move v4, v7

    .line 130
    :goto_1
    if-ge v4, v0, :cond_2

    .line 131
    .line 132
    mul-int/lit8 v5, v4, 0x2

    .line 133
    .line 134
    add-int/lit8 v6, v5, 0x2

    .line 135
    .line 136
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    const/16 v6, 0x10

    .line 141
    .line 142
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    int-to-byte v5, v5

    .line 147
    aput-byte v5, v2, v4

    .line 148
    .line 149
    add-int/lit8 v4, v4, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    invoke-static {v2}, Lms8;->k([B)[B

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    new-array v0, v7, [B

    .line 157
    .line 158
    invoke-static {v0}, Lms8;->k([B)[B

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    new-array v0, v7, [B

    .line 163
    .line 164
    invoke-static {v0}, Lms8;->k([B)[B

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    new-instance v8, Ln40;

    .line 169
    .line 170
    invoke-direct/range {v8 .. v15}, Ln40;-><init>(I[B[B[BIII)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lm40;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    move-object/from16 v2, p0

    .line 179
    .line 180
    iput-object v0, v2, Lcom/jcraft/jsch/bc/Argon2;->a:Lm40;

    .line 181
    .line 182
    invoke-virtual {v0, v8}, Lm40;->e(Ln40;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 187
    .line 188
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_4
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 193
    .line 194
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_2
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    .line 199
    .line 200
    invoke-direct {v2, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    throw v2
.end method
