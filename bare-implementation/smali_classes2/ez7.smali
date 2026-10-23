.class public abstract Lez7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ljava/lang/Exception;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "ForegroundServiceStartNotAllowedException"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-string p0, "Time limit already exhausted"

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-static {v0, p0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const-string p0, "dataSync"

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public static b(Lgz7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sput-object p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 5
    .line 6
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->e:Lgv7;

    .line 7
    .line 8
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lex6;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
