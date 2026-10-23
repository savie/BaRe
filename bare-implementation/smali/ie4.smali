.class public final Lie4;
.super Lyc9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lie4;->q:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lz91;Ljava/lang/Object;Lnz3;Loz3;)Lne;
    .locals 7

    .line 1
    iget v0, p0, Lie4;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p6}, Lyc9;->b(Landroid/content/Context;Landroid/os/Looper;Lz91;Ljava/lang/Object;Lnz3;Loz3;)Lne;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    move-object v4, p4

    .line 12
    check-cast v4, Lb39;

    .line 13
    .line 14
    new-instance v0, La39;

    .line 15
    .line 16
    move-object v5, p5

    .line 17
    check-cast v5, Lg19;

    .line 18
    .line 19
    move-object v6, p6

    .line 20
    check-cast v6, Lg19;

    .line 21
    .line 22
    move-object v1, p1

    .line 23
    move-object v2, p2

    .line 24
    move-object v3, p3

    .line 25
    invoke-direct/range {v0 .. v6}, La39;-><init>(Landroid/content/Context;Landroid/os/Looper;Lz91;Lb39;Lg19;Lg19;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/content/Context;Landroid/os/Looper;Lz91;Ljava/lang/Object;Lg19;Lg19;)Lne;
    .locals 8

    .line 1
    iget v0, p0, Lie4;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p6}, Lyc9;->c(Landroid/content/Context;Landroid/os/Looper;Lz91;Ljava/lang/Object;Lg19;Lg19;)Lne;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p4, Lle;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v0, Lkm6;

    .line 23
    .line 24
    const/16 v3, 0x17d

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    move-object v1, p1

    .line 28
    move-object v2, p2

    .line 29
    move-object v4, p3

    .line 30
    move-object v5, p5

    .line 31
    move-object v6, p6

    .line 32
    invoke-direct/range {v0 .. v7}, Laz3;-><init>(Landroid/content/Context;Landroid/os/Looper;ILz91;Lnz3;Loz3;I)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
