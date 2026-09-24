.class public final synthetic Ler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ler;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ler;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ler;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Ler;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Ler;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Ler;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 12
    .line 13
    check-cast v1, Let7;

    .line 14
    .line 15
    sget p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 16
    .line 17
    iget-boolean p1, v1, Let7;->b:Z

    .line 18
    .line 19
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v4, "Share logs called with SwiftLogger"

    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const-string v4, " + Logcat"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->Q:Lgv7;

    .line 50
    .line 51
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lu35;

    .line 56
    .line 57
    invoke-static {v1}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 58
    .line 59
    .line 60
    const v1, 0x7f130426

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lil0;->M(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->O()Lcs6;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v1, v1, Lcs6;->e:Lex6;

    .line 71
    .line 72
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lfm7;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-object v1, v0

    .line 84
    :goto_0
    if-eqz v1, :cond_2

    .line 85
    .line 86
    sget-object v2, Lzn4;->a:Lzn4;

    .line 87
    .line 88
    new-instance v2, Lyr6;

    .line 89
    .line 90
    invoke-direct {v2, v1, p0, p1, v0}, Lyr6;-><init>(Ljava/util/List;Lorg/swiftapps/swiftbackup/slog/SLogActivity;ZLjv1;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-string p0, "Required value was null."

    .line 98
    .line 99
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    return-void

    .line 103
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 104
    .line 105
    check-cast v1, Ljava/util/ArrayList;

    .line 106
    .line 107
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 108
    .line 109
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    sget-object p1, Ltb1;->a:Ltb1;

    .line 116
    .line 117
    invoke-static {}, Lqb1;->m()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    new-instance p1, Ll30;

    .line 125
    .line 126
    invoke-direct {p1, p0, v1}, Ll30;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;Ljava/util/ArrayList;)V

    .line 127
    .line 128
    .line 129
    const v1, 0x7f1301e2

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v1, p1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_2
    return-void

    .line 136
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 137
    .line 138
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 139
    .line 140
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 141
    .line 142
    new-instance p1, Lcv;

    .line 143
    .line 144
    const/4 v2, 0x5

    .line 145
    invoke-direct {p1, v2, p0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const/4 v1, 0x1

    .line 149
    invoke-static {p0, v0, p1, v1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_2
    check-cast p0, Lgt;

    .line 154
    .line 155
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 156
    .line 157
    iget-object p1, p0, Lgt;->x:Lht;

    .line 158
    .line 159
    iget-object p1, p1, Lr35;->e:Lqt3;

    .line 160
    .line 161
    if-eqz p1, :cond_5

    .line 162
    .line 163
    invoke-virtual {p0}, Lfh6;->b()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-interface {p1, v1, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    :cond_5
    return-void

    .line 175
    :pswitch_3
    check-cast p0, Ltr;

    .line 176
    .line 177
    check-cast v1, Lji;

    .line 178
    .line 179
    iget-object p0, p0, Ltr;->F:Lqt3;

    .line 180
    .line 181
    invoke-virtual {v1}, Lji;->isFavorite()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
