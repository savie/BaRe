.class public final synthetic Li54;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Li54;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Li54;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lokhttp3/Response;

    .line 12
    .line 13
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 14
    .line 15
    .line 16
    return-object v2

    .line 17
    :pswitch_0
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lzn4;->a:Lzn4;

    .line 25
    .line 26
    new-instance v0, Lzq1;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-direct {v0, p0, v1, v3}, Lzq1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :pswitch_1
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lik0;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 45
    .line 46
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v0, p0

    .line 65
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
