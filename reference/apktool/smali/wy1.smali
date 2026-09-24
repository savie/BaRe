.class public final synthetic Lwy1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lzy1;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lzy1;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwy1;->a:Lzy1;

    .line 5
    .line 6
    iput-wide p2, p0, Lwy1;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lwy1;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lwy1;->a:Lzy1;

    .line 2
    .line 3
    iget-object v1, v0, Lzy1;->p:Ls02;

    .line 4
    .line 5
    iget-object v1, v1, Ls02;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lo02;

    .line 8
    .line 9
    new-instance v2, Lyy1;

    .line 10
    .line 11
    iget-wide v3, p0, Lwy1;->b:J

    .line 12
    .line 13
    iget-object p0, p0, Lwy1;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v2, v0, v3, v4, p0}, Lyy1;-><init>(Lzy1;JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lo02;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
