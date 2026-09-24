.class public final synthetic Lph0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkh6;

.field public final synthetic c:Lkh6;

.field public final synthetic d:Lno2;


# direct methods
.method public synthetic constructor <init>(Lno2;Lkh6;Lkh6;I)V
    .locals 0

    .line 1
    iput p4, p0, Lph0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lph0;->d:Lno2;

    .line 4
    .line 5
    iput-object p2, p0, Lph0;->b:Lkh6;

    .line 6
    .line 7
    iput-object p3, p0, Lph0;->c:Lkh6;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lph0;->a:I

    .line 2
    .line 3
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const-string v3, "/s"

    .line 8
    .line 9
    iget-object v4, p0, Lph0;->c:Lkh6;

    .line 10
    .line 11
    iget-object v5, p0, Lph0;->b:Lkh6;

    .line 12
    .line 13
    iget-object p0, p0, Lph0;->d:Lno2;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p0, Llu3;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-object v6, p0, Lno2;->d:Lgz7;

    .line 27
    .line 28
    invoke-virtual {v6}, Lgz7;->isRunning()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    invoke-static {p0, p1}, Lno2;->h(Lno2;Ljava/lang/Long;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    iget-wide v6, v5, Lkh6;->a:J

    .line 42
    .line 43
    sub-long v6, p0, v6

    .line 44
    .line 45
    iput-wide p0, v5, Lkh6;->a:J

    .line 46
    .line 47
    iget-wide p0, v4, Lkh6;->a:J

    .line 48
    .line 49
    sub-long p0, v0, p0

    .line 50
    .line 51
    iput-wide v0, v4, Lkh6;->a:J

    .line 52
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    cmp-long v0, v6, v0

    .line 56
    .line 57
    if-lez v0, :cond_1

    .line 58
    .line 59
    const-wide/16 v0, 0x3e8

    .line 60
    .line 61
    mul-long/2addr p0, v0

    .line 62
    div-long/2addr p0, v6

    .line 63
    const-wide/32 v0, 0x7fffffff

    .line 64
    .line 65
    .line 66
    cmp-long v4, p0, v0

    .line 67
    .line 68
    if-lez v4, :cond_0

    .line 69
    .line 70
    move-wide p0, v0

    .line 71
    :cond_0
    long-to-int p0, p0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 p0, 0x0

    .line 74
    :goto_0
    if-lez p0, :cond_2

    .line 75
    .line 76
    sget-object p1, Lp93;->a:Lp93;

    .line 77
    .line 78
    int-to-long p0, p0

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    :cond_2
    return-object v2

    .line 91
    :pswitch_0
    check-cast p0, Ld82;

    .line 92
    .line 93
    check-cast p1, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    iget-object v0, p0, Lno2;->d:Lgz7;

    .line 100
    .line 101
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-static {p0, p1}, Lno2;->h(Lno2;Ljava/lang/Long;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide p0

    .line 114
    iget-wide v8, v5, Lkh6;->a:J

    .line 115
    .line 116
    sub-long/2addr p0, v8

    .line 117
    long-to-float p0, p0

    .line 118
    div-float/2addr p0, v1

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    iput-wide v0, v5, Lkh6;->a:J

    .line 124
    .line 125
    iget-wide v0, v4, Lkh6;->a:J

    .line 126
    .line 127
    sub-long v0, v6, v0

    .line 128
    .line 129
    iput-wide v6, v4, Lkh6;->a:J

    .line 130
    .line 131
    long-to-float p1, v0

    .line 132
    div-float/2addr p1, p0

    .line 133
    float-to-int p0, p1

    .line 134
    if-lez p0, :cond_3

    .line 135
    .line 136
    sget-object p1, Lp93;->a:Lp93;

    .line 137
    .line 138
    int-to-long p0, p0

    .line 139
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    :cond_3
    return-object v2

    .line 151
    :pswitch_1
    check-cast p0, Lrh0;

    .line 152
    .line 153
    check-cast p1, Ljava/lang/Long;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 156
    .line 157
    .line 158
    move-result-wide v6

    .line 159
    iget-object v0, p0, Lno2;->d:Lgz7;

    .line 160
    .line 161
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    invoke-static {p0, p1}, Lno2;->h(Lno2;Ljava/lang/Long;)V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 171
    .line 172
    .line 173
    move-result-wide p0

    .line 174
    iget-wide v8, v5, Lkh6;->a:J

    .line 175
    .line 176
    sub-long/2addr p0, v8

    .line 177
    long-to-float p0, p0

    .line 178
    div-float/2addr p0, v1

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v0

    .line 183
    iput-wide v0, v5, Lkh6;->a:J

    .line 184
    .line 185
    iget-wide v0, v4, Lkh6;->a:J

    .line 186
    .line 187
    sub-long v0, v6, v0

    .line 188
    .line 189
    iput-wide v6, v4, Lkh6;->a:J

    .line 190
    .line 191
    long-to-float p1, v0

    .line 192
    div-float/2addr p1, p0

    .line 193
    float-to-int p0, p1

    .line 194
    if-lez p0, :cond_4

    .line 195
    .line 196
    sget-object p1, Lp93;->a:Lp93;

    .line 197
    .line 198
    int-to-long p0, p0

    .line 199
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    :cond_4
    return-object v2

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
