.class public final synthetic Lp55;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

.field public final synthetic b:Lu55;

.field public final synthetic c:Llh6;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;Lu55;Llh6;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp55;->a:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lp55;->b:Lu55;

    .line 7
    .line 8
    iput-object p3, p0, Lp55;->c:Llh6;

    .line 9
    .line 10
    iput p4, p0, Lp55;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lp55;->a:Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lil0;->H()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lp55;->b:Lu55;

    .line 7
    .line 8
    iget v1, v1, Lu55;->a:I

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    sget-object v3, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    if-eq v1, v2, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, ": Delete backups (id=0)"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v3

    .line 35
    :cond_1
    iget-object v1, p0, Lp55;->c:Llh6;

    .line 36
    .line 37
    iget-object v2, v1, Llh6;->a:Ljava/lang/Object;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->N:Lgv7;

    .line 42
    .line 43
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lt55;

    .line 48
    .line 49
    iget-object v1, v1, Llh6;->a:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljl0;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v2, v0, Lgm7;->e:Lfm7;

    .line 60
    .line 61
    iget-object v2, v2, Lfm7;->a:Ljava/util/List;

    .line 62
    .line 63
    invoke-static {v2}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget p0, p0, Lp55;->d:I

    .line 68
    .line 69
    invoke-virtual {v2, p0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object p0, v0, Lgm7;->e:Lfm7;

    .line 73
    .line 74
    invoke-static {v2}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x0

    .line 79
    const/16 v4, 0x1e

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    invoke-static {p0, v1, v2, v5, v4}, Lfm7;->a(Lfm7;Ljava/util/List;Ljava/util/Set;ZI)Lfm7;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0, v5}, Lgm7;->w(Lfm7;Z)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-object v3

    .line 90
    :cond_3
    :goto_0
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 91
    .line 92
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    const/4 v10, 0x4

    .line 97
    const/4 v11, 0x0

    .line 98
    const-string v8, "clearData called"

    .line 99
    .line 100
    const/4 v9, 0x0

    .line 101
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const-string p0, "activity"

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    check-cast p0, Landroid/app/ActivityManager;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    .line 116
    .line 117
    .line 118
    return-object v3
.end method
