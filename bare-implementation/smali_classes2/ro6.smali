.class public final synthetic Lro6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Llh6;


# direct methods
.method public synthetic constructor <init>(Llh6;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lro6;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lro6;->b:Llh6;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Llh6;Lfp6;)V
    .locals 0

    .line 10
    const/4 p2, 0x0

    iput p2, p0, Lro6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lro6;->b:Llh6;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lro6;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v0, v0, Lro6;->b:Llh6;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Lzy6;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Lzy6;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v7, "extract_warning_count="

    .line 41
    .line 42
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 v5, 0xa

    .line 56
    .line 57
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v6, 0x0

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_2

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    add-int/lit8 v8, v6, 0x1

    .line 76
    .line 77
    if-ltz v6, :cond_1

    .line 78
    .line 79
    check-cast v7, Ljava/lang/String;

    .line 80
    .line 81
    const-string v9, "extract_warning_"

    .line 82
    .line 83
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/16 v6, 0x3d

    .line 90
    .line 91
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move v6, v8

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Lfl1;->F0()V

    .line 103
    .line 104
    .line 105
    throw v4

    .line 106
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1}, Lnq7;->J0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    :goto_1
    iput-object v4, v0, Llh6;->a:Ljava/lang/Object;

    .line 119
    .line 120
    return-object v2

    .line 121
    :pswitch_0
    move-object/from16 v1, p1

    .line 122
    .line 123
    check-cast v1, Lqy6;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-wide v3, v1, Lqy6;->a:J

    .line 129
    .line 130
    iget-wide v5, v1, Lqy6;->b:J

    .line 131
    .line 132
    iget-wide v7, v1, Lqy6;->c:J

    .line 133
    .line 134
    iget-wide v9, v1, Lqy6;->d:J

    .line 135
    .line 136
    iget-wide v11, v1, Lqy6;->e:J

    .line 137
    .line 138
    iget-wide v13, v1, Lqy6;->f:J

    .line 139
    .line 140
    move-wide/from16 p0, v13

    .line 141
    .line 142
    iget-wide v13, v1, Lqy6;->g:J

    .line 143
    .line 144
    move-wide v15, v13

    .line 145
    iget-wide v13, v1, Lqy6;->h:J

    .line 146
    .line 147
    move-wide/from16 v17, v13

    .line 148
    .line 149
    iget-wide v13, v1, Lqy6;->i:J

    .line 150
    .line 151
    move-object/from16 v19, v2

    .line 152
    .line 153
    iget-wide v1, v1, Lqy6;->j:J

    .line 154
    .line 155
    move-wide/from16 v20, v15

    .line 156
    .line 157
    const-string v15, "native_file_size="

    .line 158
    .line 159
    move-object/from16 v16, v0

    .line 160
    .line 161
    const-string v0, " native_index_offset="

    .line 162
    .line 163
    invoke-static {v15, v0, v3, v4}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v3, " native_index_size="

    .line 171
    .line 172
    const-string v4, " native_header_ms="

    .line 173
    .line 174
    invoke-static {v0, v3, v7, v8, v4}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v3, " native_payload_ms="

    .line 181
    .line 182
    const-string v4, " native_producer_ms="

    .line 183
    .line 184
    invoke-static {v0, v3, v11, v12, v4}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    move-wide/from16 v3, p0

    .line 188
    .line 189
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v3, " native_encryption_ms="

    .line 193
    .line 194
    const-string v4, " native_index_footer_ms="

    .line 195
    .line 196
    move-wide/from16 v5, v20

    .line 197
    .line 198
    invoke-static {v0, v3, v5, v6, v4}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    move-wide/from16 v3, v17

    .line 202
    .line 203
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v3, " native_total_ms="

    .line 207
    .line 208
    const-string v4, " crypto_setup_ms="

    .line 209
    .line 210
    invoke-static {v0, v3, v13, v14, v4}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    move-object/from16 v1, v16

    .line 221
    .line 222
    iput-object v0, v1, Llh6;->a:Ljava/lang/Object;

    .line 223
    .line 224
    return-object v19

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
