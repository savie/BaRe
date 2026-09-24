.class public final Lhi2;
.super Lad3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I


# virtual methods
.method public final a(Ljava/io/InputStream;Lv40;)Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p2, Lgi2;

    .line 2
    .line 3
    iget p0, p0, Lhi2;->a:I

    .line 4
    .line 5
    invoke-direct {p2, p1, p0}, Lgi2;-><init>(Ljava/io/InputStream;I)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final b(Lpe3;Lv40;)Loe3;
    .locals 0

    .line 1
    new-instance p2, Lii2;

    .line 2
    .line 3
    invoke-direct {p2, p1, p0}, Lii2;-><init>(Lpe3;Lhi2;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0
.end method
