.class public final synthetic Lnw1;
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
    iput p2, p0, Lnw1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lnw1;->b:Ljava/lang/Object;

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
    iget v0, p0, Lnw1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lnw1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lxo5;

    .line 9
    .line 10
    check-cast p1, Lr97;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lr97$a;->x(Lxo5;Lr97;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Ljava/util/concurrent/CompletionException;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Throwable;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Lzl2;

    .line 25
    .line 26
    check-cast p1, Lpw1;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lpw1$a;->a0(Lzl2;Lpw1;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
