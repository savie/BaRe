.class public final Lxz0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lxz0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lxz0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lxz0;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lxz0;->a:I

    .line 2
    .line 3
    iget v1, p0, Lxz0;->b:I

    .line 4
    .line 5
    iget-object p0, p0, Lxz0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lal5;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lal5;->j(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lkm5;

    .line 17
    .line 18
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lg67;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lg67;->x(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
