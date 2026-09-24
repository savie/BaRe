.class public final Lfb9;
.super Lib9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final transient k:I

.field public final transient n:I

.field public final synthetic p:Lib9;


# direct methods
.method public constructor <init>(Lib9;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfb9;->p:Lib9;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1}, Lga4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput p2, p0, Lfb9;->k:I

    .line 8
    .line 9
    iput p3, p0, Lfb9;->n:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lfb9;->n:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly13;->N(II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lfb9;->k:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    iget-object p0, p0, Lfb9;->p:Lib9;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final k()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfb9;->p:Lib9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga4;->o()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lfb9;->k:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iget p0, p0, Lfb9;->n:I

    .line 11
    .line 12
    add-int/2addr v0, p0

    .line 13
    return v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfb9;->p:Lib9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga4;->o()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget p0, p0, Lfb9;->k:I

    .line 8
    .line 9
    add-int/2addr v0, p0

    .line 10
    return v0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lfb9;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lfb9;->y(II)Lib9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final t()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lfb9;->p:Lib9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lga4;->t()[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final y(II)Lib9;
    .locals 1

    .line 1
    iget v0, p0, Lfb9;->n:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Ly13;->P(III)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lfb9;->k:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    add-int/2addr p2, v0

    .line 10
    iget-object p0, p0, Lfb9;->p:Lib9;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lib9;->y(II)Lib9;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
