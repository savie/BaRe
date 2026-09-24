.class public final Lgq;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lji;

.field public final b:Ljr7;

.field public final c:Lq63;

.field public d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lji;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lgq;->a:Lji;

    .line 8
    .line 9
    new-instance v0, Ljr7;

    .line 10
    .line 11
    invoke-virtual {p1}, Lji;->getDataDir()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lgq;->b:Ljr7;

    .line 22
    .line 23
    new-instance v0, Lq63;

    .line 24
    .line 25
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 26
    .line 27
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v2, ".downgrade.sba"

    .line 40
    .line 41
    invoke-static {p1, v2}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v2, 0x5

    .line 46
    invoke-direct {v0, v1, p1, v2}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lgq;->c:Lq63;

    .line 50
    .line 51
    return-void
.end method
