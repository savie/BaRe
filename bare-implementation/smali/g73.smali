.class public final Lg73;
.super Lh60;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
