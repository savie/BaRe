.class public final synthetic Lii4;
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
    iput p1, p0, Lii4;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lii4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lii4;->c:Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget v0, p0, Lii4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lii4;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lii4;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lqo7;

    .line 11
    .line 12
    check-cast v1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 13
    .line 14
    check-cast p1, Lso7;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget p2, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lso7;->getItemId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lgm7;->t(Ljava/util/Set;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Z()V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lbe8;->a:Lbe8;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_0
    check-cast p0, Lli4;

    .line 44
    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;

    .line 48
    .line 49
    check-cast p2, Lcom/jcraft/jsch/Session;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p0, v1}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;)Ljava/util/Vector;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lli4;->F(Ljava/util/Vector;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    .line 70
    .line 71
    const/16 v0, 0xa

    .line 72
    .line 73
    invoke-static {p1, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    .line 95
    .line 96
    invoke-static {v0, p0}, Log1;->f(Lcom/jcraft/jsch/ChannelSftp$LsEntry;Ljava/lang/String;)Lpg1;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    new-instance p0, Lgh1;

    .line 105
    .line 106
    invoke-direct {p0, p2}, Lgh1;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    move-object p0, v0

    .line 112
    invoke-static {p0}, Lli4;->z(Ljava/lang/Exception;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_1

    .line 117
    .line 118
    new-instance p0, Lgh1;

    .line 119
    .line 120
    sget-object p1, Lov2;->a:Lov2;

    .line 121
    .line 122
    invoke-direct {p0, p1}, Lgh1;-><init>(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    const-string p1, "JschService"

    .line 127
    .line 128
    const-string p2, "listMetadataDirectory"

    .line 129
    .line 130
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .line 132
    .line 133
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 134
    .line 135
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string p1, "listMetadataDirectory: "

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const/4 v4, 0x4

    .line 146
    const/4 v5, 0x0

    .line 147
    const-string v1, "JschService"

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    sget-object p0, Lfh1;->a:Lfh1;

    .line 154
    .line 155
    :goto_1
    return-object p0

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
