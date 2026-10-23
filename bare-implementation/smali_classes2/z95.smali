.class public final Lz95;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public b:J

.field public final c:J

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Laa5;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lz95;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lz95;->d:Ljava/lang/Object;

    .line 22
    iget-object p1, p1, Laa5;->p:Lfo2;

    .line 23
    iget-wide v0, p1, Lfo2;->c:J

    .line 24
    iput-wide v0, p0, Lz95;->c:J

    return-void
.end method

.method public constructor <init>(Lvb5;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lz95;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lz95;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p1, Lag8;->a:Lrf8;

    .line 10
    .line 11
    iget-object p1, p1, Lrf8;->a:Lq63;

    .line 12
    .line 13
    invoke-virtual {p1}, Lq63;->A()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lz95;->c:J

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 8

    .line 1
    iget v0, p0, Lz95;->a:I

    .line 2
    .line 3
    const-wide/16 v1, 0x7d0

    .line 4
    .line 5
    iget-wide v3, p0, Lz95;->c:J

    .line 6
    .line 7
    iget-object v5, p0, Lz95;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v5, Lvb5;

    .line 13
    .line 14
    iget-object v0, v5, Lag8;->c:Lgz7;

    .line 15
    .line 16
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    cmp-long v0, p1, v3

    .line 28
    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    iget-wide v3, p0, Lz95;->b:J

    .line 32
    .line 33
    sub-long v3, v6, v3

    .line 34
    .line 35
    cmp-long v0, v3, v1

    .line 36
    .line 37
    if-ltz v0, :cond_2

    .line 38
    .line 39
    :cond_1
    iput-wide v6, p0, Lz95;->b:J

    .line 40
    .line 41
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v5, p0}, Lag8;->g(Lag8;Ljava/lang/Long;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void

    .line 49
    :pswitch_0
    check-cast v5, Laa5;

    .line 50
    .line 51
    iget-object v0, v5, Lno2;->d:Lgz7;

    .line 52
    .line 53
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    cmp-long v0, p1, v3

    .line 65
    .line 66
    if-gez v0, :cond_4

    .line 67
    .line 68
    iget-wide v3, p0, Lz95;->b:J

    .line 69
    .line 70
    sub-long v3, v6, v3

    .line 71
    .line 72
    cmp-long v0, v3, v1

    .line 73
    .line 74
    if-ltz v0, :cond_5

    .line 75
    .line 76
    :cond_4
    iput-wide v6, p0, Lz95;->b:J

    .line 77
    .line 78
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v5, p0}, Lno2;->h(Lno2;Ljava/lang/Long;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_1
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
