.class public final synthetic Ly00;
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
    iput p2, p0, Ly00;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly00;->b:Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Ly00;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ly00;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lhz8;

    .line 9
    .line 10
    check-cast p1, Lez8;

    .line 11
    .line 12
    invoke-virtual {p1}, Lez8;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Lhz8;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v1, Lq40;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {v1, v2}, Lq40;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    check-cast p0, Lpr5;

    .line 35
    .line 36
    check-cast p1, Lx97;

    .line 37
    .line 38
    invoke-static {p0, p1}, Lx97$a;->x(Lpr5;Lx97;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    check-cast p0, Loc4;

    .line 43
    .line 44
    check-cast p1, Lt67;

    .line 45
    .line 46
    invoke-static {p0, p1}, Lt67$a;->I(Loc4;Lt67;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    check-cast p0, Ljava/io/InputStream;

    .line 51
    .line 52
    check-cast p1, Lfc6;

    .line 53
    .line 54
    invoke-static {p0, p1}, Lfc6$a;->z(Ljava/io/InputStream;Lfc6;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_3
    check-cast p0, Lox0;

    .line 59
    .line 60
    check-cast p1, Lyb6;

    .line 61
    .line 62
    invoke-static {p0, p1}, Lyb6$a;->D(Lox0;Lyb6;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_4
    check-cast p0, Ljn6;

    .line 67
    .line 68
    check-cast p1, Lyr5;

    .line 69
    .line 70
    invoke-static {p0, p1}, Lyr5$a;->G(Ljn6;Lyr5;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_5
    check-cast p0, Lg87$a;

    .line 75
    .line 76
    check-cast p1, Lrr5;

    .line 77
    .line 78
    invoke-static {p0, p1}, Lrr5$a;->F(Lg87$a;Lrr5;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_6
    check-cast p0, Ljava/lang/Integer;

    .line 83
    .line 84
    check-cast p1, Lmw3;

    .line 85
    .line 86
    invoke-static {p0, p1}, Lmw3$a;->J(Ljava/lang/Integer;Lmw3;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_7
    check-cast p0, Lll0;

    .line 91
    .line 92
    check-cast p1, Ljava/util/function/Consumer;

    .line 93
    .line 94
    invoke-static {p0, p1}, Lll0$a;->a(Lll0;Ljava/util/function/Consumer;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_8
    check-cast p0, Ljava/lang/Long;

    .line 99
    .line 100
    check-cast p1, Ld10;

    .line 101
    .line 102
    invoke-static {p0, p1}, Ld10$a;->C(Ljava/lang/Long;Ld10;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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
