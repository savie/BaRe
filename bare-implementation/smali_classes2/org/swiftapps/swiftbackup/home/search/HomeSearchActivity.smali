.class public final Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final X:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final P:Ll90;

.field public final Q:Ll90;

.field public final R:Lgv7;

.field public final S:Lgv7;

.field public final T:Lgv7;

.field public final U:Lgv7;

.field public V:Lv54;

.field public W:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const v3, 0x3e4ccccd    # 0.2f

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Luf;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Luf;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lx54;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lvf;

    .line 20
    .line 21
    const/16 v4, 0x9

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lvf;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lwf;

    .line 27
    .line 28
    const/16 v6, 0x8

    .line 29
    .line 30
    invoke-direct {v5, p0, v6}, Lwf;-><init>(Lil0;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->P:Ll90;

    .line 37
    .line 38
    new-instance v0, Lj51;

    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    invoke-direct {v0, p0, v1}, Lj51;-><init>(Lil0;I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ll90;

    .line 45
    .line 46
    const-class v2, Lod6;

    .line 47
    .line 48
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Lf20;

    .line 53
    .line 54
    const/4 v5, 0x6

    .line 55
    invoke-direct {v3, p0, v5}, Lf20;-><init>(Lil0;I)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Lls;

    .line 59
    .line 60
    invoke-direct {v5, p0, v4}, Lls;-><init>(Lil0;I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v2, v3, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Q:Ll90;

    .line 67
    .line 68
    new-instance v0, Lck;

    .line 69
    .line 70
    const/16 v1, 0x1a

    .line 71
    .line 72
    invoke-direct {v0, p0, v1}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lgv7;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->R:Lgv7;

    .line 81
    .line 82
    new-instance v0, Lzj;

    .line 83
    .line 84
    invoke-direct {v0, v6}, Lzj;-><init>(I)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lgv7;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->S:Lgv7;

    .line 93
    .line 94
    new-instance v0, Lb7;

    .line 95
    .line 96
    const/16 v1, 0x12

    .line 97
    .line 98
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lgv7;

    .line 102
    .line 103
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->T:Lgv7;

    .line 107
    .line 108
    new-instance v0, Llf;

    .line 109
    .line 110
    const/16 v1, 0x16

    .line 111
    .line 112
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Lgv7;

    .line 116
    .line 117
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->U:Lgv7;

    .line 121
    .line 122
    new-instance v0, Lv54;

    .line 123
    .line 124
    invoke-direct {v0}, Lv54;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V:Lv54;

    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lx54;

    .line 8
    .line 9
    return-object p0
.end method

.method public final U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lz44;->J:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lz44;->G:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Y()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    const v0, 0x7f01002f

    .line 41
    .line 42
    .line 43
    const v1, 0x7f010030

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final V()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lz44;->J:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lz44;->G:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Y()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final W()Lod6;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Q:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lod6;

    .line 8
    .line 9
    return-object p0
.end method

.method public final X()Lz44;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->R:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lz44;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Y()V
    .locals 2

    .line 1
    const-string v0, "input_method"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p0, p0, Lz44;->f:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Z(Ls54;)V
    .locals 8

    .line 1
    iget-object v0, p1, Ls54;->n:Lji;

    .line 2
    .line 3
    iget-object v1, p1, Ls54;->p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Y()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Ls54;->n:Lji;

    .line 12
    .line 13
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "detail_launched_from_shortcut"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Y()V

    .line 47
    .line 48
    .line 49
    new-instance p1, Landroid/content/Intent;

    .line 50
    .line 51
    const-class v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 52
    .line 53
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "extra_folder_info"

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iget-object v0, p1, Ls54;->q:Ljava/lang/Integer;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    const/4 v3, 0x0

    .line 73
    if-eqz v0, :cond_b

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const-string v0, "highlight_cloud_card"

    .line 80
    .line 81
    const-string v2, "Feature not supported on this device"

    .line 82
    .line 83
    const-string v4, "android.hardware.telephony"

    .line 84
    .line 85
    const-string v5, "KEY_SECTION"

    .line 86
    .line 87
    packed-switch p1, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    const-string p0, "No home search shortcut action for item id: "

    .line 91
    .line 92
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_0
    sget-object p1, Lto3;->LOCAL:Lto3;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    sget-object v0, Lto3;->CLOUD:Lto3;

    .line 106
    .line 107
    if-ne p1, v0, :cond_2

    .line 108
    .line 109
    sget-object p1, Ltb1;->a:Ltb1;

    .line 110
    .line 111
    invoke-static {}, Lqb1;->m()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    move-object v3, v0

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    move-object v3, p1

    .line 120
    :cond_3
    :goto_0
    new-instance p1, Landroid/content/Intent;

    .line 121
    .line 122
    const-class v0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 123
    .line 124
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :pswitch_1
    const-class p1, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 136
    .line 137
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_3

    .line 141
    .line 142
    :pswitch_2
    const-class p1, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 143
    .line 144
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :pswitch_3
    sget-object p1, Lg00;->a:Lg00;

    .line 150
    .line 151
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_4

    .line 160
    .line 161
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 162
    .line 163
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    sget-object v0, Lzn4;->a:Lzn4;

    .line 168
    .line 169
    invoke-static {p1, v2}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :cond_4
    new-instance p1, Landroid/content/Intent;

    .line 175
    .line 176
    const-class v2, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 177
    .line 178
    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :pswitch_4
    sget-object p1, Lg00;->a:Lg00;

    .line 193
    .line 194
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_5

    .line 203
    .line 204
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 205
    .line 206
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    sget-object v0, Lzn4;->a:Lzn4;

    .line 211
    .line 212
    invoke-static {p1, v2}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_5
    new-instance p1, Landroid/content/Intent;

    .line 217
    .line 218
    const-class v2, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 219
    .line 220
    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :pswitch_5
    const-string p1, "last_used_apps_section"

    .line 235
    .line 236
    :try_start_0
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 237
    .line 238
    if-eqz v0, :cond_6

    .line 239
    .line 240
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    goto :goto_1

    .line 245
    :cond_6
    const-string p1, "prefs"

    .line 246
    .line 247
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :catch_0
    move-object p1, v3

    .line 252
    :goto_1
    if-eqz p1, :cond_7

    .line 253
    .line 254
    invoke-static {p1}, Lbt;->valueOf(Ljava/lang/String;)Lbt;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    if-nez p1, :cond_8

    .line 259
    .line 260
    :cond_7
    sget-object p1, Lbt;->LOCAL:Lbt;

    .line 261
    .line 262
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    sget-object v0, Lbt;->CLOUD:Lbt;

    .line 266
    .line 267
    if-ne p1, v0, :cond_9

    .line 268
    .line 269
    sget-object p1, Ltb1;->a:Ltb1;

    .line 270
    .line 271
    invoke-static {}, Lqb1;->m()Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-eqz p1, :cond_a

    .line 276
    .line 277
    move-object v3, v0

    .line 278
    goto :goto_2

    .line 279
    :cond_9
    move-object v3, p1

    .line 280
    :cond_a
    :goto_2
    new-instance p1, Landroid/content/Intent;

    .line 281
    .line 282
    const-class v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 283
    .line 284
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 291
    .line 292
    .line 293
    :goto_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :cond_b
    iget-object p1, p1, Ls54;->r:Lzc6;

    .line 298
    .line 299
    if-eqz p1, :cond_1c

    .line 300
    .line 301
    sget-object v0, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 302
    .line 303
    iget-object v0, p1, Lzc6;->a:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v0}, Lyc6;->i(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    const/4 v5, 0x3

    .line 310
    const-string v6, "request_code"

    .line 311
    .line 312
    const-class v7, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 313
    .line 314
    if-eqz v4, :cond_c

    .line 315
    .line 316
    sget-object v4, Ldz5;->a:Ldz5;

    .line 317
    .line 318
    invoke-static {}, Ldz5;->g()Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-nez v4, :cond_c

    .line 323
    .line 324
    new-instance p1, Landroid/content/Intent;

    .line 325
    .line 326
    invoke-direct {p1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, p1, v5}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_c
    invoke-static {v0}, Lyc6;->j(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    if-eqz v4, :cond_d

    .line 348
    .line 349
    sget-object v4, Ldz5;->a:Ldz5;

    .line 350
    .line 351
    invoke-static {}, Ldz5;->m()Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-nez v4, :cond_d

    .line 356
    .line 357
    new-instance p1, Landroid/content/Intent;

    .line 358
    .line 359
    invoke-direct {p1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .line 361
    .line 362
    const/4 v0, 0x2

    .line 363
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0, p1, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-eqz v4, :cond_e

    .line 382
    .line 383
    goto/16 :goto_5

    .line 384
    .line 385
    :cond_e
    iget-boolean v4, p1, Lzc6;->e:Z

    .line 386
    .line 387
    iget-boolean v6, p1, Lzc6;->q:Z

    .line 388
    .line 389
    invoke-static {v0}, Lyc6;->h(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v7

    .line 393
    if-eqz v7, :cond_12

    .line 394
    .line 395
    iget-boolean v0, p1, Lzc6;->f:Z

    .line 396
    .line 397
    if-eqz v0, :cond_f

    .line 398
    .line 399
    sget-object v0, Lmp6;->a:Lmp6;

    .line 400
    .line 401
    invoke-static {}, Lmp6;->f()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-nez v0, :cond_f

    .line 406
    .line 407
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->O()V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :cond_f
    if-eqz v6, :cond_10

    .line 412
    .line 413
    new-instance v0, Lkg;

    .line 414
    .line 415
    const/16 v1, 0xa

    .line 416
    .line 417
    invoke-direct {v0, v1, p0, p1}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    invoke-static {p0, v3, v0, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :cond_10
    invoke-virtual {p1}, Lzc6;->c()Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_11

    .line 429
    .line 430
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 431
    .line 432
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-nez v0, :cond_11

    .line 437
    .line 438
    sget-object p1, Lzn4;->a:Lzn4;

    .line 439
    .line 440
    new-instance p1, Lb56;

    .line 441
    .line 442
    invoke-direct {p1, p0, v1}, Lb56;-><init>(Lk28;I)V

    .line 443
    .line 444
    .line 445
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 446
    .line 447
    .line 448
    goto :goto_4

    .line 449
    :cond_11
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0, p1}, Lqo0;->g(Lzc6;)V

    .line 454
    .line 455
    .line 456
    :goto_4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :cond_12
    invoke-static {v0}, Lyc6;->j(Ljava/lang/String;)Z

    .line 461
    .line 462
    .line 463
    move-result v7

    .line 464
    if-eqz v7, :cond_15

    .line 465
    .line 466
    if-eqz v4, :cond_14

    .line 467
    .line 468
    if-eqz v6, :cond_13

    .line 469
    .line 470
    new-instance p1, Lbk;

    .line 471
    .line 472
    const/16 v0, 0x18

    .line 473
    .line 474
    invoke-direct {p1, p0, v0}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 475
    .line 476
    .line 477
    invoke-static {p0, v3, p1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :cond_13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W()Lod6;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    sget-object p1, Lzn4;->a:Lzn4;

    .line 486
    .line 487
    new-instance p1, Lmj;

    .line 488
    .line 489
    invoke-direct {p1, p0, v3, v5}, Lmj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 490
    .line 491
    .line 492
    invoke-static {v3, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :cond_14
    const-class p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 497
    .line 498
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :cond_15
    invoke-static {v0}, Lyc6;->i(Ljava/lang/String;)Z

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    if-eqz v5, :cond_18

    .line 510
    .line 511
    if-eqz v4, :cond_17

    .line 512
    .line 513
    if-eqz v6, :cond_16

    .line 514
    .line 515
    new-instance p1, Lu14;

    .line 516
    .line 517
    invoke-direct {p1, p0, v2}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 518
    .line 519
    .line 520
    invoke-static {p0, v3, p1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :cond_16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W()Lod6;

    .line 525
    .line 526
    .line 527
    move-result-object p0

    .line 528
    new-instance p1, Lyi5;

    .line 529
    .line 530
    const/4 v0, 0x5

    .line 531
    invoke-direct {p1, p0, v0}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 532
    .line 533
    .line 534
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 535
    .line 536
    .line 537
    return-void

    .line 538
    :cond_17
    const-class p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 539
    .line 540
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :cond_18
    if-eqz v0, :cond_1b

    .line 548
    .line 549
    const-string v5, "FOLDERS"

    .line 550
    .line 551
    invoke-static {v0, v5, v1}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    if-ne v5, v2, :cond_1b

    .line 556
    .line 557
    if-eqz v4, :cond_19

    .line 558
    .line 559
    if-eqz v6, :cond_19

    .line 560
    .line 561
    move v1, v2

    .line 562
    :cond_19
    new-instance v0, Lw01;

    .line 563
    .line 564
    const/16 v4, 0xc

    .line 565
    .line 566
    invoke-direct {v0, v4, p1, p0}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    if-eqz v1, :cond_1a

    .line 570
    .line 571
    new-instance p1, Ly2;

    .line 572
    .line 573
    const/16 v1, 0xf

    .line 574
    .line 575
    invoke-direct {p1, v1, p0, v0}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    invoke-static {p0, v3, p1, v2}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 579
    .line 580
    .line 581
    return-void

    .line 582
    :cond_1a
    invoke-virtual {v0}, Lw01;->invoke()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    return-void

    .line 586
    :cond_1b
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object p0

    .line 590
    const-string p1, ".performHomeSearchQuickAction not handling "

    .line 591
    .line 592
    invoke-static {p0, p1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object p0

    .line 596
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    :cond_1c
    :goto_5
    return-void

    .line 600
    nop

    .line 601
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

.method public final a0(II)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-gtz p2, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " ("

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, ")"

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final b0(Lv54;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lv54;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v1, Lv54;->h:Z

    .line 8
    .line 9
    iget-object v4, v1, Lv54;->b:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, v1, Lv54;->d:Ljava/util/List;

    .line 12
    .line 13
    iget-object v6, v1, Lv54;->c:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    const/4 v8, 0x2

    .line 26
    const/4 v9, 0x0

    .line 27
    if-nez v7, :cond_0

    .line 28
    .line 29
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-le v7, v8, :cond_0

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v7, v9

    .line 38
    :goto_0
    if-nez v7, :cond_1

    .line 39
    .line 40
    iput-boolean v9, v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W:Z

    .line 41
    .line 42
    :cond_1
    iget-boolean v11, v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W:Z

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    if-nez v12, :cond_3

    .line 52
    .line 53
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    if-le v12, v8, :cond_3

    .line 58
    .line 59
    if-eqz v11, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {v6, v8}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    move-object v13, v11

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    :goto_1
    move-object v13, v6

    .line 69
    :goto_2
    new-instance v11, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    :cond_4
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    if-eqz v14, :cond_5

    .line 83
    .line 84
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    move-object v15, v14

    .line 89
    check-cast v15, Ls54;

    .line 90
    .line 91
    iget-object v15, v15, Ls54;->b:Lu54;

    .line 92
    .line 93
    const/16 v16, 0x1

    .line 94
    .line 95
    sget-object v10, Lu54;->APPS:Lu54;

    .line 96
    .line 97
    if-ne v15, v10, :cond_4

    .line 98
    .line 99
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    const/16 v16, 0x1

    .line 104
    .line 105
    new-instance v10, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_7

    .line 119
    .line 120
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    move-object v14, v12

    .line 125
    check-cast v14, Ls54;

    .line 126
    .line 127
    iget-object v14, v14, Ls54;->b:Lu54;

    .line 128
    .line 129
    sget-object v15, Lu54;->FOLDERS:Lu54;

    .line 130
    .line 131
    if-ne v14, v15, :cond_6

    .line 132
    .line 133
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_7
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    xor-int/lit8 v12, v5, 0x1

    .line 142
    .line 143
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    xor-int/lit8 v14, v6, 0x1

    .line 148
    .line 149
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    xor-int/lit8 v8, v15, 0x1

    .line 154
    .line 155
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v18

    .line 159
    xor-int/lit8 v9, v18, 0x1

    .line 160
    .line 161
    if-eqz v15, :cond_9

    .line 162
    .line 163
    if-eqz v3, :cond_8

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_8
    move-object/from16 v19, v2

    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    :goto_5
    move/from16 v20, v5

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_9
    :goto_6
    move-object/from16 v19, v2

    .line 173
    .line 174
    move/from16 v2, v16

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :goto_7
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    iget-object v5, v5, Lz44;->H:Landroid/widget/LinearLayout;

    .line 182
    .line 183
    move/from16 v21, v6

    .line 184
    .line 185
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    iget-object v6, v6, Lz44;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 190
    .line 191
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    const/4 v6, -0x1

    .line 196
    if-ne v5, v6, :cond_a

    .line 197
    .line 198
    goto/16 :goto_8

    .line 199
    .line 200
    :cond_a
    if-nez v15, :cond_d

    .line 201
    .line 202
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    iget-object v15, v15, Lz44;->H:Landroid/widget/LinearLayout;

    .line 207
    .line 208
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    iget-object v6, v6, Lz44;->k:Lcom/google/android/material/card/MaterialCardView;

    .line 213
    .line 214
    invoke-virtual {v15, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    const/4 v15, -0x1

    .line 219
    if-eq v6, v15, :cond_f

    .line 220
    .line 221
    add-int/lit8 v6, v6, -0x1

    .line 222
    .line 223
    if-ne v5, v6, :cond_b

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_b
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    iget-object v5, v5, Lz44;->H:Landroid/widget/LinearLayout;

    .line 231
    .line 232
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    iget-object v6, v6, Lz44;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 237
    .line 238
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    iget-object v5, v5, Lz44;->H:Landroid/widget/LinearLayout;

    .line 246
    .line 247
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    iget-object v6, v6, Lz44;->k:Lcom/google/android/material/card/MaterialCardView;

    .line 252
    .line 253
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-ltz v5, :cond_c

    .line 258
    .line 259
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    iget-object v6, v6, Lz44;->H:Landroid/widget/LinearLayout;

    .line 264
    .line 265
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 266
    .line 267
    .line 268
    move-result-object v15

    .line 269
    iget-object v15, v15, Lz44;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 270
    .line 271
    invoke-virtual {v6, v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 272
    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_c
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    iget-object v5, v5, Lz44;->H:Landroid/widget/LinearLayout;

    .line 280
    .line 281
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    iget-object v6, v6, Lz44;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 286
    .line 287
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_d
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    iget-object v6, v6, Lz44;->H:Landroid/widget/LinearLayout;

    .line 296
    .line 297
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    add-int/lit8 v6, v6, -0x1

    .line 302
    .line 303
    if-ne v5, v6, :cond_e

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_e
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    iget-object v5, v5, Lz44;->H:Landroid/widget/LinearLayout;

    .line 311
    .line 312
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    iget-object v6, v6, Lz44;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 317
    .line 318
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    iget-object v5, v5, Lz44;->H:Landroid/widget/LinearLayout;

    .line 326
    .line 327
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    iget-object v6, v6, Lz44;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 332
    .line 333
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    :cond_f
    :goto_8
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    iget-object v5, v5, Lz44;->I:Landroidx/core/widget/NestedScrollView;

    .line 341
    .line 342
    if-eqz v20, :cond_11

    .line 343
    .line 344
    if-eqz v21, :cond_11

    .line 345
    .line 346
    if-nez v2, :cond_11

    .line 347
    .line 348
    if-nez v18, :cond_10

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_10
    const/4 v6, 0x0

    .line 352
    goto :goto_a

    .line 353
    :cond_11
    :goto_9
    move/from16 v6, v16

    .line 354
    .line 355
    :goto_a
    invoke-static {v5, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    iget-object v5, v5, Lz44;->O:Landroid/widget/TextView;

    .line 363
    .line 364
    invoke-static {v5, v12}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    iget-object v5, v5, Lz44;->K:Lcom/google/android/material/card/MaterialCardView;

    .line 372
    .line 373
    invoke-static {v5, v12}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    iget-object v5, v5, Lz44;->N:Landroid/widget/TextView;

    .line 381
    .line 382
    const v6, 0x7f13043b

    .line 383
    .line 384
    .line 385
    iget v12, v1, Lv54;->e:I

    .line 386
    .line 387
    invoke-virtual {v0, v6, v12}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->a0(II)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    iget-object v5, v5, Lz44;->N:Landroid/widget/TextView;

    .line 399
    .line 400
    invoke-static {v5, v14}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    iget-object v5, v5, Lz44;->p:Lcom/google/android/material/card/MaterialCardView;

    .line 408
    .line 409
    invoke-static {v5, v14}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    iget-object v5, v5, Lz44;->t:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 417
    .line 418
    invoke-static {v5, v14}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    iget-object v5, v5, Lz44;->e:Lcom/google/android/material/button/MaterialButton;

    .line 426
    .line 427
    invoke-static {v5, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 428
    .line 429
    .line 430
    iget-boolean v6, v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W:Z

    .line 431
    .line 432
    if-eqz v6, :cond_12

    .line 433
    .line 434
    const v6, 0x7f1304ff

    .line 435
    .line 436
    .line 437
    goto :goto_b

    .line 438
    :cond_12
    const v6, 0x7f1304d4

    .line 439
    .line 440
    .line 441
    :goto_b
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    iget-object v5, v5, Lz44;->L:Landroid/widget/TextView;

    .line 449
    .line 450
    const v6, 0x7f130079

    .line 451
    .line 452
    .line 453
    iget v7, v1, Lv54;->f:I

    .line 454
    .line 455
    invoke-virtual {v0, v6, v7}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->a0(II)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    iget-object v5, v5, Lz44;->L:Landroid/widget/TextView;

    .line 467
    .line 468
    invoke-static {v5, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    iget-object v5, v5, Lz44;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 476
    .line 477
    invoke-static {v5, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    iget-object v5, v5, Lz44;->q:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 485
    .line 486
    invoke-static {v5, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    iget-object v5, v5, Lz44;->d:Landroid/widget/TextView;

    .line 494
    .line 495
    invoke-static {v5, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 496
    .line 497
    .line 498
    iget-boolean v3, v1, Lv54;->i:Z

    .line 499
    .line 500
    if-eqz v3, :cond_13

    .line 501
    .line 502
    const v3, 0x7f1302a4

    .line 503
    .line 504
    .line 505
    goto :goto_c

    .line 506
    :cond_13
    const v3, 0x7f130502

    .line 507
    .line 508
    .line 509
    :goto_c
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    iget-object v3, v3, Lz44;->M:Landroid/widget/TextView;

    .line 524
    .line 525
    const v5, 0x7f13027f

    .line 526
    .line 527
    .line 528
    iget v1, v1, Lv54;->g:I

    .line 529
    .line 530
    invoke-virtual {v0, v5, v1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->a0(II)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    iget-object v1, v1, Lz44;->M:Landroid/widget/TextView;

    .line 542
    .line 543
    invoke-static {v1, v9}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    iget-object v1, v1, Lz44;->k:Lcom/google/android/material/card/MaterialCardView;

    .line 551
    .line 552
    invoke-static {v1, v9}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    iget-object v1, v1, Lz44;->n:Lzx2;

    .line 560
    .line 561
    iget-object v1, v1, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 562
    .line 563
    if-eqz v20, :cond_14

    .line 564
    .line 565
    if-eqz v21, :cond_14

    .line 566
    .line 567
    if-nez v2, :cond_14

    .line 568
    .line 569
    if-eqz v18, :cond_14

    .line 570
    .line 571
    invoke-static/range {v19 .. v19}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-nez v2, :cond_14

    .line 576
    .line 577
    move/from16 v2, v16

    .line 578
    .line 579
    goto :goto_d

    .line 580
    :cond_14
    const/4 v2, 0x0

    .line 581
    :goto_d
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 582
    .line 583
    .line 584
    const-string v1, "compact_storage_info"

    .line 585
    .line 586
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 587
    .line 588
    if-eqz v2, :cond_15

    .line 589
    .line 590
    const/4 v3, 0x0

    .line 591
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    move v3, v1

    .line 596
    goto :goto_e

    .line 597
    :cond_15
    const-string v1, "prefs"

    .line 598
    .line 599
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    const/4 v1, 0x0

    .line 603
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :catch_0
    const/4 v3, 0x0

    .line 605
    :goto_e
    const/16 v1, 0x8

    .line 606
    .line 607
    if-eqz v3, :cond_16

    .line 608
    .line 609
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    iget-object v2, v2, Lz44;->y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 614
    .line 615
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    iget-object v1, v1, Lz44;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 623
    .line 624
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    xor-int/lit8 v2, v2, 0x1

    .line 629
    .line 630
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    iget-object v1, v1, Lz44;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 638
    .line 639
    goto :goto_f

    .line 640
    :cond_16
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    iget-object v2, v2, Lz44;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 645
    .line 646
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    iget-object v1, v1, Lz44;->y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 654
    .line 655
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    xor-int/lit8 v2, v2, 0x1

    .line 660
    .line 661
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    iget-object v1, v1, Lz44;->y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 669
    .line 670
    :goto_f
    new-instance v2, Ljava/util/ArrayList;

    .line 671
    .line 672
    const/16 v5, 0xa

    .line 673
    .line 674
    invoke-static {v4, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 675
    .line 676
    .line 677
    move-result v5

    .line 678
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 679
    .line 680
    .line 681
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 686
    .line 687
    .line 688
    move-result v6

    .line 689
    if-eqz v6, :cond_18

    .line 690
    .line 691
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v6

    .line 695
    check-cast v6, Ls54;

    .line 696
    .line 697
    iget-object v7, v6, Ls54;->q:Ljava/lang/Integer;

    .line 698
    .line 699
    if-eqz v7, :cond_17

    .line 700
    .line 701
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 702
    .line 703
    .line 704
    move-result v7

    .line 705
    goto :goto_11

    .line 706
    :cond_17
    iget v7, v6, Ls54;->x:I

    .line 707
    .line 708
    :goto_11
    iget v8, v6, Ls54;->e:I

    .line 709
    .line 710
    iget v9, v6, Ls54;->f:I

    .line 711
    .line 712
    iget-object v6, v6, Ls54;->c:Ljava/lang/String;

    .line 713
    .line 714
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    .line 716
    .line 717
    new-instance v12, Ld71;

    .line 718
    .line 719
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 720
    .line 721
    .line 722
    iput v7, v12, Ld71;->a:I

    .line 723
    .line 724
    iput-object v6, v12, Ld71;->b:Ljava/lang/String;

    .line 725
    .line 726
    iput v8, v12, Ld71;->c:I

    .line 727
    .line 728
    iput v9, v12, Ld71;->d:I

    .line 729
    .line 730
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    goto :goto_10

    .line 734
    :cond_18
    new-instance v5, Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 737
    .line 738
    .line 739
    new-instance v2, Lba2;

    .line 740
    .line 741
    invoke-direct {v2, v5, v3}, Lba2;-><init>(Ljava/util/List;Z)V

    .line 742
    .line 743
    .line 744
    new-instance v3, Lqs;

    .line 745
    .line 746
    const/4 v5, 0x2

    .line 747
    invoke-direct {v3, v5, v4, v0}, Lqs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    iput-object v3, v2, Lba2;->f:Lqt3;

    .line 751
    .line 752
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 753
    .line 754
    .line 755
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->U:Lgv7;

    .line 756
    .line 757
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    check-cast v1, Lr54;

    .line 762
    .line 763
    new-instance v12, Lfm7;

    .line 764
    .line 765
    const/16 v16, 0x0

    .line 766
    .line 767
    const/16 v17, 0x1e

    .line 768
    .line 769
    const/4 v14, 0x0

    .line 770
    const/4 v15, 0x0

    .line 771
    invoke-direct/range {v12 .. v17}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 772
    .line 773
    .line 774
    const/4 v3, 0x0

    .line 775
    invoke-virtual {v1, v12, v3}, Lr54;->w(Lfm7;Z)V

    .line 776
    .line 777
    .line 778
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->S:Lgv7;

    .line 779
    .line 780
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    check-cast v1, Lh54;

    .line 785
    .line 786
    new-instance v14, Lfm7;

    .line 787
    .line 788
    const/16 v18, 0x0

    .line 789
    .line 790
    const/16 v19, 0x1e

    .line 791
    .line 792
    const/16 v17, 0x0

    .line 793
    .line 794
    move-object v15, v11

    .line 795
    invoke-direct/range {v14 .. v19}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v1, v14, v3}, Lgm7;->w(Lfm7;Z)V

    .line 799
    .line 800
    .line 801
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->T:Lgv7;

    .line 802
    .line 803
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    check-cast v0, Lh54;

    .line 808
    .line 809
    new-instance v17, Lfm7;

    .line 810
    .line 811
    const/16 v21, 0x0

    .line 812
    .line 813
    const/16 v22, 0x1e

    .line 814
    .line 815
    const/16 v19, 0x0

    .line 816
    .line 817
    const/16 v20, 0x0

    .line 818
    .line 819
    move-object/from16 v18, v10

    .line 820
    .line 821
    invoke-direct/range {v17 .. v22}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 822
    .line 823
    .line 824
    move-object/from16 v1, v17

    .line 825
    .line 826
    invoke-virtual {v0, v1, v3}, Lgm7;->w(Lfm7;Z)V

    .line 827
    .line 828
    .line 829
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lz44;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lil0;->K(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Lz44;->I:Landroidx/core/widget/NestedScrollView;

    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W()Lod6;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p1, Lod6;->i:Lqo0;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lz44;->q:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 45
    .line 46
    sget v0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->c1:I

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->S:Lgv7;

    .line 57
    .line 58
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lh54;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p1, p1, Lz44;->r:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->T:Lgv7;

    .line 80
    .line 81
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lh54;

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p1, p1, Lz44;->y:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 95
    .line 96
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 97
    .line 98
    invoke-direct {v4, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    const/4 v5, 0x2

    .line 102
    invoke-virtual {v4, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i1(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Lz44;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 118
    .line 119
    invoke-direct {v4, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i1(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object p1, p1, Lz44;->t:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->U:Lgv7;

    .line 144
    .line 145
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    check-cast v5, Lr54;

    .line 150
    .line 151
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object p1, p1, Lz44;->n:Lzx2;

    .line 159
    .line 160
    iget-object v5, p1, Lzx2;->d:Landroid/widget/ImageView;

    .line 161
    .line 162
    const v6, 0x7f0801b2

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    .line 167
    .line 168
    iget-object v5, p1, Lzx2;->e:Landroid/widget/TextView;

    .line 169
    .line 170
    const v6, 0x7f1303c9

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p1, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 177
    .line 178
    const/16 v5, 0x8

    .line 179
    .line 180
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lh54;

    .line 188
    .line 189
    new-instance v2, Lrs;

    .line 190
    .line 191
    const/4 v6, 0x5

    .line 192
    invoke-direct {v2, p0, v6}, Lrs;-><init>(Ljava/lang/Object;I)V

    .line 193
    .line 194
    .line 195
    iput-object v2, p1, Lgm7;->j:Lqt3;

    .line 196
    .line 197
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lh54;

    .line 202
    .line 203
    new-instance v2, Lss;

    .line 204
    .line 205
    invoke-direct {v2, p0, v0}, Lss;-><init>(Ljava/lang/Object;I)V

    .line 206
    .line 207
    .line 208
    iput-object v2, p1, Lgm7;->j:Lqt3;

    .line 209
    .line 210
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lr54;

    .line 215
    .line 216
    new-instance v2, Lvo3;

    .line 217
    .line 218
    invoke-direct {v2, p0, v0}, Lvo3;-><init>(Lil0;I)V

    .line 219
    .line 220
    .line 221
    iput-object v2, p1, Lgm7;->j:Lqt3;

    .line 222
    .line 223
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object p1, p1, Lz44;->J:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 228
    .line 229
    new-instance v2, Lgs;

    .line 230
    .line 231
    const/4 v3, 0x6

    .line 232
    invoke-direct {v2, p0, v3}, Lgs;-><init>(Ljava/lang/Object;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iget-object p1, p1, Lz44;->c:Landroid/widget/ImageButton;

    .line 243
    .line 244
    new-instance v2, Ldj;

    .line 245
    .line 246
    invoke-direct {v2, p0, v5}, Ldj;-><init>(Ljava/lang/Object;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget-object p1, p1, Lz44;->e:Lcom/google/android/material/button/MaterialButton;

    .line 257
    .line 258
    new-instance v2, Lhs;

    .line 259
    .line 260
    invoke-direct {v2, p0, v5}, Lhs;-><init>(Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget-object p1, p1, Lz44;->d:Landroid/widget/TextView;

    .line 271
    .line 272
    new-instance v2, Lmf;

    .line 273
    .line 274
    invoke-direct {v2, p0, v5}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iget-object p1, p1, Lz44;->f:Landroid/widget/EditText;

    .line 285
    .line 286
    new-instance v2, Lo52;

    .line 287
    .line 288
    invoke-direct {v2, p0, v0}, Lo52;-><init>(Lsa1;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->P:Ll90;

    .line 295
    .line 296
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Lx54;

    .line 301
    .line 302
    iget-object v2, v2, Lx54;->e:Lex6;

    .line 303
    .line 304
    new-instance v3, Ld7;

    .line 305
    .line 306
    const/16 v4, 0xe

    .line 307
    .line 308
    invoke-direct {v3, p0, v4}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 309
    .line 310
    .line 311
    new-instance v5, Lj01;

    .line 312
    .line 313
    invoke-direct {v5, v0, v3}, Lj01;-><init>(ILmt3;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, p0, v5}, Lzy4;->e(Lfu4;Les5;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W()Lod6;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    iget-object v2, v2, Lod6;->e:Lgv7;

    .line 324
    .line 325
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Lix6;

    .line 330
    .line 331
    new-instance v3, Le7;

    .line 332
    .line 333
    const/16 v5, 0x10

    .line 334
    .line 335
    invoke-direct {v3, p0, v5}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 336
    .line 337
    .line 338
    new-instance v7, Lj01;

    .line 339
    .line 340
    invoke-direct {v7, v0, v3}, Lj01;-><init>(ILmt3;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, p0, v7}, Lix6;->e(Lfu4;Les5;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W()Lod6;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v2}, Lod6;->k()Lix6;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    new-instance v3, Lk3;

    .line 355
    .line 356
    invoke-direct {v3, p0, v4}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 357
    .line 358
    .line 359
    new-instance v4, Lj01;

    .line 360
    .line 361
    invoke-direct {v4, v0, v3}, Lj01;-><init>(ILmt3;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, p0, v4}, Lix6;->e(Lfu4;Les5;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W()Lod6;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    iget-object v2, v2, Lod6;->g:Lgv7;

    .line 372
    .line 373
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    check-cast v2, Lix6;

    .line 378
    .line 379
    new-instance v3, Lhj;

    .line 380
    .line 381
    invoke-direct {v3, p0, v5}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 382
    .line 383
    .line 384
    new-instance v4, Lj01;

    .line 385
    .line 386
    invoke-direct {v4, v0, v3}, Lj01;-><init>(ILmt3;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, p0, v4}, Lix6;->e(Lfu4;Les5;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W()Lod6;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v2}, Lod6;->j()Lix6;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    new-instance v3, Lox;

    .line 401
    .line 402
    const/16 v4, 0x11

    .line 403
    .line 404
    invoke-direct {v3, p0, v4}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 405
    .line 406
    .line 407
    new-instance v4, Lj01;

    .line 408
    .line 409
    invoke-direct {v4, v0, v3}, Lj01;-><init>(ILmt3;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, p0, v4}, Lix6;->e(Lfu4;Les5;)V

    .line 413
    .line 414
    .line 415
    new-instance v2, Lkn3;

    .line 416
    .line 417
    invoke-direct {v2, p0, v6}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, v0, v2}, Lil0;->L(ZLbt3;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    check-cast p1, Lx54;

    .line 428
    .line 429
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    iget-object v0, v0, Lz44;->f:Landroid/widget/EditText;

    .line 434
    .line 435
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    if-eqz v0, :cond_1

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    goto :goto_0

    .line 446
    :cond_1
    move-object v0, v1

    .line 447
    :goto_0
    invoke-virtual {p1, v0}, Lx54;->l(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    const-string v0, "source_bounds"

    .line 455
    .line 456
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    if-eqz p1, :cond_2

    .line 461
    .line 462
    array-length v0, p1

    .line 463
    const/4 v2, 0x4

    .line 464
    if-ne v0, v2, :cond_2

    .line 465
    .line 466
    move-object v1, p1

    .line 467
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    iget-object p1, p1, Lz44;->G:Landroid/widget/FrameLayout;

    .line 472
    .line 473
    const/high16 v0, 0x3f800000    # 1.0f

    .line 474
    .line 475
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    iget-object p1, p1, Lz44;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 483
    .line 484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    new-instance v0, Ls60;

    .line 488
    .line 489
    invoke-direct {v0, p1, v1, p0}, Ls60;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;[ILorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;)V

    .line 490
    .line 491
    .line 492
    invoke-static {p1, v0}, Lyt5;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 493
    .line 494
    .line 495
    return-void
.end method
