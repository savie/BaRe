.class public final synthetic Lhi4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lhi4;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lhi4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lhi4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lhi4;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lhi4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lhi4;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lbs8;

    .line 13
    .line 14
    check-cast v2, Lgu8;

    .line 15
    .line 16
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lbs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 28
    .line 29
    check-cast v2, Lfu8;

    .line 30
    .line 31
    iget-object v0, v2, Lfu8;->a:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {v0}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v0, p2, v2, p1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->c0(Ljava/util/ArrayList;IZLandroid/view/View;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_0
    check-cast p0, Lli4;

    .line 43
    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;

    .line 47
    .line 48
    check-cast p2, Lcom/jcraft/jsch/Session;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lli4;->v(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    move-object p0, v0

    .line 62
    const-string p1, "JschService"

    .line 63
    .line 64
    const-string p2, "createDirectory"

    .line 65
    .line 66
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 70
    .line 71
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p1, "createDirectory: "

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/4 v6, 0x4

    .line 82
    const/4 v7, 0x0

    .line 83
    const-string v3, "JschService"

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-object v1

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
