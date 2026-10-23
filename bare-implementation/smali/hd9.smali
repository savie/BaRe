.class public final enum Lhd9;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum a:Lhd9;

.field public static final synthetic b:[Lhd9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lhd9;

    .line 2
    .line 3
    const-string v1, "INSTANCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lhd9;->a:Lhd9;

    .line 10
    .line 11
    filled-new-array {v0}, [Lhd9;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lhd9;->b:[Lhd9;

    .line 16
    .line 17
    return-void
.end method

.method public static values()[Lhd9;
    .locals 1

    .line 1
    sget-object v0, Lhd9;->b:[Lhd9;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lhd9;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lhd9;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MoreExecutors.directExecutor()"

    .line 2
    .line 3
    return-object p0
.end method
