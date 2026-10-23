.class public final Lhl3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxc5;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0a005f

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lhl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    const-class v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 28
    .line 29
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "extra_folder_item"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x137c

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const v0, 0x7f0a0058

    .line 48
    .line 49
    .line 50
    if-ne p1, v0, :cond_1

    .line 51
    .line 52
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 53
    .line 54
    new-instance p1, Lhv1;

    .line 55
    .line 56
    const v0, 0x7f140160

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p0, v0}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ls35;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-direct {v1, p0, v0, p1, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 66
    .line 67
    .line 68
    const p1, 0x7f1301f2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lv75;->v(I)V

    .line 72
    .line 73
    .line 74
    const p1, 0x7f13054e

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Lv75;->n(I)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Liq1;

    .line 81
    .line 82
    const/4 v0, 0x3

    .line 83
    invoke-direct {p1, p0, v0}, Liq1;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    const p0, 0x7f1305d0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p0, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    const p0, 0x7f1303ba

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p0, v2}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ls35;->m()Lwa;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const v0, 0x7f0a0062

    .line 103
    .line 104
    .line 105
    if-ne p1, v0, :cond_2

    .line 106
    .line 107
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 108
    .line 109
    const p1, 0x7f130263

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const/16 v0, 0x8

    .line 120
    .line 121
    invoke-static {p0, v0, p1}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    const v0, 0x7f0a0082

    .line 126
    .line 127
    .line 128
    if-ne p1, v0, :cond_3

    .line 129
    .line 130
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->Z:I

    .line 131
    .line 132
    invoke-static {p0}, Lbb9;->I(Landroid/app/Activity;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 136
    return p0
.end method

.method public final c(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0f0017

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a0058

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lhl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 23
    .line 24
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final d(Landroid/view/Menu;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0058

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lhl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 14
    .line 15
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W:Z

    .line 16
    .line 17
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
