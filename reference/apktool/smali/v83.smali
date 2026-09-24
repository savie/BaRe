.class public final Lv83;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lch5;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lv83;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lv83;->b:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lt83;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lv83;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lv83;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lv83;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/net/Uri;

    .line 7
    .line 8
    invoke-static {p1}, Lod2;->q(Landroid/net/Uri;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "video"

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0

    .line 30
    :pswitch_0
    check-cast p1, Ljava/io/File;

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lbh5;
    .locals 2

    .line 1
    iget p4, p0, Lv83;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lv83;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p4, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/net/Uri;

    .line 9
    .line 10
    const/high16 p4, -0x80000000

    .line 11
    .line 12
    if-eq p2, p4, :cond_0

    .line 13
    .line 14
    if-eq p3, p4, :cond_0

    .line 15
    .line 16
    const/16 p4, 0x200

    .line 17
    .line 18
    if-gt p2, p4, :cond_0

    .line 19
    .line 20
    const/16 p2, 0x180

    .line 21
    .line 22
    if-gt p3, p2, :cond_0

    .line 23
    .line 24
    new-instance p2, Lbh5;

    .line 25
    .line 26
    new-instance p3, Lnr5;

    .line 27
    .line 28
    invoke-direct {p3, p1}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    check-cast p0, Landroid/content/Context;

    .line 32
    .line 33
    new-instance p4, Lz28;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {p4, v0, v1}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, p4}, Lb38;->b(Landroid/content/Context;Landroid/net/Uri;Lc38;)Lb38;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p2, p3, p0}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p2, 0x0

    .line 52
    :goto_0
    return-object p2

    .line 53
    :pswitch_0
    check-cast p1, Ljava/io/File;

    .line 54
    .line 55
    new-instance p2, Lbh5;

    .line 56
    .line 57
    new-instance p3, Lnr5;

    .line 58
    .line 59
    invoke-direct {p3, p1}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p4, Ls83;

    .line 63
    .line 64
    check-cast p0, Lt83;

    .line 65
    .line 66
    invoke-direct {p4, p1, p0}, Ls83;-><init>(Ljava/io/File;Lt83;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, p3, p4}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 70
    .line 71
    .line 72
    return-object p2

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
