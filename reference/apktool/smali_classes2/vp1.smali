.class public final Lvp1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Landroidx/fragment/app/u;Lxp1;Lmt3;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxp1;->Companion:Lwp1;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lwp1;->a()[Lxp1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v4, v2, :cond_1

    .line 22
    .line 23
    aget-object v5, v0, v4

    .line 24
    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v7, Lup1;->a:[I

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    aget v7, v7, v8

    .line 40
    .line 41
    packed-switch v7, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lq;->j()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    const v7, 0x7f1301a8

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_1
    const v7, 0x7f1301a5

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :pswitch_2
    const v7, 0x7f1301a6

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_3
    const v7, 0x7f1301a3

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_4
    const v7, 0x7f1301a4

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :pswitch_5
    const v7, 0x7f1301a7

    .line 69
    .line 70
    .line 71
    :goto_1
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 72
    .line 73
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v8, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    sget-object v7, Lxp1;->Companion:Lwp1;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    if-ne v5, v7, :cond_0

    .line 97
    .line 98
    const v5, 0x7f1301de

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v8, " ("

    .line 108
    .line 109
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v5, ")"

    .line 116
    .line 117
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, [Ljava/lang/CharSequence;

    .line 144
    .line 145
    invoke-static {v0, p1}, Lx50;->r0([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    new-instance v2, Lhv1;

    .line 150
    .line 151
    const v3, 0x7f140160

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, p0, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 155
    .line 156
    .line 157
    new-instance v4, Ls35;

    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    invoke-direct {v4, p0, v3, v2, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 161
    .line 162
    .line 163
    const p0, 0x7f1301a2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, p0}, Lv75;->v(I)V

    .line 167
    .line 168
    .line 169
    new-instance p0, Ltp1;

    .line 170
    .line 171
    invoke-direct {p0, p1, v0, p2}, Ltp1;-><init>(I[Lxp1;Lmt3;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v1, p1, p0}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
