.class public final synthetic Llx7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Ljava/lang/Long;

.field public final synthetic b:Lkh6;

.field public final synthetic c:Lkh6;

.field public final synthetic d:Lkh6;

.field public final synthetic e:Lrt3;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Lkh6;Lkh6;Lkh6;Lrt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llx7;->a:Ljava/lang/Long;

    .line 5
    .line 6
    iput-object p2, p0, Llx7;->b:Lkh6;

    .line 7
    .line 8
    iput-object p3, p0, Llx7;->c:Lkh6;

    .line 9
    .line 10
    iput-object p4, p0, Llx7;->d:Lkh6;

    .line 11
    .line 12
    iput-object p5, p0, Llx7;->e:Lrt3;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    move-object/from16 v3, p2

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    move-object/from16 v5, p3

    .line 20
    .line 21
    check-cast v5, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v5, v0, Llx7;->a:Ljava/lang/Long;

    .line 27
    .line 28
    sget-object v6, Lbe8;->a:Lbe8;

    .line 29
    .line 30
    if-eqz v5, :cond_6

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    const-wide/16 v9, 0x0

    .line 37
    .line 38
    cmp-long v7, v7, v9

    .line 39
    .line 40
    if-lez v7, :cond_6

    .line 41
    .line 42
    cmp-long v7, v3, v9

    .line 43
    .line 44
    if-gtz v7, :cond_0

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    long-to-double v1, v1

    .line 53
    long-to-double v3, v3

    .line 54
    div-double/2addr v1, v3

    .line 55
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    long-to-double v3, v3

    .line 60
    mul-double/2addr v1, v3

    .line 61
    invoke-static {v1, v2}, Ltu0;->w(D)J

    .line 62
    .line 63
    .line 64
    move-result-wide v11

    .line 65
    const-wide/16 v13, 0x0

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v15

    .line 71
    invoke-static/range {v11 .. v16}, Ll73;->i(JJJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    iget-object v3, v0, Llx7;->b:Lkh6;

    .line 76
    .line 77
    iget-wide v11, v3, Lkh6;->a:J

    .line 78
    .line 79
    sub-long v11, v7, v11

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v13

    .line 85
    cmp-long v4, v1, v13

    .line 86
    .line 87
    if-nez v4, :cond_1

    .line 88
    .line 89
    const/4 v4, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 v4, 0x0

    .line 92
    :goto_0
    iget-object v13, v0, Llx7;->c:Lkh6;

    .line 93
    .line 94
    iget-wide v14, v13, Lkh6;->a:J

    .line 95
    .line 96
    cmp-long v14, v1, v14

    .line 97
    .line 98
    if-gtz v14, :cond_2

    .line 99
    .line 100
    if-nez v4, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const-wide/16 v14, 0x7d0

    .line 104
    .line 105
    cmp-long v14, v11, v14

    .line 106
    .line 107
    if-gez v14, :cond_3

    .line 108
    .line 109
    if-nez v4, :cond_3

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    iget-wide v14, v3, Lkh6;->a:J

    .line 113
    .line 114
    cmp-long v14, v14, v9

    .line 115
    .line 116
    iget-object v15, v0, Llx7;->d:Lkh6;

    .line 117
    .line 118
    if-lez v14, :cond_5

    .line 119
    .line 120
    cmp-long v14, v11, v9

    .line 121
    .line 122
    if-lez v14, :cond_5

    .line 123
    .line 124
    if-nez v4, :cond_5

    .line 125
    .line 126
    move-wide/from16 p1, v9

    .line 127
    .line 128
    iget-wide v9, v15, Lkh6;->a:J

    .line 129
    .line 130
    sub-long v9, v1, v9

    .line 131
    .line 132
    cmp-long v4, v9, p1

    .line 133
    .line 134
    if-gez v4, :cond_4

    .line 135
    .line 136
    move-wide/from16 v9, p1

    .line 137
    .line 138
    :cond_4
    const-wide/16 v16, 0x3e8

    .line 139
    .line 140
    mul-long v9, v9, v16

    .line 141
    .line 142
    div-long/2addr v9, v11

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    move-wide/from16 p1, v9

    .line 145
    .line 146
    move-wide/from16 v9, p1

    .line 147
    .line 148
    :goto_1
    iput-wide v7, v3, Lkh6;->a:J

    .line 149
    .line 150
    iput-wide v1, v15, Lkh6;->a:J

    .line 151
    .line 152
    iput-wide v1, v13, Lkh6;->a:J

    .line 153
    .line 154
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iget-object v0, v0, Llx7;->e:Lrt3;

    .line 163
    .line 164
    invoke-interface {v0, v1, v5, v2}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_6
    :goto_2
    return-object v6
.end method
