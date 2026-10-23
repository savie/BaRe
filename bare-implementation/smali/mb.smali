.class public final synthetic Lmb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Ler5;
.implements Lhm6;
.implements Lh9;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmb;->a:Ljava/lang/Object;

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
    .locals 9

    .line 1
    iget-object p0, p0, Lmb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 4
    .line 5
    const-class v0, Leh8;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Leh8;

    .line 12
    .line 13
    new-instance v0, Lwf6;

    .line 14
    .line 15
    invoke-virtual {p0}, Leh8;->g()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {p0}, Leh8;->d()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0}, Leh8;->h()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p0}, Leh8;->e()J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    invoke-virtual {p0}, Leh8;->f()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    invoke-direct/range {v0 .. v8}, Lwf6;-><init>(JLjava/lang/String;ZJJ)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object p0, p0, Lmb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lpy5;->a:[Ljava/nio/file/OpenOption;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 13
    .line 14
    const-string v2, "path"

    .line 15
    .line 16
    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 26
    .line 27
    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget v0, Lky1;->f:I

    .line 34
    .line 35
    new-instance v0, Ljy1;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lgy1;

    .line 41
    .line 42
    invoke-direct {v1}, Lgy1;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, v0, Ljy1;->k:Lgy1;

    .line 46
    .line 47
    new-instance v1, Liu7;

    .line 48
    .line 49
    sget-object v2, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    .line 50
    .line 51
    sget-object v3, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 52
    .line 53
    invoke-direct {v1, v2, v3}, Lq3;-><init>(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, v0, Ljy1;->n:Liu7;

    .line 57
    .line 58
    sget-object v1, Lob8;->b:Lob8;

    .line 59
    .line 60
    iput-object v1, v0, Ljy1;->p:Lob8;

    .line 61
    .line 62
    invoke-static {}, Ljava/util/function/UnaryOperator;->identity()Ljava/util/function/UnaryOperator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, v0, Ljy1;->q:Ljava/util/function/UnaryOperator;

    .line 67
    .line 68
    new-instance v1, Lgy1;

    .line 69
    .line 70
    invoke-direct {v1}, Lgy1;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v1, v0, Ljy1;->k:Lgy1;

    .line 74
    .line 75
    new-instance v1, Lky1;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lky1;-><init>(Ljy1;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 81
    .line 82
    .line 83
    iget-object p0, v1, Lky1;->b:Lgy1;

    .line 84
    .line 85
    iget-object p0, p0, Lgy1;->a:Lfy1;

    .line 86
    .line 87
    iget-wide v0, p0, Lfy1;->a:J

    .line 88
    .line 89
    return-wide v0

    .line 90
    :cond_0
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    return-wide v0

    .line 95
    :cond_1
    const-string v0, "File system element for parameter \'path\' does not exist: \'"

    .line 96
    .line 97
    const-string v1, "\'"

    .line 98
    .line 99
    invoke-static {p0, v1, v0}, Ld6;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v0, 0x0

    .line 103
    .line 104
    return-wide v0
.end method

.method public construct()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lmb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/reflect/Type;

    .line 4
    .line 5
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    const-string v1, "Invalid EnumSet type: "

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    aget-object v0, v0, v2

    .line 20
    .line 21
    instance-of v2, v0, Ljava/lang/Class;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Class;

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    new-instance v0, Lik4;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    new-instance v0, Lik4;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lmb;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lm37;

    .line 6
    .line 7
    move-object/from16 v1, p1

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v7, v0, Lrl0;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/16 v6, 0x3f

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v8

    .line 28
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "registerForActivityResult="

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lm37;->o()Lj57;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v9, v2, Lj57;->s:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 50
    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lm37;->p()Lq47;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const/16 v6, 0x3f

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object v12, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move-object v12, v8

    .line 72
    :goto_1
    const/16 v18, 0xfb

    .line 73
    .line 74
    const/16 v19, 0x0

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    const/4 v15, 0x0

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    const/16 v17, 0x0

    .line 84
    .line 85
    invoke-static/range {v9 .. v19}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v2, Lrm;

    .line 93
    .line 94
    const/16 v3, 0xf

    .line 95
    .line 96
    invoke-direct {v2, v3, v7, v1}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v0}, Lm37;->o()Lj57;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v8, v0, Lj57;->s:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 107
    .line 108
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lro;

    .line 4
    .line 5
    check-cast p1, Ldx3;

    .line 6
    .line 7
    iget-object p1, p1, Ldx3;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lro;->q(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
