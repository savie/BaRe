.class public final Lgt8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lq63;

.field public final b:Lq63;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lb67;->c()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "/data/misc/wifi/WifiConfigStore.xml"

    .line 14
    .line 15
    :goto_0
    new-instance v1, Lq63;

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-direct {v1, v0, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lgt8;->a:Lq63;

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
    const-string v2, "wifi/system_config_file.xml"

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-direct {v0, v1, v2, v3}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lgt8;->b:Lq63;

    .line 42
    .line 43
    return-void
.end method
