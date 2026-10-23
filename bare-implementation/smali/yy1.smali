.class public final synthetic Lyy1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lyy1;->a:Lzy1;

    .line 5
    .line 6
    iput-wide p2, p0, Lyy1;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lyy1;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyy1;->a:Lzy1;

    .line 2
    .line 3
    iget-object v0, v0, Lzy1;->h:Lsy1;

    .line 4
    .line 5
    iget-object v1, v0, Lsy1;->n:Lm02;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Lm02;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, v0, Lsy1;->i:Lot9;

    .line 19
    .line 20
    iget-object v0, v0, Lot9;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lw83;

    .line 23
    .line 24
    iget-wide v1, p0, Lyy1;->b:J

    .line 25
    .line 26
    iget-object p0, p0, Lyy1;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v1, v2, p0}, Lw83;->n(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
