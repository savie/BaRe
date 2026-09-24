.class public final synthetic Luk;
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
    iput p7, p0, Luk;->a:I

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
    .locals 2

    .line 1
    iget v0, p0, Luk;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljy8;

    .line 9
    .line 10
    iget-object v0, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 11
    .line 12
    invoke-static {v0}, Lzm5;->b(Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Ljy8;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ldz5;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ldz5;->d()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 59
    .line 60
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, [B

    .line 63
    .line 64
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_2
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 71
    .line 72
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->N(Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;)V

    .line 73
    .line 74
    .line 75
    sget-object p0, Lbe8;->a:Lbe8;

    .line 76
    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
