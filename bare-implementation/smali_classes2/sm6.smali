.class public final synthetic Lsm6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsm6;->a:Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 21

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    sget v1, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->R:I

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p0

    .line 9
    .line 10
    iget-object v1, v1, Lsm6;->a:Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;

    .line 11
    .line 12
    iget-object v2, v1, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->Q:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v2, "restore_special_permissions"

    .line 22
    .line 23
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string v0, "editor"

    .line 32
    .line 33
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v3

    .line 37
    :cond_1
    sget-object v4, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->Companion:Ldr1;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x1

    .line 47
    if-eq v0, v5, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v4, v3

    .line 51
    :goto_0
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :cond_3
    move-object v13, v3

    .line 62
    const v19, 0xfbff

    .line 63
    .line 64
    .line 65
    const/16 v20, 0x0

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    const/4 v15, 0x0

    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    const/16 v18, 0x0

    .line 84
    .line 85
    invoke-static/range {v2 .. v20}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, v1, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->Q:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 90
    .line 91
    new-instance v2, Landroid/content/Intent;

    .line 92
    .line 93
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "extra_config_settings"

    .line 97
    .line 98
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const/4 v2, -0x1

    .line 103
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
