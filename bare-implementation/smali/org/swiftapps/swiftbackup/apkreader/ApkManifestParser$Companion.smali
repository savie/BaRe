.class public final Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# virtual methods
.method public final hasApplicationClass(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;

    .line 8
    .line 9
    new-instance v0, Lq63;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p1, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;-><init>(Lq63;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->getApplicationClassName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method
