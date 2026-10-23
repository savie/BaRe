.class public final Lokhttp3/internal/concurrent/TaskQueue$execute$1;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Lbt3;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLbt3;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->e:Lbt3;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->e:Lbt3;

    .line 2
    .line 3
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    return-wide v0
.end method
