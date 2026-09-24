.class public final Lp;
.super Lbg0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lv40;)Ljava/io/InputStream;
    .locals 2

    .line 1
    iget p0, p0, Lp;->a:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance p0, Lig7;

    .line 8
    .line 9
    new-instance v0, Lo;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p2, v1, p2}, Lo;-><init>(IIZ)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lig7;-><init>(Ljava/io/InputStream;Lgg7;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    new-instance p0, Lig7;

    .line 20
    .line 21
    new-instance v0, Lo;

    .line 22
    .line 23
    invoke-direct {v0, p2, p2, p2}, Lo;-><init>(IIZ)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, v0}, Lig7;-><init>(Ljava/io/InputStream;Lgg7;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lpe3;Lv40;)Loe3;
    .locals 2

    .line 1
    iget p0, p0, Lp;->a:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lng7;

    .line 9
    .line 10
    new-instance v1, Lo;

    .line 11
    .line 12
    invoke-direct {v1, p2, v0, v0}, Lo;-><init>(IIZ)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, v1}, Lng7;-><init>(Lpe3;Lgg7;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    new-instance p0, Lng7;

    .line 20
    .line 21
    new-instance v1, Lo;

    .line 22
    .line 23
    invoke-direct {v1, p2, p2, v0}, Lo;-><init>(IIZ)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, v1}, Lng7;-><init>(Lpe3;Lgg7;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
