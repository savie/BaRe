.class public final synthetic Lrm0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lrm0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lrm0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lrm0;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lrm0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lj23;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lj23;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lh23;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lh23;->b(Ljava/lang/String;)Lg23;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-boolean p0, p0, Lj23;->b:Z

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lg23;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lg23;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v0

    .line 32
    :pswitch_0
    check-cast p0, Lhn1;

    .line 33
    .line 34
    check-cast p1, Lokhttp3/Response;

    .line 35
    .line 36
    sget v0, Lcn0;->k:I

    .line 37
    .line 38
    const-class v0, Lcy2;

    .line 39
    .line 40
    const-string v1, "S3 service returned unknown XML for CompleteMultipartUpload REST API. "

    .line 41
    .line 42
    :try_start_0
    iget-object v2, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 43
    .line 44
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const-string v4, "x-amz-version-id"

    .line 57
    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    :try_start_1
    invoke-static {v0, v2}, Lby8;->c(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v0, v2}, Lby8;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcy2;

    .line 72
    .line 73
    new-instance v3, Ljava/util/concurrent/CompletionException;

    .line 74
    .line 75
    new-instance v5, Ldy2;

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    invoke-direct {v5, v0, p1, v6}, Ldy2;-><init>(Lcy2;Lokhttp3/Response;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v5}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v3
    :try_end_1
    .catch Lcy8; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    move-object p0, v0

    .line 87
    goto :goto_3

    .line 88
    :catch_0
    move-exception v0

    .line 89
    move-object p0, v0

    .line 90
    goto :goto_2

    .line 91
    :catch_1
    :goto_0
    :try_start_2
    const-class v0, Lin1;

    .line 92
    .line 93
    invoke-static {v0, v2}, Lby8;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v12, v0

    .line 98
    check-cast v12, Lin1;

    .line 99
    .line 100
    new-instance v5, Lzr5;

    .line 101
    .line 102
    iget-object v6, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 103
    .line 104
    invoke-virtual {v12}, Lin1;->j()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v12}, Lin1;->l()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v12}, Lin1;->m()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v12}, Lin1;->k()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-static {v4, p1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-direct/range {v5 .. v12}, Lzr5;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lin1;)V
    :try_end_2
    .catch Lcy8; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_2
    :try_start_3
    const-class v0, Lcn0;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    new-instance v0, Lzr5;

    .line 149
    .line 150
    iget-object v1, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 151
    .line 152
    invoke-virtual {p0}, Lfw0;->f()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {p0}, Lll0;->d()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {p0}, Lyq5;->h()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {v4, p1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    const/4 v5, 0x0

    .line 169
    move-object v4, p0

    .line 170
    invoke-direct/range {v0 .. v6}, Lzr5;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 174
    .line 175
    .line 176
    move-object v5, v0

    .line 177
    :goto_1
    return-object v5

    .line 178
    :goto_2
    :try_start_4
    new-instance v0, Ljava/util/concurrent/CompletionException;

    .line 179
    .line 180
    new-instance v1, Lrg5;

    .line 181
    .line 182
    invoke-direct {v1, p0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    :goto_3
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
