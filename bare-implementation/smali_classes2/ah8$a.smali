.class public final Lah8$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lah8;
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
    invoke-direct {p0}, Lah8$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lbt3;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lah8$a;->updateInDatabase$lambda$0(Lbt3;Lcom/google/android/gms/tasks/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$createNew(Lah8$a;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lah8;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lah8$a;->createNew(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lah8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final createNew(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lah8;
    .locals 10

    .line 1
    new-instance v0, Lah8;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getDisplayName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getEmail()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getPhotoUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/16 v8, 0x40

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/16 v6, 0x26c

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-direct/range {v0 .. v9}, Lah8;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static synthetic updateInDatabase$default(Lah8$a;Lah8;Lbt3;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lah8$a;->updateInDatabase(Lah8;Lbt3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final updateInDatabase$lambda$0(Lbt3;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public final fromDatabase(Lmt3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmt3;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    sget-object v0, Ld45;->b:Ld45;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, v0, p1}, Lah8$a;->fromDatabase(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;Lmt3;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 43
    const-string p1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 44
    invoke-static {p0, p1}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    .line 45
    throw p0
.end method

.method public final fromDatabase(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;Lmt3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;",
            "Lmt3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lah8$a;->createNew(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lah8;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p2, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lre3;->k()Lzc2;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "userInfo"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v0, Lah8$a$a;

    .line 32
    .line 33
    invoke-direct {v0, p1, p2}, Lah8$a$a;-><init>(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;Lmt3;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lzc2;->b(Laj8;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final updateInDatabase(Lah8;Lbt3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lah8;",
            "Lbt3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lah8;->isAnonymous()Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-interface {p2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    invoke-static {}, Lre3;->k()Lzc2;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "userInfo"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance p1, Lfs;

    .line 37
    .line 38
    const/16 v0, 0xb

    .line 39
    .line 40
    invoke-direct {p1, p2, v0}, Lfs;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 44
    .line 45
    .line 46
    return-void
.end method
