.class public final synthetic Lcw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcs8;Lgu8;)V
    .locals 1

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcw;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcw;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnw;Lxw;Lbx;Lkh6;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcw;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcw;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcw;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcw;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lcw;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lcw;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcs8;

    .line 13
    .line 14
    check-cast v2, Lgu8;

    .line 15
    .line 16
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    check-cast v2, Lfu8;

    .line 28
    .line 29
    iget-object v0, v2, Lfu8;->a:Ljava/util/List;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Let8;

    .line 45
    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lu45;

    .line 50
    .line 51
    iget-object v2, p0, Lcs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 52
    .line 53
    const/16 v3, 0xc

    .line 54
    .line 55
    invoke-direct {v0, v2, p1, v3}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    const p1, 0x7f0f0025

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljq0;

    .line 65
    .line 66
    const/4 v2, 0x3

    .line 67
    invoke-direct {p1, v2, p0, p2}, Ljq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, v0, Ll90;->e:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v0}, Lu45;->j()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-object v1

    .line 76
    :pswitch_0
    check-cast p0, Lnw;

    .line 77
    .line 78
    check-cast v2, Lkh6;

    .line 79
    .line 80
    check-cast p1, Ljava/lang/Long;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    check-cast p2, Ljava/lang/Long;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-wide p1, v2, Lkh6;->a:J

    .line 92
    .line 93
    add-long/2addr p1, v3

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lnw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
