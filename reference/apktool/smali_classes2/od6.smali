.class public final Lod6;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lgv7;

.field public final f:Lgv7;

.field public final g:Lgv7;

.field public final h:Lgv7;

.field public i:Lqo0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq9;

    .line 5
    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lq9;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lod6;->e:Lgv7;

    .line 17
    .line 18
    new-instance v0, Ljx;

    .line 19
    .line 20
    const/16 v1, 0x11

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lgv7;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lod6;->f:Lgv7;

    .line 31
    .line 32
    new-instance v0, Lzj;

    .line 33
    .line 34
    const/16 v1, 0xe

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lgv7;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lod6;->g:Lgv7;

    .line 45
    .line 46
    new-instance v0, Lb7;

    .line 47
    .line 48
    const/16 v1, 0x1a

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lgv7;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lod6;->h:Lgv7;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final j()Lix6;
    .locals 0

    .line 1
    iget-object p0, p0, Lod6;->h:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lix6;

    .line 8
    .line 9
    return-object p0
.end method

.method public final k()Lix6;
    .locals 0

    .line 1
    iget-object p0, p0, Lod6;->f:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lix6;

    .line 8
    .line 9
    return-object p0
.end method
