.class public final synthetic Leg3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lil0;

.field public final synthetic b:Lwa;

.field public final synthetic c:Lyf3;

.field public final synthetic d:Lag3;


# direct methods
.method public synthetic constructor <init>(Lil0;Lwa;Lyf3;Lag3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leg3;->a:Lil0;

    .line 5
    .line 6
    iput-object p2, p0, Leg3;->b:Lwa;

    .line 7
    .line 8
    iput-object p3, p0, Leg3;->c:Lyf3;

    .line 9
    .line 10
    iput-object p4, p0, Leg3;->d:Lag3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Leg3;->a:Lil0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Leg3;->b:Lwa;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    sget-object v3, Lgg3;->a:Lgg3;

    .line 29
    .line 30
    iget-object v3, p0, Leg3;->c:Lyf3;

    .line 31
    .line 32
    iget-object v4, v3, Lyf3;->a:Lzf3;

    .line 33
    .line 34
    iget-boolean v5, v3, Lyf3;->b:Z

    .line 35
    .line 36
    iget-object v3, v3, Lyf3;->c:Ljava/util/List;

    .line 37
    .line 38
    new-instance v6, Lyf3;

    .line 39
    .line 40
    iget-object p0, p0, Leg3;->d:Lag3;

    .line 41
    .line 42
    invoke-direct {v6, v4, v5, v3, p0}, Lyf3;-><init>(Lzf3;ZLjava/util/List;Lag3;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v6}, Lgg3;->a(Lil0;Lyf3;)Landroid/text/SpannedString;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Lwa;->i(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object v2
.end method
