.class public final Liu8;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lgv7;

.field public final f:Lgv7;

.field public final g:Lex6;

.field public final h:Lex6;

.field public final i:Lex6;

.field public final j:Lix6;

.field public final k:Lex6;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzj;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lzj;-><init>(Liu8;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lgv7;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Liu8;->e:Lgv7;

    .line 15
    .line 16
    new-instance v0, Lpr4;

    .line 17
    .line 18
    const/16 v1, 0xe

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Liu8;->f:Lgv7;

    .line 29
    .line 30
    new-instance v0, Lex6;

    .line 31
    .line 32
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Liu8;->g:Lex6;

    .line 36
    .line 37
    new-instance v0, Lex6;

    .line 38
    .line 39
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Liu8;->h:Lex6;

    .line 43
    .line 44
    new-instance v0, Lex6;

    .line 45
    .line 46
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Liu8;->i:Lex6;

    .line 50
    .line 51
    new-instance v0, Lix6;

    .line 52
    .line 53
    invoke-direct {v0}, Lix6;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Liu8;->j:Lix6;

    .line 57
    .line 58
    new-instance v0, Lex6;

    .line 59
    .line 60
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Liu8;->k:Lex6;

    .line 64
    .line 65
    sget-object v0, Lhx0;->b:Lhx0;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Lhx0;->i(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Liu8;->j()Lus8;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lyi5;

    .line 75
    .line 76
    const/16 v2, 0xb

    .line 77
    .line 78
    invoke-direct {v1, p0, v2}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v2, Landroid/content/IntentFilter;

    .line 85
    .line 86
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/16 v3, 0x3e7

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v0, Lus8;->c:Lts8;

    .line 100
    .line 101
    invoke-static {v3}, Lorg/swiftapps/swiftbackup/common/Const;->S(Landroid/content/BroadcastReceiver;)V

    .line 102
    .line 103
    .line 104
    new-instance v3, Lts8;

    .line 105
    .line 106
    invoke-direct {v3, v1}, Lts8;-><init>(Lyi5;)V

    .line 107
    .line 108
    .line 109
    iput-object v3, v0, Lus8;->c:Lts8;

    .line 110
    .line 111
    invoke-static {v3, v2}, Lorg/swiftapps/swiftbackup/common/Const;->C(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Liu8;->k()Landroid/net/wifi/WifiManager;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    .line 124
    invoke-virtual {p0}, Liu8;->l()V

    .line 125
    .line 126
    .line 127
    :cond_0
    sget-object v0, Lzn4;->a:Lzn4;

    .line 128
    .line 129
    new-instance v0, Lhu8;

    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-direct {v0, p0, v1}, Lhu8;-><init>(Liu8;Ljv1;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 136
    .line 137
    .line 138
    new-instance v0, Luv;

    .line 139
    .line 140
    const/4 v2, 0x2

    .line 141
    invoke-direct {v0, p0, v1, v2}, Luv;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 142
    .line 143
    .line 144
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 145
    .line 146
    .line 147
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Liu8;->j()Lus8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lus8;->c:Lts8;

    .line 6
    .line 7
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->S(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, La55;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final j()Lus8;
    .locals 0

    .line 1
    iget-object p0, p0, Liu8;->f:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lus8;

    .line 8
    .line 9
    return-object p0
.end method

.method public final k()Landroid/net/wifi/WifiManager;
    .locals 0

    .line 1
    iget-object p0, p0, Liu8;->e:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public final l()V
    .locals 3

    .line 1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lk41;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, p0, v2, v1}, Lk41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onWifiBackupEvent(Lwr8;)V
    .locals 2
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lwr8;->a:Lvr8;

    .line 5
    .line 6
    sget-object v0, Lvr8;->LOCAL:Lvr8;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lvr8;->ALL:Lvr8;

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lzn4;->a:Lzn4;

    .line 16
    .line 17
    new-instance v0, Lhu8;

    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lhu8;-><init>(Liu8;Ljv1;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object v0, Lvr8;->CLOUD:Lvr8;

    .line 26
    .line 27
    if-eq p1, v0, :cond_3

    .line 28
    .line 29
    sget-object v0, Lvr8;->ALL:Lvr8;

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void

    .line 35
    :cond_3
    :goto_0
    sget-object p1, Lzn4;->a:Lzn4;

    .line 36
    .line 37
    new-instance p1, Luv;

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-direct {p1, p0, v1, v0}, Luv;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 44
    .line 45
    .line 46
    return-void
.end method
