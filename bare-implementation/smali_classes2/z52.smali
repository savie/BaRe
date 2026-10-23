.class public final Lz52;
.super Ljava/util/TimerTask;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:La62;


# direct methods
.method public constructor <init>(La62;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz52;->a:La62;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lz52;->a:La62;

    .line 2
    .line 3
    iget-object v0, p0, Lno2;->d:Lgz7;

    .line 4
    .line 5
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lno2;->b:Lq63;

    .line 12
    .line 13
    invoke-virtual {v0}, Lq63;->A()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, v0}, Lno2;->h(Lno2;Ljava/lang/Long;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
