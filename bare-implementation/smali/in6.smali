.class public final Lin6;
.super Lsh4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lo21;


# direct methods
.method public constructor <init>(Lo21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv05;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lin6;->n:Lo21;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final p()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final q(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lin6;->n:Lo21;

    .line 2
    .line 3
    sget-object p1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
