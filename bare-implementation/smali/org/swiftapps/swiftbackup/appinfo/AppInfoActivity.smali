.class public final Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic M:I


# instance fields
.field public final K:Lgv7;

.field public L:Lji;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ldk;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, p0, v1}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lgv7;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;->K:Lgv7;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;->K:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ltq;

    .line 11
    .line 12
    iget-object v1, v1, Ltq;->a:Landroid/widget/ScrollView;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lil0;->B()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ltq;

    .line 25
    .line 26
    iget-object v0, v0, Ltq;->b:Landroid/widget/ScrollView;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x7

    .line 32
    invoke-static {v0, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 33
    .line 34
    .line 35
    const-string v0, "APP_PARCEL"

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lji;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move-object p1, v1

    .line 59
    :goto_0
    check-cast p1, Lji;

    .line 60
    .line 61
    :goto_1
    if-nez p1, :cond_2

    .line 62
    .line 63
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 64
    .line 65
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/4 v6, 0x4

    .line 70
    const/4 v7, 0x0

    .line 71
    const-string v4, "Couldn\'t get parcelable extra for App"

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;->L:Lji;

    .line 82
    .line 83
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lji;->asString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v4, "onCreate: called with app "

    .line 94
    .line 95
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Lsz8;->z(Landroid/content/Context;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    sget-object v2, Lzn4;->a:Lzn4;

    .line 113
    .line 114
    new-instance v2, Lsq;

    .line 115
    .line 116
    invoke-direct {v2, p1, p0, v0, v1}, Lsq;-><init>(Lji;Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;ILjv1;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;->L:Lji;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "APP_PARCEL"

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Lil0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "app"

    .line 18
    .line 19
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method
