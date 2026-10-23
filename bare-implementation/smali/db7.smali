.class public final Ldb7;
.super Ll5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public G:I

.field public t:Ljava/nio/channels/FileChannel;

.field public x:Ljava/lang/String;

.field public y:[B


# virtual methods
.method public final K()Leb7;
    .locals 6

    .line 1
    iget-object v1, p0, Ldb7;->t:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Ldb7;->x:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Leb7;

    .line 8
    .line 9
    iget-object v3, p0, Ldb7;->y:[B

    .line 10
    .line 11
    iget v5, p0, Ldb7;->G:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct/range {v0 .. v5}, Leb7;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;[BZI)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Ll5;->k:Ly4;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Ll5;->q:[Ljava/nio/file/OpenOption;

    .line 24
    .line 25
    invoke-static {v0}, Lod2;->o(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Ll5;->I()Ljava/nio/file/Path;

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_2
    const-string p0, "origin == null"

    .line 38
    .line 39
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method
