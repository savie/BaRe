.class public final synthetic Lxv;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmt3;

.field public final synthetic c:Lgx;


# direct methods
.method public synthetic constructor <init>(Lmt3;Lgx;Lxw;I)V
    .locals 0

    .line 1
    iput p4, p0, Lxv;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lxv;->b:Lmt3;

    .line 4
    .line 5
    iput-object p2, p0, Lxv;->c:Lgx;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lxv;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lxv;->c:Lgx;

    .line 6
    .line 7
    iget-object p0, p0, Lxv;->b:Lmt3;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Llw;

    .line 13
    .line 14
    check-cast v2, Lax;

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    check-cast p2, Ljava/lang/Long;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    check-cast p3, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lax;->b()J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    add-long/2addr p1, v3

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_0
    check-cast p0, Lmw;

    .line 46
    .line 47
    check-cast v2, Lcx;

    .line 48
    .line 49
    check-cast p1, Ljava/lang/Long;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    check-cast p2, Ljava/lang/Long;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    check-cast p3, Ljava/lang/Long;

    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcx;->b()J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    add-long/2addr p1, v3

    .line 70
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lmw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
