.class public final Ljq3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyt1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ljq3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljq3;->b:Ljava/lang/Object;

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
    iget v0, p0, Ljq3;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ljq3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lkq0;

    .line 9
    .line 10
    check-cast p1, Lyq0;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lkq0;->a(Lyq0;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Lmq3;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lmq3;

    .line 21
    .line 22
    const/4 v0, -0x3

    .line 23
    invoke-direct {p1, v0}, Lmq3;-><init>(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    check-cast p0, Lot9;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lot9;->f(Lmq3;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
