.class public final Lmr1;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public final f:Lex6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmr1;->f:Lex6;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lmr1;->f:Lex6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 11
    .line 12
    return-object p0
.end method

.method public final k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V
    .locals 21

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->isLegacyArchiveBackupEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    move-object/from16 v1, p0

    .line 9
    .line 10
    iget-object v1, v1, Lmr1;->f:Lex6;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->b()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 20
    .line 21
    .line 22
    move-result-object v11

    .line 23
    const v19, 0xfe7f

    .line 24
    .line 25
    .line 26
    const/16 v20, 0x0

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x0

    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v13, 0x0

    .line 38
    const/4 v14, 0x0

    .line 39
    const/4 v15, 0x0

    .line 40
    const/16 v16, 0x0

    .line 41
    .line 42
    const/16 v17, 0x0

    .line 43
    .line 44
    const/16 v18, 0x0

    .line 45
    .line 46
    move-object/from16 v2, p1

    .line 47
    .line 48
    invoke-static/range {v2 .. v20}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    move-object/from16 v2, p1

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
