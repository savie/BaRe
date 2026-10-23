.class public final synthetic Liw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkh6;JLjava/lang/Object;I)V
    .locals 0

    .line 14
    iput p5, p0, Liw;->a:I

    iput-object p1, p0, Liw;->c:Ljava/io/Serializable;

    iput-wide p2, p0, Liw;->b:J

    iput-object p4, p0, Liw;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq63;JLmt3;Lxw;)V
    .locals 0

    .line 1
    const/4 p5, 0x0

    .line 2
    iput p5, p0, Liw;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Liw;->c:Ljava/io/Serializable;

    .line 8
    .line 9
    iput-wide p2, p0, Liw;->b:J

    .line 10
    .line 11
    iput-object p4, p0, Liw;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Liw;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Liw;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-wide v3, p0, Liw;->b:J

    .line 8
    .line 9
    iget-object p0, p0, Liw;->c:Ljava/io/Serializable;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lkh6;

    .line 15
    .line 16
    check-cast v2, Lwj3;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    iget-wide p0, p0, Lkh6;->a:J

    .line 25
    .line 26
    add-long/2addr p0, v5

    .line 27
    invoke-static {p0, p1, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    iget-object p1, v2, Lwj3;->c:Lmt3;

    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_0
    check-cast p0, Lkh6;

    .line 42
    .line 43
    check-cast v2, Lqv;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    iget-wide p0, p0, Lkh6;->a:J

    .line 52
    .line 53
    add-long/2addr p0, v5

    .line 54
    invoke-static {p0, p1, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v2, p0}, Lqv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :pswitch_1
    check-cast p0, Lq63;

    .line 67
    .line 68
    check-cast v2, Lmt3;

    .line 69
    .line 70
    check-cast p1, Ldz6;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object v0, p1, Ldz6;->b:Ljava/lang/Long;

    .line 76
    .line 77
    const-wide/16 v5, 0x0

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    cmp-long v7, v7, v5

    .line 86
    .line 87
    if-lez v7, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p0}, Lq63;->A()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    const-wide/16 v9, 0x1

    .line 103
    .line 104
    cmp-long p0, v7, v9

    .line 105
    .line 106
    if-gez p0, :cond_2

    .line 107
    .line 108
    move-wide v7, v9

    .line 109
    :cond_2
    :goto_1
    iget-wide p0, p1, Ldz6;->a:J

    .line 110
    .line 111
    cmp-long v0, p0, v5

    .line 112
    .line 113
    if-gez v0, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-wide v5, p0

    .line 117
    :goto_2
    cmp-long p0, v5, v7

    .line 118
    .line 119
    if-lez p0, :cond_4

    .line 120
    .line 121
    move-wide v5, v7

    .line 122
    :cond_4
    long-to-float p0, v5

    .line 123
    long-to-float p1, v7

    .line 124
    div-float/2addr p0, p1

    .line 125
    long-to-float p1, v3

    .line 126
    mul-float/2addr p0, p1

    .line 127
    float-to-double p0, p0

    .line 128
    invoke-static {p0, p1}, Ltu0;->w(D)J

    .line 129
    .line 130
    .line 131
    move-result-wide p0

    .line 132
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-interface {v2, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    return-object v1

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
