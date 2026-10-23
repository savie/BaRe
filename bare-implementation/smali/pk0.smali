.class public final synthetic Lpk0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lqk0;


# direct methods
.method public synthetic constructor <init>(Lqk0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lpk0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lpk0;->b:Lqk0;

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
    .locals 5

    .line 1
    iget v0, p0, Lpk0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lpk0;->b:Lqk0;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Liu;->DATA:Liu;

    .line 10
    .line 11
    iget-object v2, p0, Lqk0;->h:Lji;

    .line 12
    .line 13
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lqk0;->a:Lhz;

    .line 20
    .line 21
    iget-boolean v1, v1, Lhz;->g:Z

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lqx;->getTotalDataSize(Z)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Lqk0;->n(Liu;J)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lqk0;->w:Lgv7;

    .line 50
    .line 51
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/List;

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    new-instance v3, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Lgm;

    .line 79
    .line 80
    iget-object v4, v4, Lgm;->a:Lhk;

    .line 81
    .line 82
    iget-object v4, v4, Lhk;->H:Lgv7;

    .line 83
    .line 84
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move-object v3, v1

    .line 97
    :cond_3
    sget-object v2, Lov2;->a:Lov2;

    .line 98
    .line 99
    if-nez v3, :cond_4

    .line 100
    .line 101
    move-object v3, v2

    .line 102
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lqk0;->a:Lhz;

    .line 106
    .line 107
    iget-object v3, v3, Lhz;->d:Ljava/util/List;

    .line 108
    .line 109
    invoke-static {v3}, Lji8;->r(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_8

    .line 114
    .line 115
    iget-object p0, p0, Lqk0;->x:Lgv7;

    .line 116
    .line 117
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Ljava/util/List;

    .line 122
    .line 123
    if-eqz p0, :cond_6

    .line 124
    .line 125
    new-instance v1, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 145
    .line 146
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupTag()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-eqz v3, :cond_5

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    if-nez v1, :cond_7

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    move-object v2, v1

    .line 160
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    .line 162
    .line 163
    :cond_8
    invoke-static {v0}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
