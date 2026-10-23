.class public final Lokhttp3/internal/concurrent/TaskQueue$schedule$2;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Lz64;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lz64;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;->e:Lz64;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;->e:Lz64;

    .line 2
    .line 3
    invoke-virtual {p0}, Lz64;->invoke()Ljava/lang/Object;

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
