.class public final synthetic Lkw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lkh6;

.field public final synthetic d:Lmt3;


# direct methods
.method public synthetic constructor <init>(Lkh6;JLqv;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lkw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkw;->c:Lkh6;

    iput-wide p2, p0, Lkw;->b:J

    iput-object p4, p0, Lkw;->d:Lmt3;

    return-void
.end method

.method public synthetic constructor <init>(Lwj3;JLkh6;Liw;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lkw;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p2, p0, Lkw;->b:J

    .line 8
    .line 9
    iput-object p4, p0, Lkw;->c:Lkh6;

    .line 10
    .line 11
    iput-object p5, p0, Lkw;->d:Lmt3;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkw;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v3, v0, Lkw;->d:Lmt3;

    .line 8
    .line 9
    iget-object v4, v0, Lkw;->c:Lkh6;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Liw;

    .line 15
    .line 16
    move-object/from16 v1, p1

    .line 17
    .line 18
    check-cast v1, Ldz6;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v5, v1, Ldz6;->b:Ljava/lang/Long;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    const-wide/16 v7, 0x1

    .line 32
    .line 33
    cmp-long v9, v5, v7

    .line 34
    .line 35
    if-gez v9, :cond_0

    .line 36
    .line 37
    move-wide v5, v7

    .line 38
    :cond_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v5, 0x0

    .line 44
    :goto_0
    iget-wide v6, v1, Ldz6;->a:J

    .line 45
    .line 46
    const-wide/16 v8, 0x0

    .line 47
    .line 48
    cmp-long v1, v6, v8

    .line 49
    .line 50
    if-gez v1, :cond_2

    .line 51
    .line 52
    move-wide v6, v8

    .line 53
    :cond_2
    if-eqz v5, :cond_3

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v10

    .line 59
    cmp-long v1, v6, v10

    .line 60
    .line 61
    if-lez v1, :cond_3

    .line 62
    .line 63
    move-wide v6, v10

    .line 64
    :cond_3
    if-eqz v5, :cond_8

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    cmp-long v1, v10, v8

    .line 71
    .line 72
    iget-wide v12, v0, Lkw;->b:J

    .line 73
    .line 74
    if-lez v1, :cond_4

    .line 75
    .line 76
    cmp-long v0, v12, v8

    .line 77
    .line 78
    if-gtz v0, :cond_5

    .line 79
    .line 80
    :cond_4
    move-wide/from16 v16, v12

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    long-to-double v0, v6

    .line 84
    long-to-double v5, v10

    .line 85
    div-double/2addr v0, v5

    .line 86
    long-to-double v5, v12

    .line 87
    mul-double/2addr v0, v5

    .line 88
    invoke-static {v0, v1}, Ltu0;->w(D)J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    const-wide/16 v14, 0x0

    .line 93
    .line 94
    move-wide/from16 v16, v12

    .line 95
    .line 96
    move-wide v12, v0

    .line 97
    invoke-static/range {v12 .. v17}, Ll73;->i(JJJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide v8

    .line 101
    :goto_1
    iget-wide v0, v4, Lkh6;->a:J

    .line 102
    .line 103
    cmp-long v5, v8, v0

    .line 104
    .line 105
    if-gez v5, :cond_6

    .line 106
    .line 107
    move-wide v12, v0

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    move-wide v12, v8

    .line 110
    :goto_2
    cmp-long v0, v12, v16

    .line 111
    .line 112
    if-lez v0, :cond_7

    .line 113
    .line 114
    move-wide/from16 v12, v16

    .line 115
    .line 116
    :cond_7
    iput-wide v12, v4, Lkh6;->a:J

    .line 117
    .line 118
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v3, v0}, Liw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_8
    return-object v2

    .line 126
    :pswitch_0
    check-cast v3, Lqv;

    .line 127
    .line 128
    move-object/from16 v1, p1

    .line 129
    .line 130
    check-cast v1, Ljava/lang/Long;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 133
    .line 134
    .line 135
    move-result-wide v5

    .line 136
    iget-wide v7, v4, Lkh6;->a:J

    .line 137
    .line 138
    add-long/2addr v7, v5

    .line 139
    iget-wide v0, v0, Lkw;->b:J

    .line 140
    .line 141
    invoke-static {v7, v8, v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v3, v0}, Lqv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    return-object v2

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
