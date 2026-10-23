.class public final Lj60;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lch5;


# instance fields
.field public final a:Landroid/content/res/AssetManager;

.field public final b:Li60;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Li60;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj60;->a:Landroid/content/res/AssetManager;

    .line 5
    .line 6
    iput-object p2, p0, Lj60;->b:Li60;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    const-string p0, "file"

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "android_asset"

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lbh5;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/16 p3, 0x16

    .line 8
    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lbh5;

    .line 14
    .line 15
    new-instance p4, Lnr5;

    .line 16
    .line 17
    invoke-direct {p4, p1}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lj60;->b:Li60;

    .line 21
    .line 22
    iget-object p0, p0, Lj60;->a:Landroid/content/res/AssetManager;

    .line 23
    .line 24
    invoke-interface {p1, p0, p2}, Li60;->t(Landroid/content/res/AssetManager;Ljava/lang/String;)Lra2;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {p3, p4, p0}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 29
    .line 30
    .line 31
    return-object p3
.end method
