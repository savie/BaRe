.class public final Lga8;
.super Laa8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lia8;


# direct methods
.method public constructor <init>(Lia8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lga8;->a:Lia8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ly98;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lga8;->a:Lia8;

    .line 2
    .line 3
    iget-object v0, p0, Lia8;->W:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lia8;->v()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lw98;->B:Ld6;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p0, p1, v0}, Ly98;->z(Ly98;Lw98;Z)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Ly98;->L:Z

    .line 22
    .line 23
    sget-object p1, Lw98;->A:Lc6;

    .line 24
    .line 25
    invoke-virtual {p0, p0, p1, v0}, Ly98;->z(Ly98;Lw98;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
