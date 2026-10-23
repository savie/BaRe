.class public final Lsx0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lch5;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsx0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lsx0;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lzx3;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :pswitch_0
    check-cast p1, Ljava/io/File;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lbh5;
    .locals 0

    .line 1
    iget p0, p0, Lsx0;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lzx3;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Lzx3;->a:Lyn8;

    .line 15
    .line 16
    iget-object p0, p0, Lyn8;->e:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    new-instance p2, Lnr5;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Lcy3;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcy3;-><init>(Lzx3;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lbh5;

    .line 31
    .line 32
    invoke-direct {p1, p2, p0}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p0, "GlideOneDriveModelLoader: Null driveId!"

    .line 37
    .line 38
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    :goto_0
    return-object p1

    .line 43
    :pswitch_0
    check-cast p1, Ljava/io/File;

    .line 44
    .line 45
    new-instance p0, Lbh5;

    .line 46
    .line 47
    new-instance p2, Lnr5;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p3, Lrx0;

    .line 53
    .line 54
    invoke-direct {p3, p1}, Lrx0;-><init>(Ljava/io/File;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p2, p3}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
