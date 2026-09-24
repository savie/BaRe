.class public Lpn4;
.super Lfa3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Ley5;)Lon4;
    .locals 2

    .line 1
    new-instance p0, Lon4;

    .line 2
    .line 3
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    iget-object p1, p1, Ley5;->a:Lhy0;

    .line 8
    .line 9
    invoke-virtual {p1}, Lhy0;->w()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "r"

    .line 17
    .line 18
    invoke-direct {v0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lon4;-><init>(Ljava/io/RandomAccessFile;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JvmSystemFileSystem"

    .line 2
    .line 3
    return-object p0
.end method
