.class public final Lmx3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lql6;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmx3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lmx3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lou5;)Z
    .locals 2

    .line 1
    iget p0, p0, Lmx3;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    .line 10
    const-string p2, "HUAWEI"

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const-string p2, "HONOR"

    .line 19
    .line 20
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    const-wide/32 v0, 0x20000000

    .line 31
    .line 32
    .line 33
    cmp-long p0, p0, v0

    .line 34
    .line 35
    if-gtz p0, :cond_2

    .line 36
    .line 37
    :cond_1
    const-string p0, "robolectric"

    .line 38
    .line 39
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    :goto_0
    return p0

    .line 51
    :pswitch_0
    check-cast p1, Lgl7;

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lll6;
    .locals 6

    .line 1
    iget v0, p0, Lmx3;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lmx3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Luo2;

    .line 12
    .line 13
    new-instance v1, Lgh;

    .line 14
    .line 15
    iget-object p0, v0, Luo2;->d:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v2, v0, Luo2;->c:Lm35;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "Argument must not be null"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, v1, Lgh;->a:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {p0, v3}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p0, v1, Lgh;->b:Ljava/lang/Object;

    .line 33
    .line 34
    new-instance p0, Lcom/bumptech/glide/load/data/a;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/data/a;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 37
    .line 38
    .line 39
    iput-object p0, v1, Lgh;->c:Ljava/lang/Object;

    .line 40
    .line 41
    sget-object v5, Luo2;->j:Lnh4;

    .line 42
    .line 43
    move v2, p2

    .line 44
    move v3, p3

    .line 45
    move-object v4, p4

    .line 46
    invoke-virtual/range {v0 .. v5}, Luo2;->a(Lba4;IILou5;Lto2;)Lor0;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_0
    check-cast p1, Lgl7;

    .line 52
    .line 53
    invoke-virtual {p1}, Lgl7;->b()Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p0, Lnr0;

    .line 58
    .line 59
    invoke-static {p0, p1}, Lor0;->e(Lnr0;Landroid/graphics/Bitmap;)Lor0;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
