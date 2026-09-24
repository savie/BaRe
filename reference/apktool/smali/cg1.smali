.class public final Lcg1;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcg1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcg1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcg1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcg1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ldg1;

    .line 10
    .line 11
    invoke-virtual {p0}, Ldg1;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/io/File;

    .line 16
    .line 17
    invoke-static {p0}, Lnc3;->R(Ljava/io/File;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "preferences_pb"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "File extension for file: "

    .line 38
    .line 39
    const-string v2, " does not match required extension for Preferences file: preferences_pb"

    .line 40
    .line 41
    invoke-static {p0, v2, v0}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object v1

    .line 45
    :pswitch_0
    iget-object p0, p0, Lcg1;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lic2;

    .line 48
    .line 49
    iget-object p0, p0, Lic2;->a:Lx93;

    .line 50
    .line 51
    const-string v0, "There are multiple DataStores active for the same file: "

    .line 52
    .line 53
    iget-object v1, p0, Lx93;->c:Lbt3;

    .line 54
    .line 55
    invoke-interface {v1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/io/File;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget-object v2, Lx93;->e:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v2

    .line 68
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    sget-object v4, Lx93;->d:Ljava/util/LinkedHashSet;

    .line 73
    .line 74
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_1

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    monitor-exit v2

    .line 87
    new-instance v0, Laa3;

    .line 88
    .line 89
    iget-object v2, p0, Lx93;->a:La87;

    .line 90
    .line 91
    iget-object p0, p0, Lx93;->b:Lmt3;

    .line 92
    .line 93
    invoke-interface {p0, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Lsd4;

    .line 98
    .line 99
    new-instance v3, Lw93;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-direct {v3, v1, v4}, Lw93;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v1, v2, p0, v3}, Laa3;-><init>(Ljava/io/File;La87;Lsd4;Lw93;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_1
    monitor-exit v2

    .line 139
    throw p0

    .line 140
    :pswitch_1
    iget-object p0, p0, Lcg1;->b:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Los4;

    .line 143
    .line 144
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lzl8;

    .line 149
    .line 150
    instance-of v0, p0, Lw24;

    .line 151
    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    move-object v1, p0

    .line 155
    check-cast v1, Lw24;

    .line 156
    .line 157
    :cond_2
    if-eqz v1, :cond_3

    .line 158
    .line 159
    invoke-interface {v1}, Lw24;->getDefaultViewModelCreationExtras()Lej5;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    sget-object p0, Lm22;->b:Lm22;

    .line 165
    .line 166
    :goto_2
    return-object p0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
