.class public final Lvd5$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvd5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final fromFileNameLegacy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;
    .locals 13

    .line 1
    const-string p0, "-"

    .line 2
    .line 3
    const-string v0, "_"

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1, v0}, Lai8;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, ".msg"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lnq7;->r0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p1, v0}, Lai8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-static {v1, p0}, Lai8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    invoke-static {v1, p0}, Lai8;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    new-instance v2, Lvd5;

    .line 40
    .line 41
    const/16 v11, 0x10

    .line 42
    .line 43
    const/4 v12, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v3, p1

    .line 46
    move-object v9, p2

    .line 47
    move-object/from16 v10, p3

    .line 48
    .line 49
    invoke-direct/range {v2 .. v12}, Lvd5;-><init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p2, "Error creating instance for legacy file="

    .line 62
    .line 63
    const-string v1, ", Error="

    .line 64
    .line 65
    invoke-static {p2, p1, v1, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v4, 0x4

    .line 70
    const/4 v5, 0x0

    .line 71
    const-string v1, "SmsBackupItem"

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method private final fromFileNameV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;
    .locals 10

    .line 1
    :try_start_0
    const-string p0, "."

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x6

    .line 8
    invoke-static {p1, p0, v0}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v0, 0x3

    .line 35
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v0, 0x4

    .line 46
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    move-object v7, p0

    .line 51
    check-cast v7, Ljava/lang/String;

    .line 52
    .line 53
    new-instance v1, Lvd5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .line 55
    move-object v2, p1

    .line 56
    move-object v8, p2

    .line 57
    move-object v9, p3

    .line 58
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lvd5;-><init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :goto_0
    move-object p0, v0

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    move-object v2, p1

    .line 67
    goto :goto_0

    .line 68
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "Error creating instance for file="

    .line 75
    .line 76
    const-string p2, ", Error="

    .line 77
    .line 78
    invoke-static {p1, v2, p2, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const/4 v4, 0x4

    .line 83
    const/4 v5, 0x0

    .line 84
    const-string v1, "SmsBackupItem"

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0
.end method

.method private final fromFileNameV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;
    .locals 10

    .line 1
    :try_start_0
    const-string p0, "."

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x6

    .line 8
    invoke-static {p1, p0, v0}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v0, 0x3

    .line 35
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v0, 0x4

    .line 46
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    move-object v7, p0

    .line 51
    check-cast v7, Ljava/lang/String;

    .line 52
    .line 53
    new-instance v1, Lvd5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .line 55
    move-object v2, p1

    .line 56
    move-object v8, p2

    .line 57
    move-object v9, p3

    .line 58
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lvd5;-><init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :goto_0
    move-object p0, v0

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    move-object v2, p1

    .line 67
    goto :goto_0

    .line 68
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "Error creating instance for file="

    .line 75
    .line 76
    const-string p2, ", Error="

    .line 77
    .line 78
    invoke-static {p1, v2, p2, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const/4 v4, 0x4

    .line 83
    const/4 v5, 0x0

    .line 84
    const-string v1, "SmsBackupItem"

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0
.end method


# virtual methods
.method public final fromFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "v3"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lvd5$a;->fromFileNameV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string v0, "v2"

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lvd5$a;->fromFileNameV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lvd5$a;->fromFileNameLegacy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lvd5;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
