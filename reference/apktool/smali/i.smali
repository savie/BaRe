.class public final Li;
.super Lj3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p0, Lg;

    .line 2
    .line 3
    invoke-direct {p0, p2, p5, p1, p6}, Lg;-><init>(Ljava/io/InputStream;Lkk1;Ljava/lang/String;[B)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    new-instance p0, Lh;

    .line 2
    .line 3
    check-cast p1, Lf;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lh;-><init>(Lf;Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    check-cast p1, Lf;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    throw p0
.end method
