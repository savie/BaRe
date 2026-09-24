.class public final Ldo7;
.super Landroid/os/storage/StorageManager$StorageVolumeCallback;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final onStateChanged(Landroid/os/storage/StorageVolume;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v0, "Storage change event: "

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "StorageEventListener"

    .line 19
    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-object p0, Leo7;->a:Leo7;

    .line 24
    .line 25
    sget-object p0, Leo7;->c:Lix6;

    .line 26
    .line 27
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lzn7;->q:Lyn7;

    .line 33
    .line 34
    invoke-virtual {p0}, Lyn7;->d()Lzn7;

    .line 35
    .line 36
    .line 37
    return-void
.end method
