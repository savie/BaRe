.class public final synthetic Lii;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lji;


# direct methods
.method public synthetic constructor <init>(Lji;I)V
    .locals 0

    .line 1
    iput p2, p0, Lii;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lii;->b:Lji;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lii;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lii;->b:Lji;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lzn4;->a:Lzn4;

    .line 9
    .line 10
    new-instance v0, Llj;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, p0, v2, v1}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lbe8;->a:Lbe8;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-static {p0}, Lji;->e(Lji;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
