.class public final synthetic Lew;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lmt3;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLmt3;Ljava/lang/Object;Lxw;I)V
    .locals 0

    .line 1
    iput p6, p0, Lew;->a:I

    .line 2
    .line 3
    iput-wide p1, p0, Lew;->b:J

    .line 4
    .line 5
    iput-object p3, p0, Lew;->c:Lmt3;

    .line 6
    .line 7
    iput-object p4, p0, Lew;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lew;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lew;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lew;->c:Lmt3;

    .line 8
    .line 9
    iget-wide v4, p0, Lew;->b:J

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Lmw;

    .line 15
    .line 16
    check-cast v2, Lcx;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    check-cast p2, Ljava/lang/Long;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    check-cast p3, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    long-to-float p0, p0

    .line 36
    long-to-float p1, v6

    .line 37
    div-float/2addr p0, p1

    .line 38
    long-to-float p1, v4

    .line 39
    mul-float/2addr p0, p1

    .line 40
    float-to-double p0, p0

    .line 41
    invoke-static {p0, p1}, Ltu0;->w(D)J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    invoke-virtual {v2}, Lcx;->b()J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    add-long/2addr p2, p0

    .line 50
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v3, p0}, Lmw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :pswitch_0
    check-cast v3, Lnw;

    .line 59
    .line 60
    check-cast v2, Lkh6;

    .line 61
    .line 62
    check-cast p1, Ljava/lang/Long;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide p0

    .line 68
    check-cast p2, Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    check-cast p3, Ljava/lang/Long;

    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    long-to-float p0, p0

    .line 80
    long-to-float p1, v6

    .line 81
    div-float/2addr p0, p1

    .line 82
    long-to-float p1, v4

    .line 83
    mul-float/2addr p0, p1

    .line 84
    float-to-double p0, p0

    .line 85
    invoke-static {p0, p1}, Ltu0;->w(D)J

    .line 86
    .line 87
    .line 88
    move-result-wide p0

    .line 89
    iget-wide p2, v2, Lkh6;->a:J

    .line 90
    .line 91
    add-long/2addr p2, p0

    .line 92
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v3, p0}, Lnw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
