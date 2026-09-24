.class public final synthetic Lio7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;


# direct methods
.method public synthetic constructor <init>(ZLorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lio7;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lio7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    sget p1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 2
    .line 3
    iget-boolean p1, p0, Lio7;->a:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lio7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 9
    .line 10
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->c0:Lgv7;

    .line 11
    .line 12
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lqo7;

    .line 17
    .line 18
    invoke-virtual {p1}, Lgm7;->l()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lso7;

    .line 27
    .line 28
    iget-object p1, p1, Lso7;->a:Lzn7;

    .line 29
    .line 30
    sget-boolean v0, Lq63;->e:Z

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-boolean v0, p1, Lzn7;->b:Z

    .line 37
    .line 38
    iget-object v3, p1, Lzn7;->f:Lgv7;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lzn7;->m()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lzn7;->g()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    new-instance v0, Lhq0;

    .line 55
    .line 56
    const/4 v4, 0x6

    .line 57
    invoke-direct {v0, v4, p1, p0}, Lhq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Ler6;->T:Lzn7;

    .line 61
    .line 62
    iput-object v0, p0, Ler6;->U:Lhq0;

    .line 63
    .line 64
    iget-boolean v0, p0, Ler6;->P:Z

    .line 65
    .line 66
    const v4, 0x7f130546

    .line 67
    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    new-instance v0, Lhv1;

    .line 72
    .line 73
    const v5, 0x7f140160

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p0, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Ls35;

    .line 80
    .line 81
    invoke-direct {v6, p0, v5, v0, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 82
    .line 83
    .line 84
    const v0, 0x7f13007e

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v0}, Lv75;->v(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/String;

    .line 95
    .line 96
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v3, v6, Lva;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v3, Lra;

    .line 107
    .line 108
    iput-object v0, v3, Lra;->f:Ljava/lang/CharSequence;

    .line 109
    .line 110
    new-instance v0, Lfp3;

    .line 111
    .line 112
    const/4 v3, 0x2

    .line 113
    invoke-direct {v0, v3, p1, p0}, Lfp3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const p1, 0x7f1303e6

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, p1, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    const p1, 0x7f1300f1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, p1, v2}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 129
    .line 130
    .line 131
    iput-boolean v1, p0, Ler6;->P:Z

    .line 132
    .line 133
    return-void

    .line 134
    :cond_1
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Ljava/lang/String;

    .line 139
    .line 140
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v1, Ll30;

    .line 152
    .line 153
    const/16 v2, 0xf

    .line 154
    .line 155
    invoke-direct {v1, v2, p0, v0}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1, p0}, Ler6;->X(Lzn7;Ler6;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_2
    sget-object v0, Lzn4;->a:Lzn4;

    .line 166
    .line 167
    new-instance v0, Las0;

    .line 168
    .line 169
    invoke-direct {v0, p1, p0, v2, v1}, Las0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 173
    .line 174
    .line 175
    return-void
.end method
