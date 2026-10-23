.class public final synthetic Lfn1;
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
    iput p2, p0, Lfn1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lfn1;->b:Ljava/lang/Object;

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
    iget v0, p0, Lfn1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lfn1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Long;

    .line 9
    .line 10
    check-cast p1, Lt67;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lt67$a;->L(Ljava/lang/Long;Lt67;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lokhttp3/MediaType;

    .line 17
    .line 18
    check-cast p1, Ldc6;

    .line 19
    .line 20
    invoke-static {p0, p1}, Ldc6$a;->a0(Lokhttp3/MediaType;Ldc6;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, [Ljava/lang/String;

    .line 25
    .line 26
    check-cast p1, Lry4;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lry4$a;->z([Ljava/lang/String;Lry4;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    check-cast p0, Ljava/lang/Integer;

    .line 33
    .line 34
    check-cast p1, Lcy4;

    .line 35
    .line 36
    invoke-static {p0, p1}, Lcy4$a;->y(Ljava/lang/Integer;Lcy4;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    check-cast p0, Lv64$c;

    .line 41
    .line 42
    check-cast p1, Ls12;

    .line 43
    .line 44
    invoke-static {p0, p1}, Ls12$a;->C(Lv64$c;Ls12;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    check-cast p0, [Lgx5;

    .line 49
    .line 50
    check-cast p1, Lhn1;

    .line 51
    .line 52
    invoke-static {p0, p1}, Lhn1$a;->D([Lgx5;Lhn1;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
