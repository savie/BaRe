.class public final Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final isOnlySafeErrors:Z

.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->msg:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->isOnlySafeErrors:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getMsg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasErrors()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->msg:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final isOnlySafeErrors()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->isOnlySafeErrors:Z

    .line 2
    .line 3
    return p0
.end method
