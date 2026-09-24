.class public final Lnk1;
.super Lj3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p0, Luj0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Luj0;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    const/16 p0, 0x9

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj3;->e(ILjava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    new-instance p1, Lwj0;

    .line 8
    .line 9
    invoke-direct {p1, p2, p0}, Lwj0;-><init>(Ljava/io/OutputStream;I)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
