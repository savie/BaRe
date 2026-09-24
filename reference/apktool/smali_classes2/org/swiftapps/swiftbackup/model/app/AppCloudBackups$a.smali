.class public final Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;
    }
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
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final fetchForPackage(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lre3;->a:Lzc2;

    .line 5
    .line 6
    sget-object v0, Lg00;->a:Lg00;

    .line 7
    .line 8
    const-string v0, "."

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lre3;->c()Lzc2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-static {p1, v0}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    instance-of v0, p1, Lxe3;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;

    .line 35
    .line 36
    check-cast p1, Lxe3;

    .line 37
    .line 38
    iget-object p1, p1, Lxe3;->n:Leb2;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;->fromSnapshot(Leb2;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0, v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;-><init>(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;Lwc2;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    instance-of p0, p1, Lwe3;

    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    new-instance p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;

    .line 53
    .line 54
    check-cast p1, Lwe3;

    .line 55
    .line 56
    iget-object p1, p1, Lwe3;->n:Lwc2;

    .line 57
    .line 58
    invoke-direct {p0, v1, p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;-><init>(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;Lwc2;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 63
    .line 64
    .line 65
    return-object v1
.end method

.method public final fromSnapshot(Leb2;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Leb2;->b()Ldb2;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ldb2;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/Iterator;

    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lhk5;

    .line 29
    .line 30
    iget-object v3, p0, Ldb2;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Leb2;

    .line 33
    .line 34
    iget-object v3, v3, Leb2;->b:Lzc2;

    .line 35
    .line 36
    iget-object v4, v1, Lhk5;->a:Lm61;

    .line 37
    .line 38
    iget-object v4, v4, Lm61;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v1, v1, Lhk5;->b:Lqn5;

    .line 45
    .line 46
    invoke-static {v1}, Lsb4;->d(Lqn5;)Lsb4;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :try_start_0
    const-class v4, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 51
    .line 52
    iget-object v1, v1, Lsb4;->a:Lqn5;

    .line 53
    .line 54
    invoke-interface {v1}, Lqn5;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v4, v1}, Lt62;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-object v1, v2

    .line 66
    :goto_1
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isValidCloudDetails()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    new-instance v4, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 75
    .line 76
    invoke-virtual {v3}, Lzc2;->e()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-direct {v4, v3, v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->isValid()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    move-object v2, v4

    .line 90
    :cond_1
    if-eqz v2, :cond_0

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-instance p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$b;

    .line 97
    .line 98
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$b;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    return-object v2

    .line 112
    :cond_3
    new-instance p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;-><init>(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    return-object p1
.end method
