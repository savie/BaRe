.class public final Lj76;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lgv7;

.field public final c:I

.field public final d:Lgv7;

.field public final e:Lgv7;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lni8;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lj76;->a:Landroid/content/Context;

    .line 11
    .line 12
    new-instance p1, Lto5;

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    invoke-direct {p1, p0, v0}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lgv7;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lj76;->b:Lgv7;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lj76;->c:I

    .line 30
    .line 31
    new-instance p1, Lhs4;

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    invoke-direct {p1, p2, v0}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lgv7;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lj76;->d:Lgv7;

    .line 44
    .line 45
    new-instance p1, Lus5;

    .line 46
    .line 47
    const/4 p2, 0x3

    .line 48
    invoke-direct {p1, p0, p2}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lgv7;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lj76;->e:Lgv7;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj76;->b:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public final b(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lj76;->d:Lgv7;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lj76;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance p1, Li76;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p1, v2, v0}, Li76;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lx65;->u0(Ljava/util/Map;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lj76;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance p1, Li76;

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {p1, v1, v0}, Li76;-><init>(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    return-object p0
.end method
