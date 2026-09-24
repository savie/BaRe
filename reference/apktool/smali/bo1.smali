.class public final Lbo1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lau4;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lbo1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lbo1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Lfu4;Lrt4;)V
    .locals 1

    .line 1
    iget p1, p0, Lbo1;->a:I

    .line 2
    .line 3
    iget-object p2, p0, Lbo1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    check-cast p2, [Lwu3;

    .line 14
    .line 15
    array-length p0, p2

    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 v0, 0x0

    .line 18
    if-gtz p0, :cond_1

    .line 19
    .line 20
    array-length p0, p2

    .line 21
    if-gtz p0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    aget-object p0, p2, v0

    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    aget-object p0, p2, v0

    .line 28
    .line 29
    throw p1

    .line 30
    :pswitch_0
    check-cast p2, Lio1;

    .line 31
    .line 32
    invoke-virtual {p2}, Lio1;->l()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lho1;->getLifecycle()Lhu4;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p0}, Lhu4;->f(Leu4;)V

    .line 40
    .line 41
    .line 42
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
