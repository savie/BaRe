.class public final enum Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

.field public static final enum ANY:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

.field public static final enum WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;


# direct methods
.method private static final synthetic $values()[Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->ANY:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 2
    .line 3
    const-string v1, "WIFI"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 10
    .line 11
    new-instance v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 12
    .line 13
    const-string v1, "ANY"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->ANY:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 20
    .line 21
    invoke-static {}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->$values()[Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->$VALUES:[Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 26
    .line 27
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->$ENTRIES:Ljx2;

    .line 32
    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getIconRes$default(Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->getIconRes(Z)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: getIconRes"

    .line 14
    .line 15
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 1

    .line 1
    const-class v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->$VALUES:[Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIconRes(Z)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x7f080211

    .line 3
    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    sget-object p1, Lku7;->a:[I

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    aget p0, p1, p0

    .line 16
    .line 17
    if-eq p0, v3, :cond_1

    .line 18
    .line 19
    if-ne p0, v2, :cond_0

    .line 20
    .line 21
    const p0, 0x7f0800be

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 26
    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    return v1

    .line 30
    :cond_2
    sget-object p1, Lku7;->a:[I

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    aget p0, p1, p0

    .line 37
    .line 38
    if-eq p0, v3, :cond_4

    .line 39
    .line 40
    if-ne p0, v2, :cond_3

    .line 41
    .line 42
    const p0, 0x7f0800bd

    .line 43
    .line 44
    .line 45
    return p0

    .line 46
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 47
    .line 48
    .line 49
    return v0

    .line 50
    :cond_4
    return v1
.end method

.method public final toDisplayString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lku7;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 16
    .line 17
    const p0, 0x7f1305b7

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 31
    .line 32
    const p0, 0x7f1305b0

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
