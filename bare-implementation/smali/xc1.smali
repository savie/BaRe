.class public final synthetic Lxc1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lxc1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lli4;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lxc1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Lxc1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lu28;

    .line 7
    .line 8
    check-cast p2, Lmx1;

    .line 9
    .line 10
    instance-of p0, p2, Ll28;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    check-cast p2, Ll28;

    .line 15
    .line 16
    iget-object p0, p1, Lu28;->a:Lox1;

    .line 17
    .line 18
    invoke-interface {p2}, Ll28;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object v0, p1, Lu28;->b:[Ljava/lang/Object;

    .line 23
    .line 24
    iget v1, p1, Lu28;->d:I

    .line 25
    .line 26
    aput-object p0, v0, v1

    .line 27
    .line 28
    iget-object p0, p1, Lu28;->c:[Ll28;

    .line 29
    .line 30
    add-int/lit8 v0, v1, 0x1

    .line 31
    .line 32
    iput v0, p1, Lu28;->d:I

    .line 33
    .line 34
    aput-object p2, p0, v1

    .line 35
    .line 36
    :cond_0
    return-object p1

    .line 37
    :pswitch_0
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;

    .line 38
    .line 39
    check-cast p2, Lcom/jcraft/jsch/Session;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :try_start_0
    const-string p0, "."

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/ChannelSftp;->statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getUsed()J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    const-wide/16 v0, 0x400

    .line 58
    .line 59
    mul-long/2addr p1, v0

    .line 60
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getSize()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    mul-long/2addr v2, v0

    .line 65
    new-instance p0, Lni1;

    .line 66
    .line 67
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p0, p1, p2}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    move-object p0, v0

    .line 81
    move-object v3, p0

    .line 82
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 83
    .line 84
    const/16 v5, 0x8

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const-string v1, "JschService"

    .line 88
    .line 89
    const-string v2, "getQuota"

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance p0, Lni1;

    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-direct {p0, p1, p1}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-object p0

    .line 102
    :pswitch_1
    check-cast p1, Lil0;

    .line 103
    .line 104
    check-cast p2, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-static {p1, p0}, Ldd1;->l(Lil0;I)Lbe8;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
