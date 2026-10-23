.class public final synthetic Lsh2;
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
    iput p2, p0, Lsh2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lsh2;->b:Ljava/lang/Object;

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
    iget v0, p0, Lsh2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lsh2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lck8;

    .line 9
    .line 10
    check-cast p1, Lv97;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lv97$a;->x(Lck8;Lv97;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lg87;

    .line 17
    .line 18
    check-cast p1, Lfc6;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lfc6$a;->y(Lg87;Lfc6;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Ljava/io/RandomAccessFile;

    .line 25
    .line 26
    check-cast p1, Lyb6;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lyb6$a;->F(Ljava/io/RandomAccessFile;Lyb6;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    check-cast p0, Ljx7;

    .line 33
    .line 34
    check-cast p1, Lyr5;

    .line 35
    .line 36
    invoke-static {p0, p1}, Lyr5$a;->F(Ljx7;Lyr5;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    check-cast p0, Ljava/lang/Integer;

    .line 41
    .line 42
    check-cast p1, Lyx4;

    .line 43
    .line 44
    invoke-static {p0, p1}, Lyx4$a;->x(Ljava/lang/Integer;Lyx4;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    check-cast p0, [Ljava/lang/String;

    .line 49
    .line 50
    check-cast p1, Lmw3;

    .line 51
    .line 52
    invoke-static {p0, p1}, Lmw3$a;->I([Ljava/lang/String;Lmw3;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_5
    check-cast p0, Ljava/util/List;

    .line 57
    .line 58
    check-cast p1, Lth2;

    .line 59
    .line 60
    invoke-static {p0, p1}, Lth2$a;->x(Ljava/util/List;Lth2;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
