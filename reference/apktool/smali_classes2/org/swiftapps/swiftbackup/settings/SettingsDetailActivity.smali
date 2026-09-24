.class public final Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic R:I


# instance fields
.field public final P:Lgv7;

.field public Q:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhs4;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->P:Lgv7;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final C()Landroidx/fragment/app/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->Q:Landroidx/fragment/app/o;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "mFragment"

    .line 7
    .line 8
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->P:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lga7;

    .line 11
    .line 12
    iget-object v1, v1, Lga7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lga7;

    .line 22
    .line 23
    iget-object v0, v0, Lga7;->b:Lw00;

    .line 24
    .line 25
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lix0;

    .line 28
    .line 29
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lnc8;->a0()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "category_title"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lnc8;->f0(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0, p1}, Lil0;->E(Landroid/os/Bundle;)Landroidx/fragment/app/o;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v0, "category"

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    new-instance p1, Lorg/swiftapps/swiftbackup/settings/a;

    .line 85
    .line 86
    invoke-direct {p1}, Lorg/swiftapps/swiftbackup/settings/a;-><init>()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_0
    new-instance p1, Lzn3;

    .line 91
    .line 92
    invoke-direct {p1}, Lzn3;-><init>()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_1
    new-instance p1, Lsj1;

    .line 97
    .line 98
    invoke-direct {p1}, Lsj1;-><init>()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_2
    new-instance p1, La3;

    .line 103
    .line 104
    invoke-direct {p1}, La3;-><init>()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :pswitch_3
    new-instance p1, Leu1;

    .line 109
    .line 110
    invoke-direct {p1}, Leu1;-><init>()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_4
    new-instance p1, Lfs4;

    .line 115
    .line 116
    invoke-direct {p1}, Lfs4;-><init>()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :pswitch_5
    new-instance p1, Lv11;

    .line 121
    .line 122
    invoke-direct {p1}, Lv11;-><init>()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_6
    new-instance p1, Lcf5;

    .line 127
    .line 128
    invoke-direct {p1}, Lcf5;-><init>()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_7
    new-instance p1, Lorg/swiftapps/swiftbackup/settings/a;

    .line 133
    .line 134
    invoke-direct {p1}, Lorg/swiftapps/swiftbackup/settings/a;-><init>()V

    .line 135
    .line 136
    .line 137
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->Q:Landroidx/fragment/app/o;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    new-instance v0, Landroidx/fragment/app/a;

    .line 147
    .line 148
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 149
    .line 150
    .line 151
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->Q:Landroidx/fragment/app/o;

    .line 152
    .line 153
    if-eqz p0, :cond_2

    .line 154
    .line 155
    const p1, 0x7f0a017a

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/o;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/fragment/app/a;->e()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_2
    const-string p0, "mFragment"

    .line 166
    .line 167
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/4 p0, 0x0

    .line 171
    throw p0

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-static {}, Lha7;->d()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lsa1;->onDestroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final s()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
