.class public final Lck1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsj7;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lck1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lj75;Ldi4;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget p0, p0, Lck1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lv60;

    .line 7
    .line 8
    iget-object v0, p1, Lj75;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lo75;

    .line 11
    .line 12
    new-instance v1, Lp60;

    .line 13
    .line 14
    sget-object v2, Lxx3;->b:Lq86;

    .line 15
    .line 16
    invoke-virtual {v2, p2}, Lq86;->a(Ldi4;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lj75;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljb9;

    .line 25
    .line 26
    iget-object p1, p1, Lj75;->f:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lcz4;

    .line 29
    .line 30
    sget-object v4, Lxx3;->d:Lq86;

    .line 31
    .line 32
    iget-object p2, p2, Ldi4;->a:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lda4;

    .line 39
    .line 40
    invoke-direct {v1, v2, v3, p1, v4}, Lp60;-><init>(Ljava/lang/String;Ljb9;Lcz4;Lda4;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lxx3;->c:Lq86;

    .line 44
    .line 45
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    move-object v2, p1

    .line 54
    :cond_0
    check-cast v2, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-direct {p0, v0, v1, p1}, Lv60;-><init>(Lo75;Lp60;Z)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_0
    new-instance p0, Lbk1;

    .line 65
    .line 66
    iget-object p1, p1, Lj75;->a:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lo75;

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lbk1;-><init>(Lo75;)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
