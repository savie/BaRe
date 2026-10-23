.class public final synthetic Lkd6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Ldd6;

.field public final synthetic b:Lbt3;

.field public final synthetic c:Ldd6;

.field public final synthetic d:Lxc6;


# direct methods
.method public synthetic constructor <init>(Ldd6;Lbt3;Ldd6;Lxc6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkd6;->a:Ldd6;

    .line 5
    .line 6
    iput-object p2, p0, Lkd6;->b:Lbt3;

    .line 7
    .line 8
    iput-object p3, p0, Lkd6;->c:Ldd6;

    .line 9
    .line 10
    iput-object p4, p0, Lkd6;->d:Lxc6;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lzc6;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p1, Lzc6;->t:Z

    .line 7
    .line 8
    iget-object v1, p0, Lkd6;->a:Ldd6;

    .line 9
    .line 10
    iget-object v1, v1, Lgm7;->e:Lfm7;

    .line 11
    .line 12
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object v4, v3

    .line 34
    check-cast v4, Lzc6;

    .line 35
    .line 36
    sget-object v5, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    .line 38
    iget-object v4, v4, Lzc6;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string v5, "ID_MORE_QUICK_ACTIONS"

    .line 41
    .line 42
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 53
    .line 54
    const/16 v3, 0xa

    .line 55
    .line 56
    invoke-static {v2, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lzc6;

    .line 79
    .line 80
    iget-object v5, p1, Lzc6;->a:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v6, v3, Lzc6;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    xor-int/lit8 v3, v0, 0x1

    .line 91
    .line 92
    const/16 v5, 0x7ff

    .line 93
    .line 94
    invoke-static {p1, v4, v3, v5}, Lzc6;->q(Lzc6;ZZI)Lzc6;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    sget-object v2, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 103
    .line 104
    iget p1, p1, Lzc6;->b:I

    .line 105
    .line 106
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 107
    .line 108
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    sget-object v3, Lzc6;->G:Landroid/widget/Toast;

    .line 113
    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 117
    .line 118
    .line 119
    :cond_4
    if-nez v0, :cond_5

    .line 120
    .line 121
    const v3, 0x7f13040d

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    const v3, 0x7f130582

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    sput-object v2, Lzc6;->G:Landroid/widget/Toast;

    .line 137
    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->T()V

    .line 144
    .line 145
    .line 146
    if-nez v0, :cond_7

    .line 147
    .line 148
    invoke-static {}, Lyc6;->g()Ljava/util/Set;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v0, p1}, Lsz8;->S(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    goto :goto_3

    .line 161
    :cond_7
    invoke-static {}, Lyc6;->g()Ljava/util/Set;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {v0, p1}, Lsz8;->K(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    :goto_3
    invoke-static {p1}, Lyc6;->k(Ljava/util/Set;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lha7;->d()V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lkd6;->b:Lbt3;

    .line 180
    .line 181
    iget-object v0, p0, Lkd6;->c:Ldd6;

    .line 182
    .line 183
    iget-object p0, p0, Lkd6;->d:Lxc6;

    .line 184
    .line 185
    invoke-static {p1, v0, p0, v1}, Lnd6;->k(Lbt3;Ldd6;Lxc6;Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    sget-object p0, Lbe8;->a:Lbe8;

    .line 189
    .line 190
    return-object p0
.end method
