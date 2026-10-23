.class public final synthetic La10;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, La10;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La10;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, La10;->a:I

    .line 2
    .line 3
    iget-object p0, p0, La10;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljn6;

    .line 9
    .line 10
    check-cast p1, Ly97;

    .line 11
    .line 12
    invoke-static {p0, p1}, Ly97$a;->F(Ljn6;Ly97;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Ljava/util/List;

    .line 17
    .line 18
    check-cast p1, Lfc6;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lfc6$a;->A(Ljava/util/List;Lfc6;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Ljava/lang/Long;

    .line 25
    .line 26
    check-cast p1, Lyb6;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lyb6$a;->E(Ljava/lang/Long;Lyb6;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    check-cast p0, Ljava/util/Map;

    .line 33
    .line 34
    check-cast p1, Lp86;

    .line 35
    .line 36
    invoke-static {p0, p1}, Lp86$a;->F(Ljava/util/Map;Lp86;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    check-cast p0, Ljava/lang/String;

    .line 41
    .line 42
    check-cast p1, Lpx4;

    .line 43
    .line 44
    invoke-static {p0, p1}, Lpx4$a;->C(Ljava/lang/String;Lpx4;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    check-cast p0, Ljava/lang/Integer;

    .line 49
    .line 50
    check-cast p1, Lmw3;

    .line 51
    .line 52
    invoke-static {p0, p1}, Lmw3$a;->K(Ljava/lang/Integer;Lmw3;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_5
    check-cast p0, Lz02$a;

    .line 57
    .line 58
    check-cast p1, Ly02;

    .line 59
    .line 60
    invoke-static {p0, p1}, Ly02$a;->A(Lz02$a;Ly02;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_6
    check-cast p0, Lv64$e;

    .line 65
    .line 66
    check-cast p1, Lll0;

    .line 67
    .line 68
    invoke-static {p0, p1}, Lll0$a;->c(Lv64$e;Lll0;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_7
    check-cast p0, Ljava/io/InputStream;

    .line 73
    .line 74
    check-cast p1, Ld10;

    .line 75
    .line 76
    invoke-static {p0, p1}, Ld10$a;->F(Ljava/io/InputStream;Ld10;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
