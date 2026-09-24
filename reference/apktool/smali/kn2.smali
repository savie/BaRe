.class public final Lkn2;
.super Lsh4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lin2;


# direct methods
.method public constructor <init>(Lin2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv05;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkn2;->n:Lin2;

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
    iget-object p0, p0, Lkn2;->n:Lin2;

    .line 2
    .line 3
    invoke-interface {p0}, Lin2;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
