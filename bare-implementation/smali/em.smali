.class public abstract Lem;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lgj;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {v0, p0, v1}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lgv7;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lem;->a:Lgv7;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
.end method

.method public abstract b()J
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-object p0, p0, Lem;->a:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
