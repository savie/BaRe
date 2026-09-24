.class public final Lh61;
.super Lsh4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lg61;


# instance fields
.field public final n:Lk61;


# direct methods
.method public constructor <init>(Lk61;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv05;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh61;->n:Lk61;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsh4;->o()Lci4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lci4;->p(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final p()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final q(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsh4;->o()Lci4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lh61;->n:Lk61;

    .line 6
    .line 7
    check-cast p0, Lci4;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lci4;->l(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
