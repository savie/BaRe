.class public final Lbx2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lfh7;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lfh7;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbx2;->a:Lfh7;

    .line 5
    .line 6
    iput-object p2, p0, Lbx2;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lbx2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lbx2;

    .line 7
    .line 8
    iget-object p0, p0, Lbx2;->a:Lfh7;

    .line 9
    .line 10
    iget-object p1, p1, Lbx2;->a:Lfh7;

    .line 11
    .line 12
    if-eq p0, p1, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lbx2;->a:Lfh7;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
