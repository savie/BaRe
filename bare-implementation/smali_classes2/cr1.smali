.class public final synthetic Lcr1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcr1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcr1;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcr1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcr1;->b:Ljava/lang/String;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lw14;->a:Lgv7;

    .line 19
    .line 20
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    move-object v1, p0

    .line 31
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 32
    .line 33
    :cond_1
    :goto_0
    return-object v1

    .line 34
    :pswitch_0
    if-eqz p0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    sget-object v0, Lw14;->a:Lgv7;

    .line 44
    .line 45
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-class v1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 50
    .line 51
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    move-object v1, p0

    .line 56
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 57
    .line 58
    :cond_3
    :goto_1
    return-object v1

    .line 59
    :pswitch_1
    new-instance v0, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lz85;->z(Ljava/io/File;)Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_2
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->g(Ljava/lang/String;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
