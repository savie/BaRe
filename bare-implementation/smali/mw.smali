.class public final synthetic Lmw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lkh6;

.field public final synthetic d:Lyt3;


# direct methods
.method public synthetic constructor <init>(JLwj3;Lkh6;Lqt3;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    iput p3, p0, Lmw;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lmw;->b:J

    .line 8
    .line 9
    iput-object p4, p0, Lmw;->c:Lkh6;

    .line 10
    .line 11
    iput-object p5, p0, Lmw;->d:Lyt3;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lkh6;JLqv;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lmw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmw;->c:Lkh6;

    iput-wide p2, p0, Lmw;->b:J

    iput-object p4, p0, Lmw;->d:Lyt3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lmw;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lmw;->d:Lyt3;

    .line 6
    .line 7
    iget-object v3, p0, Lmw;->c:Lkh6;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v2, Lqt3;

    .line 13
    .line 14
    check-cast p1, Ldz6;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Ldz6;->b:Ljava/lang/Long;

    .line 20
    .line 21
    iget-wide v8, p0, Lmw;->b:J

    .line 22
    .line 23
    const-wide/16 v10, 0x1

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    cmp-long p0, v4, v10

    .line 32
    .line 33
    if-gez p0, :cond_1

    .line 34
    .line 35
    move-wide v4, v10

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-wide v4, v8

    .line 38
    :cond_1
    :goto_0
    iget-wide v6, p1, Ldz6;->a:J

    .line 39
    .line 40
    const-wide/16 v12, 0x0

    .line 41
    .line 42
    cmp-long p0, v6, v12

    .line 43
    .line 44
    if-gez p0, :cond_2

    .line 45
    .line 46
    move-wide v6, v12

    .line 47
    :cond_2
    cmp-long p0, v6, v4

    .line 48
    .line 49
    if-lez p0, :cond_3

    .line 50
    .line 51
    move-wide v6, v4

    .line 52
    :cond_3
    cmp-long p0, v4, v12

    .line 53
    .line 54
    if-lez p0, :cond_5

    .line 55
    .line 56
    cmp-long p0, v8, v12

    .line 57
    .line 58
    if-gtz p0, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    long-to-double v6, v6

    .line 62
    long-to-double v4, v4

    .line 63
    div-double/2addr v6, v4

    .line 64
    long-to-double v4, v8

    .line 65
    mul-double/2addr v6, v4

    .line 66
    invoke-static {v6, v7}, Ltu0;->w(D)J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    const-wide/16 v6, 0x0

    .line 71
    .line 72
    invoke-static/range {v4 .. v9}, Ll73;->i(JJJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    :goto_1
    move-wide v4, v12

    .line 78
    :goto_2
    iget-boolean p0, p1, Ldz6;->d:Z

    .line 79
    .line 80
    if-nez p0, :cond_7

    .line 81
    .line 82
    iget-wide p0, v3, Lkh6;->a:J

    .line 83
    .line 84
    cmp-long p0, p0, v12

    .line 85
    .line 86
    if-nez p0, :cond_7

    .line 87
    .line 88
    cmp-long p0, v4, v8

    .line 89
    .line 90
    if-ltz p0, :cond_7

    .line 91
    .line 92
    cmp-long p0, v8, v10

    .line 93
    .line 94
    if-lez p0, :cond_7

    .line 95
    .line 96
    const-wide/16 p0, 0x2

    .line 97
    .line 98
    div-long p0, v8, p0

    .line 99
    .line 100
    cmp-long v0, p0, v10

    .line 101
    .line 102
    if-gez v0, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    move-wide v10, p0

    .line 106
    :goto_3
    move-wide v4, v10

    .line 107
    :cond_7
    iget-wide p0, v3, Lkh6;->a:J

    .line 108
    .line 109
    cmp-long v0, v4, p0

    .line 110
    .line 111
    if-gez v0, :cond_8

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_8
    move-wide p0, v4

    .line 115
    :goto_4
    cmp-long v0, p0, v8

    .line 116
    .line 117
    if-lez v0, :cond_9

    .line 118
    .line 119
    move-wide p0, v8

    .line 120
    :cond_9
    iput-wide p0, v3, Lkh6;->a:J

    .line 121
    .line 122
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {v2, p0, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    return-object v1

    .line 134
    :pswitch_0
    check-cast v2, Lqv;

    .line 135
    .line 136
    check-cast p1, Ljava/lang/Long;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    iget-wide v6, v3, Lkh6;->a:J

    .line 143
    .line 144
    add-long/2addr v6, v4

    .line 145
    iget-wide p0, p0, Lmw;->b:J

    .line 146
    .line 147
    invoke-static {v6, v7, p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v2, p0}, Lqv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    return-object v1

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
