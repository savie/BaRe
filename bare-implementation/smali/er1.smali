.class public final synthetic Ler1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lh9;
.implements Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
.implements Lig2;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lkl5;
.implements Lhm6;
.implements Lny6;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ler1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Ler1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 4
    .line 5
    const-class v0, Lqf8;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lqf8;

    .line 12
    .line 13
    invoke-virtual {p0}, Lqf8;->d()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lqf8;->d()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Laj6;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    const-string p0, "API uploaded file but did not return remote file data."

    .line 36
    .line 37
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public c(Lga6;)V
    .locals 3

    .line 1
    iget-object p0, p0, Ler1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcz1;

    .line 4
    .line 5
    const-string v0, "FirebaseCrashlytics"

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Crashlytics native component now available."

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcz1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    invoke-interface {p1}, Lga6;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Laz1;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ler1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Ler1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 6
    .line 7
    move-object/from16 v1, p1

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    sget v2, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->V:I

    .line 12
    .line 13
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const/4 v8, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/16 v6, 0x3f

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v2, v8

    .line 32
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, "registerForActivityResult="

    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    if-eqz v7, :cond_2

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    const/16 v6, 0x3f

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move-object v2, v8

    .line 77
    :goto_1
    invoke-virtual {v7, v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->copy(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    :cond_2
    new-instance v7, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    const/16 v6, 0x3f

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    const/4 v3, 0x0

    .line 92
    const/4 v4, 0x0

    .line 93
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move-object v1, v8

    .line 99
    :goto_2
    invoke-direct {v7, v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move-object v2, v7

    .line 103
    :cond_4
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    const/4 v1, 0x0

    .line 112
    const/4 v3, 0x1

    .line 113
    invoke-static {v2, v1, v3, v8}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->isValid$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;ZILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    move-object v12, v2

    .line 120
    goto :goto_3

    .line 121
    :cond_5
    move-object v12, v8

    .line 122
    :goto_3
    const v26, 0xfffb

    .line 123
    .line 124
    .line 125
    const/16 v27, 0x0

    .line 126
    .line 127
    const/4 v10, 0x0

    .line 128
    const/4 v11, 0x0

    .line 129
    const/4 v13, 0x0

    .line 130
    const/4 v14, 0x0

    .line 131
    const/4 v15, 0x0

    .line 132
    const/16 v16, 0x0

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    const/16 v18, 0x0

    .line 137
    .line 138
    const/16 v19, 0x0

    .line 139
    .line 140
    const/16 v20, 0x0

    .line 141
    .line 142
    const/16 v21, 0x0

    .line 143
    .line 144
    const/16 v22, 0x0

    .line 145
    .line 146
    const/16 v23, 0x0

    .line 147
    .line 148
    const/16 v24, 0x0

    .line 149
    .line 150
    const/16 v25, 0x0

    .line 151
    .line 152
    invoke-static/range {v9 .. v27}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public isCancellationRequested()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ler1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lop3;

    .line 4
    .line 5
    iget-object p0, p0, Lop3;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lbt3;

    .line 8
    .line 9
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ler1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lx12;

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$s6bjXkRcKG2n8yTP9Si_H23lVVA(Lx12;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
