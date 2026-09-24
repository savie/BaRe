.class public final synthetic Lhf5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lif5;

.field public final synthetic b:Ldy7;

.field public final synthetic c:Lff5;


# direct methods
.method public synthetic constructor <init>(Lif5;Ldy7;Lff5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhf5;->a:Lif5;

    .line 5
    .line 6
    iput-object p2, p0, Lhf5;->b:Ldy7;

    .line 7
    .line 8
    iput-object p3, p0, Lhf5;->c:Lff5;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lgz7;

    .line 2
    .line 3
    iget-object v0, p0, Lhf5;->a:Lif5;

    .line 4
    .line 5
    iget-object v1, v0, Lif5;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 6
    .line 7
    iget-boolean v1, v1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->L:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lgz7;->COMPLETE:Lgz7;

    .line 12
    .line 13
    :cond_0
    sget-object v1, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    xor-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    iget-object v3, p0, Lhf5;->b:Ldy7;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ldy7;->c(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, v0, Lif5;->f:Lkm5;

    .line 36
    .line 37
    invoke-virtual {p1}, Lkm5;->w()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iget-object p0, p0, Lhf5;->c:Lff5;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lpw6;->o(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-object v1
.end method
